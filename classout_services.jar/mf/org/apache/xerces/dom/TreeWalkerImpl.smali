.class public Lmf/org/apache/xerces/dom/TreeWalkerImpl;
.super Ljava/lang/Object;
.source "TreeWalkerImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/TreeWalker;


# instance fields
.field fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fEntityReferenceExpansion:Z

.field fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field fRoot:Lmf/org/w3c/dom/Node;

.field private fUseIsSameNode:Z

.field fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .registers 6
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "whatToShow"    # I
    .param p3, "nodeFilter"    # Lmf/org/w3c/dom/traversal/NodeFilter;
    .param p4, "entityReferenceExpansion"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, fEntityReferenceExpansion:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, fWhatToShow:I

    .line 68
    iput-object p1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 69
    iput-object p1, p0, fRoot:Lmf/org/w3c/dom/Node;

    .line 70
    invoke-direct {p0, p1}, useIsSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    iput-boolean v0, p0, fUseIsSameNode:Z

    .line 71
    iput p2, p0, fWhatToShow:I

    .line 72
    iput-object p3, p0, fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    .line 73
    iput-boolean p4, p0, fEntityReferenceExpansion:Z

    .line 74
    return-void
.end method

.method private isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .registers 4
    .param p1, "m"    # Lmf/org/w3c/dom/Node;
    .param p2, "n"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 527
    iget-boolean v0, p0, fUseIsSameNode:Z

    if-eqz v0, :cond_9

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->isSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    if-ne p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private useIsSameNode(Lmf/org/w3c/dom/Node;)Z
    .registers 7
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 515
    instance-of v2, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v2, :cond_6

    .line 520
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_5
    :goto_5
    return v1

    .line 518
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_6
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_23

    .line 519
    check-cast p1, Lmf/org/w3c/dom/Document;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    move-object v0, p1

    .line 520
    .local v0, "doc":Lmf/org/w3c/dom/Document;
    :goto_11
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v2

    const-string v3, "Core"

    const-string v4, "3.0"

    invoke-interface {v2, v3, v4}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    .line 519
    .end local v0    # "doc":Lmf/org/w3c/dom/Document;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_23
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)S
    .registers 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 493
    iget-object v2, p0, fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    if-nez v2, :cond_16

    .line 494
    iget v2, p0, fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    .line 505
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 497
    goto :goto_13

    .line 500
    :cond_16
    iget v2, p0, fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v0, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_29

    .line 501
    iget-object v0, p0, fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    goto :goto_13

    :cond_29
    move v0, v1

    .line 505
    goto :goto_13
.end method

.method public firstChild()Lmf/org/w3c/dom/Node;
    .registers 3

    .prologue
    .line 134
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 140
    :cond_5
    :goto_5
    return-object v0

    .line 136
    :cond_6
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 137
    .local v0, "node":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_5

    .line 138
    iput-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_5
.end method

.method public getCurrentNode()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 7
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 411
    if-nez p1, :cond_5

    move-object v2, v1

    .line 436
    :cond_4
    :goto_4
    return-object v2

    .line 413
    :cond_5
    iget-boolean v3, p0, fEntityReferenceExpansion:Z

    if-nez v3, :cond_12

    .line 414
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_12

    move-object v2, v1

    .line 415
    goto :goto_4

    .line 416
    :cond_12
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 417
    .local v2, "newNode":Lmf/org/w3c/dom/Node;
    if-nez v2, :cond_1a

    move-object v2, v1

    goto :goto_4

    .line 418
    :cond_1a
    invoke-virtual {p0, v2}, acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 420
    .local v0, "accept":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 423
    const/4 v3, 0x3

    if-ne v0, v3, :cond_37

    .line 424
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 426
    invoke-virtual {p0, v2}, getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 428
    .local v1, "fChild":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_35

    .line 429
    invoke-virtual {p0, v2, p1}, getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_4

    :cond_35
    move-object v2, v1

    .line 431
    goto :goto_4

    .line 436
    .end local v1    # "fChild":Lmf/org/w3c/dom/Node;
    :cond_37
    invoke-virtual {p0, v2, p1}, getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_4
.end method

