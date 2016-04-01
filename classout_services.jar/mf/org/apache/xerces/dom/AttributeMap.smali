.class public Lmf/org/apache/xerces/dom/AttributeMap;
.super Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
.source "AttributeMap.java"


# static fields
.field static final serialVersionUID:J = 0x7b21d4678ec641a7L


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .registers 4
    .param p1, "ownerNode"    # Lmf/org/apache/xerces/dom/ElementImpl;
    .param p2, "defaults"    # Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 54
    if-eqz p2, :cond_10

    .line 56
    invoke-virtual {p0, p2}, cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 57
    iget-object v0, p0, nodes:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, hasDefaults(Z)V

    .line 61
    :cond_10
    return-void
.end method

.method private final remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;
    .registers 13
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "index"    # I
    .param p3, "addDefault"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 299
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    .line 300
    .local v4, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 302
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    .line 305
    :cond_19
    invoke-virtual {p0}, hasDefaults()Z

    move-result v5

    if-eqz v5, :cond_85

    if-eqz p3, :cond_85

    .line 308
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v5, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v2

    .line 311
    .local v2, "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    if-eqz v2, :cond_7f

    .line 312
    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "d":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_7f

    .line 313
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, v3, v5}, findNamePoint(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_7f

    .line 314
    invoke-interface {v1, v8}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 315
    .local v0, "clone":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4e

    move-object v5, v0

    .line 320
    check-cast v5, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    .line 322
    :cond_4e
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 323
    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 324
    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 326
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 328
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 329
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v5, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 328
    invoke-virtual {v4, v6, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    .line 341
    .end local v0    # "clone":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v1    # "d":Lmf/org/w3c/dom/Node;
    .end local v2    # "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    :cond_6e
    :goto_6e
    iput-object v4, p1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 342
    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 346
    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 347
    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    .line 350
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4, p1, v5, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    .line 352
    return-object p1

    .line 332
    .restart local v2    # "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    :cond_7f
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6e

    .line 335
    .end local v2    # "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    :cond_85
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6e
.end method


# virtual methods
.method protected final addItem(Lmf/org/w3c/dom/Node;)I
    .registers 6
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 572
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 575
    .local v0, "argn":Lmf/org/apache/xerces/dom/AttrImpl;
    iget-object v2, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 576
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 578
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 579
    .local v1, "i":I
    if-ltz v1, :cond_29

    .line 580
    iget-object v2, p0, nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 599
    :goto_1e
    iget-object v2, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    .line 600
    return v1

    .line 585
    :cond_29
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, findNamePoint(Ljava/lang/String;I)I

    move-result v1

    .line 586
    if-ltz v1, :cond_3a

    .line 587
    iget-object v2, p0, nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1e

    .line 590
    :cond_3a
    rsub-int/lit8 v1, v1, -0x1

    .line 591
    iget-object v2, p0, nodes:Ljava/util/List;

    if-nez v2, :cond_48

    .line 592
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, nodes:Ljava/util/List;

    .line 594
    :cond_48
    iget-object v2, p0, nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1e
.end method

.method protected cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .registers 9
    .param p1, "srcmap"    # Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .prologue
    const/4 v6, 0x1

    .line 488
    iget-object v4, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    .line 489
    .local v4, "srcnodes":Ljava/util/List;
    if-eqz v4, :cond_19

    .line 490
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 491
    .local v3, "size":I
    if-eqz v3, :cond_19

    .line 492
    iget-object v5, p0, nodes:Ljava/util/List;

    if-nez v5, :cond_1a

    .line 493
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, nodes:Ljava/util/List;

    .line 498
    :goto_16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-lt v1, v3, :cond_20

    .line 508
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_19
    return-void

    .line 496
    .restart local v3    # "size":I
    :cond_1a
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_16

    .line 499
    .restart local v1    # "i":I
    :cond_20
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 500
    .local v2, "n":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 501
    .local v0, "clone":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified()Z

    move-result v5

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 502
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 504
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .registers 4
    .param p1, "ownerNode"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 478
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    check-cast p1, Lmf/org/apache/xerces/dom/ElementImpl;

    .end local p1    # "ownerNode":Lmf/org/apache/xerces/dom/NodeImpl;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, <init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 479
    .local v0, "newmap":Lmf/org/apache/xerces/dom/AttributeMap;
    invoke-virtual {p0}, hasDefaults()Z

    move-result v1

    invoke-virtual {v0, v1}, hasDefaults(Z)V

    .line 480
    invoke-virtual {v0, p0}, cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 481
    return-object v0
.end method

.method protected final internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "raiseEx"    # Z

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 279
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 282
    .end local v1    # "msg":Ljava/lang/String;
    :cond_17
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, findNamePoint(Ljava/lang/String;I)I

    move-result v0

    .line 283
    .local v0, "i":I
    if-gez v0, :cond_31

    .line 284
    if-eqz p2, :cond_3e

    .line 285
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NOT_FOUND_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 292
    .end local v1    # "msg":Ljava/lang/String;
    :cond_31
    iget-object v2, p0, nodes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    move-result-object v2

    :cond_3e
    return-object v2
.end method

.method protected final internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;
    .registers 16
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "raiseEx"    # Z

    .prologue
    .line 393
    iget-object v9, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v8

    .line 394
    .local v8, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v9, v8, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v9, :cond_21

    invoke-virtual {p0}, isReadOnly()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 395
    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string v10, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, "msg":Ljava/lang/String;
    new-instance v9, Lmf/org/w3c/dom/DOMException;

    const/4 v10, 0x7

    invoke-direct {v9, v10, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    .line 398
    .end local v5    # "msg":Ljava/lang/String;
    :cond_21
    invoke-virtual {p0, p1, p2}, findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 399
    .local v3, "i":I
    if-gez v3, :cond_3d

    .line 400
    if-eqz p3, :cond_3b

    .line 401
    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string v10, "NOT_FOUND_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .restart local v5    # "msg":Ljava/lang/String;
    new-instance v9, Lmf/org/w3c/dom/DOMException;

    const/16 v10, 0x8

    invoke-direct {v9, v10, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    .line 404
    .end local v5    # "msg":Ljava/lang/String;
    :cond_3b
    const/4 v6, 0x0

    .line 463
    :goto_3c
    return-object v6

    .line 408
    :cond_3d
    iget-object v9, p0, nodes:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 410
    .local v6, "n":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v9

    if-eqz v9, :cond_52

    .line 411
    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    .line 414
    :cond_52
    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "nodeName":Ljava/lang/String;
    invoke-virtual {p0}, hasDefaults()Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 416
    iget-object v9, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v9, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v2

    .line 418
    .local v2, "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    if-eqz v2, :cond_ca

    .line 419
    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "d":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_ca

    .line 421
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, findNamePoint(Ljava/lang/String;I)I

    move-result v4

    .line 422
    .local v4, "j":I
    if-ltz v4, :cond_c4

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v7, v9}, findNamePoint(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_c4

    .line 423
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 424
    .local v0, "clone":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v9, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v9, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 425
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_91

    move-object v9, v0

    .line 430
    check-cast v9, Lmf/org/apache/xerces/dom/AttrNSImpl;

    iput-object p1, v9, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    .line 432
    :cond_91
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 433
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 434
    iget-object v9, p0, nodes:Ljava/util/List;

    invoke-interface {v9, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->isIdAttribute()Z

    move-result v9

    if-eqz v9, :cond_af

    .line 436
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 437
    iget-object v9, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v9, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 436
    invoke-virtual {v8, v10, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    .line 452
    .end local v0    # "clone":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v1    # "d":Lmf/org/w3c/dom/Node;
    .end local v2    # "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .end local v4    # "j":I
    :cond_af
    :goto_af
    iput-object v8, v6, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 453
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 456
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 458
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    .line 461
    iget-object v9, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v8, v6, v9, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 440
    .restart local v1    # "d":Lmf/org/w3c/dom/Node;
    .restart local v2    # "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .restart local v4    # "j":I
    :cond_c4
    iget-object v9, p0, nodes:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_af

    .line 443
    .end local v1    # "d":Lmf/org/w3c/dom/Node;
    .end local v4    # "j":I
    :cond_ca
    iget-object v9, p0, nodes:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_af

    .line 446
    .end local v2    # "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    :cond_d0
    iget-object v9, p0, nodes:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_af
.end method

.method moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/AttributeMap;)V
    .registers 7
    .param p1, "srcmap"    # Lmf/org/apache/xerces/dom/AttributeMap;

    .prologue
    const/4 v3, 0x0

    .line 515
    iget-object v4, p1, nodes:Ljava/util/List;

    if-eqz v4, :cond_10

    iget-object v4, p1, nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 516
    .local v2, "nsize":I
    :goto_b
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_d
    if-gez v1, :cond_12

    .line 528
    return-void

    .end local v1    # "i":I
    .end local v2    # "nsize":I
    :cond_10
    move v2, v3

    .line 515
    goto :goto_b

    .line 517
    .restart local v1    # "i":I
    .restart local v2    # "nsize":I
    :cond_12
    iget-object v4, p1, nodes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 518
    .local v0, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 519
    invoke-direct {p1, v0, v1, v3}, remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    .line 520
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 521
    invoke-virtual {p0, v0}, setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 516
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 524
    :cond_2f
    invoke-virtual {p0, v0}, setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2c
.end method

.method protected reconcileDefaults(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .registers 12
    .param p1, "defaults"    # Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 538
    iget-object v8, p0, nodes:Ljava/util/List;

    if-eqz v8, :cond_13

    iget-object v8, p0, nodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 539
    .local v6, "nsize":I
    :goto_c
    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_e
    if-gez v4, :cond_15

    .line 546
    if-nez p1, :cond_29

    .line 568
    :cond_12
    :goto_12
    return-void

    .end local v4    # "i":I
    .end local v6    # "nsize":I
    :cond_13
    move v6, v7

    .line 538
    goto :goto_c

    .line 540
    .restart local v4    # "i":I
    .restart local v6    # "nsize":I
    :cond_15
    iget-object v8, p0, nodes:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 541
    .local v0, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v8

    if-nez v8, :cond_26

    .line 542
    invoke-direct {p0, v0, v4, v7}, remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    .line 539
    :cond_26
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 549
    .end local v0    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    :cond_29
    iget-object v8, p0, nodes:Ljava/util/List;

    if-eqz v8, :cond_35

    iget-object v8, p0, nodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_39

    .line 550
    :cond_35
    invoke-virtual {p0, p1}, cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    goto :goto_12

    .line 553
    :cond_39
    iget-object v8, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 554
    .local v3, "dsize":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_40
    if-ge v5, v3, :cond_12

    .line 555
    iget-object v8, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 556
    .local v2, "d":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, findNamePoint(Ljava/lang/String;I)I

    move-result v4

    .line 557
    if-gez v4, :cond_6b

    .line 558
    rsub-int/lit8 v4, v4, -0x1

    .line 559
    invoke-virtual {v2, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 560
    .local v1, "clone":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v8, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v8, v1, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 561
    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 562
    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 563
    iget-object v8, p0, nodes:Ljava/util/List;

    invoke-interface {v8, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 554
    .end local v1    # "clone":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_40
.end method

.method protected removeItem(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .registers 10
    .param p1, "item"    # Lmf/org/w3c/dom/Node;
    .param p2, "addDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v1, -0x1

    .line 256
    .local v1, "index":I
    iget-object v4, p0, nodes:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 257
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 258
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-lt v0, v3, :cond_22

    .line 265
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_e
    :goto_e
    if-gez v1, :cond_2f

    .line 266
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NOT_FOUND_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 259
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_22
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2c

    .line 260
    move v1, v0

    .line 261
    goto :goto_e

    .line 258
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 270
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_2f
    check-cast p1, Lmf/org/apache/xerces/dom/AttrImpl;

    .end local p1    # "item":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, p1, v1, p2}, remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    move-result-object v4

    return-object v4
.end method

.method public removeNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method safeRemoveNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 12
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 75
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v1, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 76
    .local v1, "errCheck":Z
    if-eqz v1, :cond_56

    .line 77
    invoke-virtual {p0}, isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 78
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 81
    .end local v3    # "msg":Ljava/lang/String;
    :cond_23
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    iget-object v6, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    if-eq v5, v6, :cond_3f

    .line 82
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "WRONG_DOCUMENT_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 85
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_56

    .line 86
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "HIERARCHY_REQUEST_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .end local v3    # "msg":Ljava/lang/String;
    :cond_56
    move-object v0, p1

    .line 90
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 92
    .local v0, "argn":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 93
    if-eqz v1, :cond_bc

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v5

    iget-object v6, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v5, v6, :cond_bc

    .line 94
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INUSE_ATTRIBUTE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 103
    .end local v3    # "msg":Ljava/lang/String;
    :cond_7a
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 104
    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 106
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, findNamePoint(Ljava/lang/String;I)I

    move-result v2

    .line 107
    .local v2, "i":I
    const/4 v4, 0x0

    .line 108
    .local v4, "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    if-ltz v2, :cond_bd

    .line 109
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 110
    .restart local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 112
    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 114
    invoke-virtual {v4, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 124
    :goto_a7
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    .line 128
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v5

    if-nez v5, :cond_bb

    .line 129
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    :cond_bb
    move-object p1, v4

    .line 131
    .end local v2    # "i":I
    .end local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    .end local p1    # "arg":Lmf/org/w3c/dom/Node;
    :cond_bc
    return-object p1

    .line 116
    .restart local v2    # "i":I
    .restart local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    .restart local p1    # "arg":Lmf/org/w3c/dom/Node;
    :cond_bd
    rsub-int/lit8 v2, v2, -0x1

    .line 117
    iget-object v5, p0, nodes:Ljava/util/List;

    if-nez v5, :cond_cb

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, nodes:Ljava/util/List;

    .line 120
    :cond_cb
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_a7
.end method

.method public setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 12
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 145
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v1, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 146
    .local v1, "errCheck":Z
    if-eqz v1, :cond_56

    .line 147
    invoke-virtual {p0}, isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 148
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 151
    .end local v3    # "msg":Ljava/lang/String;
    :cond_23
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    iget-object v6, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    if-eq v5, v6, :cond_3f

    .line 152
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "WRONG_DOCUMENT_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 155
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_56

    .line 156
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "HIERARCHY_REQUEST_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .end local v3    # "msg":Ljava/lang/String;
    :cond_56
    move-object v0, p1

    .line 160
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 162
    .local v0, "argn":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 163
    if-eqz v1, :cond_c0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v5

    iget-object v6, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v5, v6, :cond_c0

    .line 164
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INUSE_ATTRIBUTE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 172
    .end local v3    # "msg":Ljava/lang/String;
    :cond_7a
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 173
    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 175
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, "i":I
    const/4 v4, 0x0

    .line 177
    .local v4, "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    if-ltz v2, :cond_c1

    .line 178
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 179
    .restart local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 181
    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 183
    invoke-virtual {v4, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 202
    :goto_ab
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    .line 206
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v5

    if-nez v5, :cond_bf

    .line 207
    iget-object v5, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    :cond_bf
    move-object p1, v4

    .line 209
    .end local v2    # "i":I
    .end local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    .end local p1    # "arg":Lmf/org/w3c/dom/Node;
    :cond_c0
    return-object p1

    .line 187
    .restart local v2    # "i":I
    .restart local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    .restart local p1    # "arg":Lmf/org/w3c/dom/Node;
    :cond_c1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, findNamePoint(Ljava/lang/String;I)I

    move-result v2

    .line 188
    if-ltz v2, :cond_d9

    .line 189
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 190
    .restart local v4    # "previous":Lmf/org/apache/xerces/dom/AttrImpl;
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_ab

    .line 192
    :cond_d9
    rsub-int/lit8 v2, v2, -0x1

    .line 193
    iget-object v5, p0, nodes:Ljava/util/List;

    if-nez v5, :cond_e7

    .line 194
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, nodes:Ljava/util/List;

    .line 196
    :cond_e7
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_ab
.end method
