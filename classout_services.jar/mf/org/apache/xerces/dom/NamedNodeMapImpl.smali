.class public Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
.super Ljava/lang/Object;
.source "NamedNodeMapImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lmf/org/w3c/dom/NamedNodeMap;


# static fields
.field protected static final CHANGED:S = 0x2s

.field protected static final HASDEFAULTS:S = 0x4s

.field protected static final READONLY:S = 0x1s

.field static final serialVersionUID:J = -0x61b069b6b67df684L


# instance fields
.field protected flags:S

.field protected nodes:Ljava/util/List;

.field protected ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 2
    .param p1, "ownerNode"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 91
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
    .line 606
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 607
    iget-object v0, p0, nodes:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, nodes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, nodes:Ljava/util/List;

    .line 610
    :cond_10
    return-void
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
    .line 613
    iget-object v0, p0, nodes:Ljava/util/List;

    .line 615
    .local v0, "oldNodes":Ljava/util/List;
    if-eqz v0, :cond_b

    .line 616
    :try_start_4
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, nodes:Ljava/util/List;

    .line 618
    :cond_b
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_11

    .line 623
    iput-object v0, p0, nodes:Ljava/util/List;

    .line 625
    return-void

    .line 622
    :catchall_11
    move-exception v1

    .line 623
    iput-object v0, p0, nodes:Ljava/util/List;

    .line 624
    throw v1
.end method


# virtual methods
.method protected addItem(Lmf/org/w3c/dom/Node;)I
    .registers 5
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 549
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 550
    .local v0, "i":I
    if-ltz v0, :cond_14

    .line 551
    iget-object v1, p0, nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 568
    :goto_13
    return v0

    .line 556
    :cond_14
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, findNamePoint(Ljava/lang/String;I)I

    move-result v0

    .line 557
    if-ltz v0, :cond_25

    .line 558
    iget-object v1, p0, nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_13

    .line 561
    :cond_25
    rsub-int/lit8 v0, v0, -0x1

    .line 562
    iget-object v1, p0, nodes:Ljava/util/List;

    if-nez v1, :cond_33

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, nodes:Ljava/util/List;

    .line 565
    :cond_33
    iget-object v1, p0, nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_13
.end method

.method final changed(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 420
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x2

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 421
    return-void

    .line 420
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x3

    goto :goto_6
.end method

.method final changed()Z
    .registers 2

    .prologue
    .line 416
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .registers 8
    .param p1, "srcmap"    # Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .prologue
    .line 337
    iget-object v4, p1, nodes:Ljava/util/List;

    .line 338
    .local v4, "srcnodes":Ljava/util/List;
    if-eqz v4, :cond_18

    .line 339
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 340
    .local v3, "size":I
    if-eqz v3, :cond_18

    .line 341
    iget-object v5, p0, nodes:Ljava/util/List;

    if-nez v5, :cond_19

    .line 342
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, nodes:Ljava/util/List;

    .line 347
    :goto_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-lt v1, v3, :cond_1f

    .line 355
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_18
    return-void

    .line 345
    .restart local v3    # "size":I
    :cond_19
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_15

    .line 348
    .restart local v1    # "i":I
    :cond_1f
    iget-object v5, p1, nodes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 349
    .local v2, "n":Lmf/org/apache/xerces/dom/NodeImpl;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 350
    .local v0, "clone":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified()Z

    move-result v5

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 351
    iget-object v5, p0, nodes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method protected cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 578
    if-nez p1, :cond_8

    .line 579
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "list":Ljava/util/ArrayList;
    const/4 v2, 0x5

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    .restart local p1    # "list":Ljava/util/ArrayList;
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 582
    iget-object v2, p0, nodes:Ljava/util/List;

    if-eqz v2, :cond_18

    .line 583
    iget-object v2, p0, nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 584
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-lt v0, v1, :cond_19

    .line 588
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_18
    return-object p1

    .line 585
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_19
    iget-object v2, p0, nodes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .registers 3
    .param p1, "ownerNode"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 331
    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p1}, <init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 332
    .local v0, "newmap":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    invoke-virtual {v0, p0}, cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 333
    return-object v0
.end method

