.class public Lmf/org/apache/xerces/dom/PSVIElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementNSImpl;
.source "PSVIElementNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/ElementPSVI;


# static fields
.field static final serialVersionUID:J = 0x5e957bb41eca45c4L


# instance fields
.field protected fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

.field protected fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

.field protected fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

.field protected fNil:Z

.field protected fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

.field protected fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

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

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object v1, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .line 73
    iput-object v1, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 78
    iput-boolean v2, p0, fNil:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, fSpecified:Z

    .line 85
    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 88
    iput-object v1, p0, fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    .line 91
    iput-short v2, p0, fValidationAttempted:S

    .line 94
    iput-short v2, p0, fValidity:S

    .line 97
    iput-object v1, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 100
    iput-object v1, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 103
    iput-object v1, p0, fValidationContext:Ljava/lang/String;

    .line 106
    iput-object v1, p0, fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    .line 67
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

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object v1, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .line 73
    iput-object v1, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 78
    iput-boolean v2, p0, fNil:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, fSpecified:Z

    .line 85
    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 88
    iput-object v1, p0, fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    .line 91
    iput-short v2, p0, fValidationAttempted:S

    .line 94
    iput-short v2, p0, fValidity:S

    .line 97
    iput-object v1, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 100
    iput-object v1, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 103
    iput-object v1, p0, fValidationContext:Ljava/lang/String;

    .line 106
    iput-object v1, p0, fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    .line 59
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
    .line 319
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
    .line 314
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
    .line 285
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActualNormalizedValueType()S
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result v0

    return v0
.end method

.method public getElementDeclaration()Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    return-object v0
.end method

.method public getErrorCodes()Lmf/org/apache/xerces/xs/StringList;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 173
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    goto :goto_6
.end method

.method public getErrorMessages()Lmf/org/apache/xerces/xs/StringList;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    if-eqz v0, :cond_7

    .line 184
    iget-object v0, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 186
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    goto :goto_6
.end method

.method public getIsSchemaSpecified()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, fSpecified:Z

    return v0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v0

    return-object v0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getNil()Z
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, fNil:Z

    return v0
.end method

.method public getNotation()Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    return-object v0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSchemaInformation()Lmf/org/apache/xerces/xs/XSModel;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    return-object v0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getValidationAttempted()S
    .registers 2

    .prologue
    .line 149
    iget-short v0, p0, fValidationAttempted:S

    return v0
.end method

.method public getValidationContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, fValidationContext:Ljava/lang/String;

    return-object v0
.end method

.method public getValidity()S
    .registers 2

    .prologue
    .line 160
    iget-short v0, p0, fValidity:S

    return v0
.end method

.method public setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V
    .registers 4
    .param p1, "elem"    # Lmf/org/apache/xerces/xs/ElementPSVI;

    .prologue
    .line 260
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getElementDeclaration()Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object v0

    iput-object v0, p0, fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .line 261
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getNotation()Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    move-result-object v0

    iput-object v0, p0, fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    .line 262
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, fValidationContext:Ljava/lang/String;

    .line 263
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 264
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getSchemaInformation()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v0

    iput-object v0, p0, fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    .line 265
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getValidity()S

    move-result v0

    iput-short v0, p0, fValidity:S

    .line 266
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getValidationAttempted()S

    move-result v0

    iput-short v0, p0, fValidationAttempted:S

    .line 267
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getErrorCodes()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 268
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getErrorMessages()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 269
    iget-object v0, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    if-nez v0, :cond_4d

    .line 270
    iget-object v0, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;

    if-eqz v0, :cond_63

    .line 271
    iget-object v0, p0, fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;->getContentType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_63

    .line 272
    :cond_4d
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 277
    :goto_56
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getIsSchemaSpecified()Z

    move-result v0

    iput-boolean v0, p0, fSpecified:Z

    .line 278
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getNil()Z

    move-result v0

    iput-boolean v0, p0, fNil:Z

    .line 279
    return-void

    .line 275
    :cond_63
    iget-object v0, p0, fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    goto :goto_56
.end method
