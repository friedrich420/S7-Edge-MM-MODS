.class public Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;
.super Lmf/org/apache/xerces/dom/AttrNSImpl;
.source "PSVIAttrNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/AttributePSVI;


# static fields
.field static final serialVersionUID:J = -0x2cfcf82bf1a06b09L


# instance fields
.field protected fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

.field protected fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

.field protected fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

.field protected fSpecified:Z

.field protected fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S

.field protected fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object v1, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 70
    iput-object v1, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, fSpecified:Z

    .line 77
    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 80
    iput-short v2, p0, fValidationAttempted:S

    .line 83
    iput-short v2, p0, fValidity:S

    .line 86
    iput-object v1, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 89
    iput-object v1, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 92
    iput-object v1, p0, fValidationContext:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;
    .param p4, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object v1, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 70
    iput-object v1, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, fSpecified:Z

    .line 77
    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 80
    iput-short v2, p0, fValidationAttempted:S

    .line 83
    iput-short v2, p0, fValidity:S

    .line 86
    iput-object v1, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 89
    iput-object v1, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 92
    iput-object v1, p0, fValidationContext:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActualNormalizedValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActualNormalizedValueType()S
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result v0

    return v0
.end method

.method public getAttributeDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    return-object v0
.end method

.method public getErrorCodes()Lmf/org/apache/xerces/xs/StringList;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    if-eqz v0, :cond_7

    .line 158
    iget-object v0, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 160
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    goto :goto_6
.end method

.method public getErrorMessages()Lmf/org/apache/xerces/xs/StringList;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 173
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    goto :goto_6
.end method

.method public getIsSchemaSpecified()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, fSpecified:Z

    return v0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v0

    return-object v0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getValidationAttempted()S
    .registers 2

    .prologue
    .line 136
    iget-short v0, p0, fValidationAttempted:S

    return v0
.end method

.method public getValidationContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, fValidationContext:Ljava/lang/String;

    return-object v0
.end method

.method public getValidity()S
    .registers 2

    .prologue
    .line 147
    iget-short v0, p0, fValidity:S

    return v0
.end method

.method public setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V
    .registers 4
    .param p1, "attr"    # Lmf/org/apache/xerces/xs/AttributePSVI;

    .prologue
    .line 219
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getAttributeDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object v0

    iput-object v0, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 220
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, fValidationContext:Ljava/lang/String;

    .line 221
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getValidity()S

    move-result v0

    iput-short v0, p0, fValidity:S

    .line 222
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getValidationAttempted()S

    move-result v0

    iput-short v0, p0, fValidationAttempted:S

    .line 223
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getErrorCodes()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 224
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getErrorMessages()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 225
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 226
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 227
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getIsSchemaSpecified()Z

    move-result v0

    iput-boolean v0, p0, fSpecified:Z

    .line 228
    return-void
.end method