.method protected findNamePoint(Ljava/lang/String;I)I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, "i":I
    iget-object v4, p0, nodes:Ljava/util/List;

    if-eqz v4, :cond_13

    .line 452
    move v0, p2

    .line 453
    .local v0, "first":I
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 455
    .local v2, "last":I
    :goto_e
    if-le v0, v2, :cond_16

    .line 469
    if-le v0, v1, :cond_13

    .line 470
    move v1, v0

    .line 474
    .end local v0    # "first":I
    .end local v2    # "last":I
    :cond_13
    rsub-int/lit8 v4, v1, -0x1

    :goto_15
    return v4

    .line 456
    .restart local v0    # "first":I
    .restart local v2    # "last":I
    :cond_16
    add-int v4, v0, v2

    div-int/lit8 v1, v4, 0x2

    .line 457
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 458
    .local v3, "test":I
    if-nez v3, :cond_2e

    move v4, v1

    .line 459
    goto :goto_15

    .line 461
    :cond_2e
    if-gez v3, :cond_33

    .line 462
    add-int/lit8 v2, v1, -0x1

    .line 463
    goto :goto_e

    .line 465
    :cond_33
    add-int/lit8 v0, v1, 0x1

    goto :goto_e
.end method

.method protected findNamePoint(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 483
    iget-object v6, p0, nodes:Ljava/util/List;

    if-nez v6, :cond_7

    move v3, v5

    .line 512
    :cond_6
    :goto_6
    return v3

    .line 484
    :cond_7
    if-nez p2, :cond_b

    move v3, v5

    goto :goto_6

    .line 493
    :cond_b
    iget-object v6, p0, nodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 494
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-lt v3, v4, :cond_16

    move v3, v5

    .line 512
    goto :goto_6

    .line 495
    :cond_16
    iget-object v6, p0, nodes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 496
    .local v0, "a":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "aNamespaceURI":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "aLocalName":Ljava/lang/String;
    if-nez p1, :cond_3f

    .line 499
    if-nez v2, :cond_3c

    .line 501
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 503
    if-nez v1, :cond_3c

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 494
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 506
    :cond_3f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 508
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    goto :goto_6
.end method

.method protected getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 542
    iget-object v0, p0, nodes:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 543
    iget-object v0, p0, nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 545
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, nodes:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, findNamePoint(Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-gez v0, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Node;

    goto :goto_8
.end method

.method protected getNamedItemIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-virtual {p0, p1, p2}, findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2}, findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "i":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Node;

    goto :goto_7
.end method

.method getReadOnly()Z
    .registers 2

    .prologue
    .line 386
    invoke-virtual {p0}, isReadOnly()Z

    move-result v0

    return v0
.end method

.method final hasDefaults(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 428
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x4

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 429
    return-void

    .line 428
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x5

    goto :goto_6
.end method

.method final hasDefaults()Z
    .registers 2

    .prologue
    .line 424
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isReadOnly(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 412
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x1

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 413
    return-void

    .line 412
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x2

    goto :goto_6
.end method

.method final isReadOnly()Z
    .registers 2

    .prologue
    .line 408
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 122
    iget-object v0, p0, nodes:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, p0, nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 123
    iget-object v0, p0, nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    .line 122
    :goto_14
    return-object v0

    .line 123
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .registers 8
    .param p1, "a"    # Lmf/org/w3c/dom/Node;
    .param p2, "b"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-object v4, p0, nodes:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 520
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 521
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-lt v0, v2, :cond_f

    .line 527
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_e
    :goto_e
    return v3

    .line 522
    .restart local v0    # "i":I
    .restart local v2    # "size":I
    :cond_f
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Node;

    .line 523
    .local v1, "n":Lmf/org/w3c/dom/Node;
    if-ne v1, p1, :cond_1b

    const/4 v3, 0x1

    goto :goto_e

    .line 524
    :cond_1b
    if-eq v1, p2, :cond_e

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public removeAll()V
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, nodes:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 600
    iget-object v0, p0, nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 602
    :cond_9
    return-void
.end method

.method protected removeItem(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 535
    iget-object v0, p0, nodes:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 536
    iget-object v0, p0, nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 538
    :cond_11
    return-void
.end method

.method public removeNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 266
    invoke-virtual {p0}, isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 267
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    .line 268
    throw v3

    .line 272
    .end local v1    # "msg":Ljava/lang/String;
    :cond_17
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, findNamePoint(Ljava/lang/String;I)I

    move-result v0

    .line 273
    .local v0, "i":I
    if-gez v0, :cond_2f

    .line 274
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NOT_FOUND_ERR"

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 278
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2f
    iget-object v3, p0, nodes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 279
    .local v2, "n":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v3, p0, nodes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 281
    return-object v2
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 9
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 302
    invoke-virtual {p0}, isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 303
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    .line 304
    throw v3

    .line 308
    .end local v1    # "msg":Ljava/lang/String;
    :cond_17
    invoke-virtual {p0, p1, p2}, findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 309
    .local v0, "i":I
    if-gez v0, :cond_2e

    .line 310
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NOT_FOUND_ERR"

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 314
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2e
    iget-object v3, p0, nodes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 315
    .local v2, "n":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v3, p0, nodes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    return-object v2
.end method

.method public setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 9
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 178
    iget-object v4, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    .line 179
    .local v2, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v4, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_37

    .line 180
    invoke-virtual {p0}, isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 181
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 184
    .end local v1    # "msg":Ljava/lang/String;
    :cond_21
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    if-eq v4, v2, :cond_37

    .line 185
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 190
    .end local v1    # "msg":Ljava/lang/String;
    :cond_37
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, findNamePoint(Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, "i":I
    const/4 v3, 0x0

    .line 192
    .local v3, "previous":Lmf/org/apache/xerces/dom/NodeImpl;
    if-ltz v0, :cond_51

    .line 193
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "previous":Lmf/org/apache/xerces/dom/NodeImpl;
    check-cast v3, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 194
    .restart local v3    # "previous":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_50
    return-object v3

    .line 196
    :cond_51
    rsub-int/lit8 v0, v0, -0x1

    .line 197
    iget-object v4, p0, nodes:Ljava/util/List;

    if-nez v4, :cond_5f

    .line 198
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, nodes:Ljava/util/List;

    .line 200
    :cond_5f
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_50
.end method

.method public setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 9
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 220
    iget-object v4, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    .line 221
    .local v2, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v4, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_37

    .line 222
    invoke-virtual {p0}, isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 223
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 227
    .end local v1    # "msg":Ljava/lang/String;
    :cond_21
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    if-eq v4, v2, :cond_37

    .line 228
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 233
    .end local v1    # "msg":Ljava/lang/String;
    :cond_37
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "i":I
    const/4 v3, 0x0

    .line 235
    .local v3, "previous":Lmf/org/apache/xerces/dom/NodeImpl;
    if-ltz v0, :cond_54

    .line 236
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "previous":Lmf/org/apache/xerces/dom/NodeImpl;
    check-cast v3, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 237
    .restart local v3    # "previous":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_53
    return-object v3

    .line 241
    :cond_54
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, findNamePoint(Ljava/lang/String;I)I

    move-result v0

    .line 242
    if-ltz v0, :cond_6d

    .line 243
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "previous":Lmf/org/apache/xerces/dom/NodeImpl;
    check-cast v3, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 244
    .restart local v3    # "previous":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_53

    .line 246
    :cond_6d
    rsub-int/lit8 v0, v0, -0x1

    .line 247
    iget-object v4, p0, nodes:Ljava/util/List;

    if-nez v4, :cond_7b

    .line 248
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, nodes:Ljava/util/List;

    .line 250
    :cond_7b
    iget-object v4, p0, nodes:Ljava/util/List;

    invoke-interface {v4, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_53
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .registers 5
    .param p1, "doc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 399
    iget-object v2, p0, nodes:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 400
    iget-object v2, p0, nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 401
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-lt v0, v1, :cond_e

    .line 405
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_d
    return-void

    .line 402
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_e
    invoke-virtual {p0, v0}, item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method setReadOnly(ZZ)V
    .registers 5
    .param p1, "readOnly"    # Z
    .param p2, "deep"    # Z

    .prologue
    .line 373
    invoke-virtual {p0, p1}, isReadOnly(Z)V

    .line 374
    if-eqz p2, :cond_13

    iget-object v1, p0, nodes:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 375
    iget-object v1, p0, nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_11
    if-gez v0, :cond_14

    .line 379
    .end local v0    # "i":I
    :cond_13
    return-void

    .line 376
    .restart local v0    # "i":I
    :cond_14
    iget-object v1, p0, nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    .line 375
    add-int/lit8 v0, v0, -0x1

    goto :goto_11
.end method
