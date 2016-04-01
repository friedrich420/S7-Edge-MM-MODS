.class public Lmf/org/apache/xerces/dom/DocumentTypeImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "DocumentTypeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DocumentType;


# static fields
.field static final serialVersionUID:J = 0x6b92258c19cc7f95L


# instance fields
.field private doctypeNumber:I

.field protected elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected internalSubset:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;

.field private userData:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, doctypeNumber:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, userData:Ljava/util/Hashtable;

    .line 105
    iput-object p2, p0, name:Ljava/lang/String;

    .line 107
    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 108
    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 111
    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 113
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "publicID"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 120
    iput-object p3, p0, publicID:Ljava/lang/String;

    .line 121
    iput-object p4, p0, systemID:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    .line 204
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .line 206
    .local v0, "newnode":Lmf/org/apache/xerces/dom/DocumentTypeImpl;
    iget-object v1, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 207
    iget-object v1, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 208
    iget-object v1, p0, elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 210
    return-object v0
.end method

.method public getElements()Lmf/org/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 438
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 439
    invoke-virtual {p0}, synchronizeChildren()V

    .line 441
    :cond_9
    iget-object v0, p0, elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getEntities()Lmf/org/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 392
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 393
    invoke-virtual {p0}, synchronizeChildren()V

    .line 395
    :cond_9
    iget-object v0, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    invoke-virtual {p0}, synchronizeData()V

    .line 176
    :cond_9
    iget-object v0, p0, internalSubset:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 363
    invoke-virtual {p0}, synchronizeData()V

    .line 365
    :cond_9
    iget-object v0, p0, name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 196
    invoke-virtual {p0}, synchronizeData()V

    .line 198
    :cond_9
    iget-object v0, p0, name:Ljava/lang/String;

    return-object v0
.end method