.method getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 7
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 449
    if-nez p1, :cond_5

    move-object v2, v1

    .line 475
    :cond_4
    :goto_4
    return-object v2

    .line 451
    :cond_5
    iget-boolean v3, p0, fEntityReferenceExpansion:Z

    if-nez v3, :cond_12

    .line 452
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_12

    move-object v2, v1

    .line 453
    goto :goto_4

    .line 455
    :cond_12
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 456
    .local v2, "newNode":Lmf/org/w3c/dom/Node;
    if-nez v2, :cond_1a

    move-object v2, v1

    goto :goto_4

    .line 458
    :cond_1a
    invoke-virtual {p0, v2}, acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 460
    .local v0, "accept":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 463
    const/4 v3, 0x3

    if-ne v0, v3, :cond_37

    .line 464
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 466
    invoke-virtual {p0, v2}, getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 467
    .local v1, "lChild":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_35

    .line 468
    invoke-virtual {p0, v2, p1}, getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_4

    :cond_35
    move-object v2, v1

    .line 470
    goto :goto_4

    .line 475
    .end local v1    # "lChild":Lmf/org/w3c/dom/Node;
    :cond_37
    invoke-virtual {p0, v2, p1}, getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_4
.end method

.method getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 302
    iget-object v0, p0, fRoot:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 9
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "root"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 313
    if-eqz p1, :cond_a

    invoke-direct {p0, p1, p2}, isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_a
    move-object v2, v1

    .line 346
    :cond_b
    :goto_b
    return-object v2

    .line 315
    :cond_c
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 316
    .local v2, "newNode":Lmf/org/w3c/dom/Node;
    if-nez v2, :cond_2d

    .line 318
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 320
    if-eqz v2, :cond_1e

    invoke-direct {p0, v2, p2}, isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1e
    move-object v2, v1

    goto :goto_b

    .line 322
    :cond_20
    invoke-virtual {p0, v2}, acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v3

    .line 324
    .local v3, "parentAccept":I
    if-ne v3, v5, :cond_2b

    .line 325
    invoke-virtual {p0, v2, p2}, getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_b

    :cond_2b
    move-object v2, v1

    .line 328
    goto :goto_b

    .line 331
    .end local v3    # "parentAccept":I
    :cond_2d
    invoke-virtual {p0, v2}, acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 333
    .local v0, "accept":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_b

    .line 336
    if-ne v0, v5, :cond_43

    .line 337
    invoke-virtual {p0, v2}, getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 338
    .local v1, "fChild":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_41

    .line 339
    invoke-virtual {p0, v2, p2}, getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_b

    :cond_41
    move-object v2, v1

    .line 341
    goto :goto_b

    .line 346
    .end local v1    # "fChild":Lmf/org/w3c/dom/Node;
    :cond_43
    invoke-virtual {p0, v2, p2}, getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_b
.end method

.method getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v2, 0x0

    .line 278
    if-eqz p1, :cond_b

    iget-object v3, p0, fRoot:Lmf/org/w3c/dom/Node;

    invoke-direct {p0, p1, v3}, isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_b
    move-object v1, v2

    .line 290
    :cond_c
    :goto_c
    return-object v1

    .line 280
    :cond_d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 281
    .local v1, "newNode":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_15

    move-object v1, v2

    goto :goto_c

    .line 283
    :cond_15
    invoke-virtual {p0, v1}, acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 285
    .local v0, "accept":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    .line 290
    invoke-virtual {p0, v1}, getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_c
.end method

.method getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 357
    iget-object v0, p0, fRoot:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 9
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "root"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 368
    if-eqz p1, :cond_a

    invoke-direct {p0, p1, p2}, isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_a
    move-object v2, v1

    .line 400
    :cond_b
    :goto_b
    return-object v2

    .line 370
    :cond_c
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 371
    .local v2, "newNode":Lmf/org/w3c/dom/Node;
    if-nez v2, :cond_2d

    .line 373
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_1e

    invoke-direct {p0, v2, p2}, isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1e
    move-object v2, v1

    goto :goto_b

    .line 376
    :cond_20
    invoke-virtual {p0, v2}, acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v3

    .line 378
    .local v3, "parentAccept":I
    if-ne v3, v5, :cond_2b

    .line 379
    invoke-virtual {p0, v2, p2}, getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_b

    :cond_2b
    move-object v2, v1

    .line 382
    goto :goto_b

    .line 385
    .end local v3    # "parentAccept":I
    :cond_2d
    invoke-virtual {p0, v2}, acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 387
    .local v0, "accept":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_b

    .line 390
    if-ne v0, v5, :cond_43

    .line 391
    invoke-virtual {p0, v2}, getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 392
    .local v1, "fChild":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_41

    .line 393
    invoke-virtual {p0, v2, p2}, getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_b

    :cond_41
    move-object v2, v1

    .line 395
    goto :goto_b

    .line 400
    .end local v1    # "fChild":Lmf/org/w3c/dom/Node;
    :cond_43
    invoke-virtual {p0, v2, p2}, getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_b
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, fWhatToShow:I

    return v0
