.class public Lmf/org/apache/xerces/dom/AttrNSImpl;
.super Lmf/org/apache/xerces/dom/AttrImpl;
.source "AttrNSImpl.java"


# static fields
.field static final serialVersionUID:J = -0xad9e3ec88a50756L

.field static final xmlURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field static final xmlnsURI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# instance fields
.field protected localName:Ljava/lang/String;

.field protected namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p2, p3}, setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;
    .param p4, "localName"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 125
    iput-object p4, p0, localName:Ljava/lang/String;

    .line 126
    iput-object p2, p0, namespaceURI:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private setName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qname"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3a

    const/4 v6, 0x0

    .line 79
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    .line 82
    .local v3, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iput-object p1, p0, namespaceURI:Ljava/lang/String;

    .line 83
    if-eqz p1, :cond_14

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_63

    move-object v5, v6

    :goto_12
    iput-object v5, p0, namespaceURI:Ljava/lang/String;

    .line 88
    :cond_14
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 89
    .local v0, "colon1":I
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 90
    .local v1, "colon2":I
    invoke-virtual {v3, p2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkNamespaceWF(Ljava/lang/String;II)V

    .line 91
    if-gez v0, :cond_65

    .line 93
    iput-object p2, p0, localName:Ljava/lang/String;

    .line 94
    iget-boolean v5, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_7a

    .line 95
    iget-object v5, p0, localName:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v5, "xmlns"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    if-eqz p1, :cond_52

    .line 98
    sget-object v5, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 99
    :cond_3f
    if-eqz p1, :cond_7a

    sget-object v5, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 100
    const-string/jumbo v5, "xmlns"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 103
    :cond_52
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    .line 104
    const-string v7, "NAMESPACE_ERR"

    .line 102
    invoke-static {v5, v7, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0xe

    invoke-direct {v5, v6, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .end local v0    # "colon1":I
    .end local v1    # "colon2":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_63
    move-object v5, p1

    .line 85
    goto :goto_12

    .line 111
    .restart local v0    # "colon1":I
    .restart local v1    # "colon2":I
    :cond_65
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "prefix":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, localName:Ljava/lang/String;

    .line 113
    iget-object v5, p0, localName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, v4, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_7a
    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 266
    invoke-virtual {p0}, synchronizeData()V

    .line 268
    :cond_9
    iget-object v0, p0, localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    invoke-virtual {p0}, synchronizeData()V

    .line 172
    :cond_9
    iget-object v0, p0, namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 4

    .prologue
    .line 187
    invoke-virtual {p0}, needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 188
    invoke-virtual {p0}, synchronizeData()V

    .line 190
    :cond_9
    iget-object v1, p0, name:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 191
    .local v0, "index":I
    if-gez v0, :cond_15

    const/4 v1, 0x0

    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, type:Ljava/lang/Object;

    if-eqz v0, :cond_18

    .line 277
    iget-object v0, p0, type:Ljava/lang/Object;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_13

    .line 278
    iget-object v0, p0, type:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_12
    return-object v0

    .line 280
    :cond_13
    iget-object v0, p0, type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_12

    .line 282
    :cond_18
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, type:Ljava/lang/Object;

    if-eqz v0, :cond_17

    .line 317
    iget-object v0, p0, type:Ljava/lang/Object;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_13

    .line 318
    iget-object v0, p0, type:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_12
    return-object v0

    .line 320
    :cond_13
    const-string/jumbo v0, "http://www.w3.org/TR/REC-xml"

    goto :goto_12

    .line 322
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "typeNamespaceArg"    # Ljava/lang/String;
    .param p2, "typeNameArg"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    .prologue
    .line 303
    iget-object v0, p0, type:Ljava/lang/Object;

    if-eqz v0, :cond_13

    .line 304
    iget-object v0, p0, type:Ljava/lang/Object;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_13

    .line 305
    iget-object v0, p0, type:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 309
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    invoke-virtual {p0}, synchronizeData()V

    .line 143
    :cond_9
    iput-object p2, p0, name:Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1, p2}, setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0}, needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 213
    invoke-virtual {p0}, synchronizeData()V

    .line 215
    :cond_c
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_cb

    .line 216
    invoke-virtual {p0}, isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 217
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 220
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2a
    if-eqz p1, :cond_cb

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_cb

    .line 222
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v1

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_50

    .line 223
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 226
    .end local v0    # "msg":Ljava/lang/String;
    :cond_50
    iget-object v1, p0, namespaceURI:Ljava/lang/String;

    if-eqz v1, :cond_5c

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_6b

    .line 227
    :cond_5c
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 231
    .end local v0    # "msg":Ljava/lang/String;
    :cond_6b
    const-string/jumbo v1, "xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 232
    iget-object v1, p0, namespaceURI:Ljava/lang/String;

    const-string/jumbo v2, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 233
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 236
    .end local v0    # "msg":Ljava/lang/String;
    :cond_8e
    const-string/jumbo v1, "xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 237
    iget-object v1, p0, namespaceURI:Ljava/lang/String;

    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 238
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 241
    .end local v0    # "msg":Ljava/lang/String;
    :cond_b1
    iget-object v1, p0, name:Ljava/lang/String;

    const-string/jumbo v2, "xmlns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 242
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 249
    .end local v0    # "msg":Ljava/lang/String;
    :cond_cb
    if-eqz p1, :cond_ef

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_ef

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, name:Ljava/lang/String;

    .line 255
    :goto_ee
    return-void

    .line 253
    :cond_ef
    iget-object v1, p0, localName:Ljava/lang/String;

    iput-object v1, p0, name:Ljava/lang/String;

    goto :goto_ee
.end method