.method protected getNodeNumber()I
    .registers 3

    .prologue
    .line 339
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 340
    invoke-super {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getNodeNumber()I

    move-result v1

    .line 349
    :goto_a
    return v1

    .line 344
    :cond_b
    iget v1, p0, doctypeNumber:I

    if-nez v1, :cond_1b

    .line 346
    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    .line 347
    .local v0, "cd":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->assignDocTypeNumber()I

    move-result v1

    iput v1, p0, doctypeNumber:I

    .line 349
    .end local v0    # "cd":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
    :cond_1b
    iget v1, p0, doctypeNumber:I

    goto :goto_a
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 188
    const/16 v0, 0xa

    return v0
.end method

.method public getNotations()Lmf/org/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 404
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 405
    invoke-virtual {p0}, synchronizeChildren()V

    .line 407
    :cond_9
    iget-object v0, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 137
    invoke-virtual {p0}, synchronizeData()V

    .line 139
    :cond_9
    iget-object v0, p0, publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 149
    invoke-virtual {p0}, synchronizeData()V

    .line 151
    :cond_9
    iget-object v0, p0, systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v3, p0, userData:Ljava/util/Hashtable;

    if-nez v3, :cond_6

    .line 477
    :cond_5
    :goto_5
    return-object v2

    .line 472
    :cond_6
    iget-object v3, p0, userData:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_5

    move-object v1, v0

    .line 474
    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 475
    .local v1, "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    iget-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    goto :goto_5
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, userData:Ljava/util/Hashtable;

    return-object v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .registers 13
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v8, 0x0

    .line 237
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 318
    :cond_7
    :goto_7
    return v8

    .line 241
    :cond_8
    invoke-virtual {p0}, needsSyncData()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 242
    invoke-virtual {p0}, synchronizeData()V

    :cond_11
    move-object v0, p1

    .line 244
    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .line 248
    .local v0, "argDocType":Lmf/org/apache/xerces/dom/DocumentTypeImpl;
    invoke-virtual {p0}, getPublicId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_20

    invoke-virtual {v0}, getPublicId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 249
    :cond_20
    invoke-virtual {p0}, getPublicId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2c

    invoke-virtual {v0}, getPublicId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 250
    :cond_2c
    invoke-virtual {p0}, getSystemId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_38

    invoke-virtual {v0}, getSystemId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 251
    :cond_38
    invoke-virtual {p0}, getSystemId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_44

    invoke-virtual {v0}, getSystemId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 252
    :cond_44
    invoke-virtual {p0}, getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_50

    .line 253
    invoke-virtual {v0}, getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 254
    :cond_50
    invoke-virtual {p0}, getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5c

    .line 255
    invoke-virtual {v0}, getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 259
    :cond_5c
    invoke-virtual {p0}, getPublicId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_70

    .line 260
    invoke-virtual {p0}, getPublicId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, getPublicId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 265
    :cond_70
    invoke-virtual {p0}, getSystemId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_84

    .line 266
    invoke-virtual {p0}, getSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, getSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 271
    :cond_84
    invoke-virtual {p0}, getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_98

    .line 272
    invoke-virtual {p0}, getInternalSubset()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, getInternalSubset()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 278
    :cond_98
    iget-object v1, v0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 280
    .local v1, "argEntities":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    iget-object v9, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v9, :cond_a0

    if-nez v1, :cond_7

    .line 281
    :cond_a0
    iget-object v9, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v9, :cond_a6

    if-eqz v1, :cond_7

    .line 284
    :cond_a6
    iget-object v9, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v9, :cond_c1

    if-eqz v1, :cond_c1

    .line 285
    iget-object v9, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v9

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 288
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_b9
    iget-object v9, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_ed

    .line 298
    .end local v5    # "index":I
    :cond_c1
    iget-object v2, v0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 300
    .local v2, "argNotations":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    iget-object v9, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v9, :cond_c9

    if-nez v2, :cond_7

    .line 301
    :cond_c9
    iget-object v9, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v9, :cond_cf

    if-eqz v2, :cond_7

    .line 304
    :cond_cf
    iget-object v9, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v9, :cond_ea

    if-eqz v2, :cond_ea

    .line 305
    iget-object v9, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v9

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 308
    const/4 v5, 0x0

    .restart local v5    # "index":I
    :goto_e2
    iget-object v9, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_106

    .line 318
    .end local v5    # "index":I
    :cond_ea
    const/4 v8, 0x1

    goto/16 :goto_7

    .line 289
    .end local v2    # "argNotations":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .restart local v5    # "index":I
    :cond_ed
    iget-object v9, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 291
    .local v3, "entNode1":Lmf/org/w3c/dom/Node;
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 293
    .local v4, "entNode2":Lmf/org/w3c/dom/Node;
    check-cast v3, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local v3    # "entNode1":Lmf/org/w3c/dom/Node;
    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 288
    add-int/lit8 v5, v5, 0x1

    goto :goto_b9

    .line 309
    .end local v4    # "entNode2":Lmf/org/w3c/dom/Node;
    .restart local v2    # "argNotations":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    :cond_106
    iget-object v9, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    .line 311
    .local v6, "noteNode1":Lmf/org/w3c/dom/Node;
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v7

    .line 313
    .local v7, "noteNode2":Lmf/org/w3c/dom/Node;
    check-cast v6, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local v6    # "noteNode1":Lmf/org/w3c/dom/Node;
    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2
.end method

.method public setInternalSubset(Ljava/lang/String;)V
    .registers 3
    .param p1, "internalSubset"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    invoke-virtual {p0}, synchronizeData()V

    .line 163
    :cond_9
    iput-object p1, p0, internalSubset:Ljava/lang/String;

    .line 164
    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .registers 3
    .param p1, "doc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 327
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 328
    iget-object v0, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 329
    iget-object v0, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 330
    iget-object v0, p0, elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 331
    return-void
.end method

.method public setReadOnly(ZZ)V
    .registers 5
    .param p1, "readOnly"    # Z
    .param p2, "deep"    # Z

    .prologue
    const/4 v1, 0x1

    .line 421
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 422
    invoke-virtual {p0}, synchronizeChildren()V

    .line 424
    :cond_a
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->setReadOnly(ZZ)V

    .line 427
    iget-object v0, p0, elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    .line 428
    iget-object v0, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    .line 429
    iget-object v0, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    .line 431
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 229
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lmf/org/w3c/dom/UserDataHandler;

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v3, p0, userData:Ljava/util/Hashtable;

    if-nez v3, :cond_c

    .line 447
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, userData:Ljava/util/Hashtable;

    .line 448
    :cond_c
    if-nez p2, :cond_20

    .line 449
    iget-object v3, p0, userData:Ljava/util/Hashtable;

    if-eqz v3, :cond_1f

    .line 450
    iget-object v3, p0, userData:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1f

    move-object v1, v0

    .line 452
    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 453
    .local v1, "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    iget-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    .line 465
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    :cond_1f
    :goto_1f
    return-object v2

    .line 459
    :cond_20
    iget-object v3, p0, userData:Ljava/util/Hashtable;

    new-instance v4, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    invoke-direct {v4, p0, p2, p3}, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;-><init>(Lmf/org/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 460
    .restart local v0    # "o":Ljava/lang/Object;
    if-eqz v0, :cond_1f

    move-object v1, v0

    .line 461
    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 462
    .restart local v1    # "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    iget-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    goto :goto_1f
.end method