.end method

.method public lastChild()Lmf/org/w3c/dom/Node;
    .registers 3

    .prologue
    .line 148
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 154
    :cond_5
    :goto_5
    return-object v0

    .line 150
    :cond_6
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 151
    .local v0, "node":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_5

    .line 152
    iput-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_5
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v3, :cond_7

    move-object v1, v2

    .line 268
    :goto_6
    return-object v1

    .line 241
    :cond_7
    iget-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3}, getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 243
    .local v1, "result":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_12

    .line 244
    iput-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_6

    .line 248
    :cond_12
    iget-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3}, getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_1d

    .line 251
    iput-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_6

    .line 256
    :cond_1d
    iget-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3}, getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 257
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    :goto_23
    if-nez v0, :cond_27

    move-object v1, v2

    .line 268
    goto :goto_6

    .line 258
    :cond_27
    invoke-virtual {p0, v0}, getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_30

    .line 260
    iput-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_6

    .line 263
    :cond_30
    invoke-virtual {p0, v0}, getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_23
.end method

.method public nextSibling()Lmf/org/w3c/dom/Node;
    .registers 3

    .prologue
    .line 177
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 183
    :cond_5
    :goto_5
    return-object v0

    .line 179
    :cond_6
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 180
    .local v0, "node":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_5

    .line 181
    iput-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_5
.end method

.method public parentNode()Lmf/org/w3c/dom/Node;
    .registers 3

    .prologue
    .line 118
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 124
    :cond_5
    :goto_5
    return-object v0

    .line 120
    :cond_6
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 121
    .local v0, "node":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_5

    .line 122
    iput-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_5
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v4, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v4, :cond_6

    .line 230
    :cond_5
    :goto_5
    return-object v3

    .line 196
    :cond_6
    iget-object v4, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v4}, getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 197
    .local v2, "result":Lmf/org/w3c/dom/Node;
    if-nez v2, :cond_1b

    .line 198
    iget-object v4, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v4}, getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_5

    .line 200
    iput-object v2, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 201
    iget-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_5

    .line 207
    :cond_1b
    invoke-virtual {p0, v2}, getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 209
    .local v0, "lastChild":Lmf/org/w3c/dom/Node;
    move-object v1, v0

    .line 210
    .local v1, "prev":Lmf/org/w3c/dom/Node;
    :goto_20
    if-nez v0, :cond_2a

    .line 215
    move-object v0, v1

    .line 218
    if-eqz v0, :cond_30

    .line 219
    iput-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 220
    iget-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_5

    .line 211
    :cond_2a
    move-object v1, v0

    .line 212
    invoke-virtual {p0, v1}, getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_20

    .line 224
    :cond_30
    if-eqz v2, :cond_5

    .line 225
    iput-object v2, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 226
    iget-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_5
.end method

.method public previousSibling()Lmf/org/w3c/dom/Node;
    .registers 3

    .prologue
    .line 163
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 169
    :cond_5
    :goto_5
    return-object v0

    .line 165
    :cond_6
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 166
    .local v0, "node":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_5

    .line 167
    iput-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_5
.end method

.method public setCurrentNode(Lmf/org/w3c/dom/Node;)V
    .registers 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 104
    if-nez p1, :cond_14

    .line 105
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    iput-object p1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 110
    return-void
.end method

.method public setWhatShow(I)V
    .registers 2
    .param p1, "whatToShow"    # I

    .prologue
    .line 86
    iput p1, p0, fWhatToShow:I

    .line 87
    return-void
.end method
