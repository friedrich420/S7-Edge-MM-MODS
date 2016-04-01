.class public Lmf/org/apache/xerces/dom/RangeImpl;
.super Ljava/lang/Object;
.source "RangeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ranges/Range;


# static fields
.field static final CLONE_CONTENTS:I = 0x2

.field static final DELETE_CONTENTS:I = 0x3

.field static final EXTRACT_CONTENTS:I = 0x1


# instance fields
.field private fDeleteNode:Lmf/org/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

.field private fEndContainer:Lmf/org/w3c/dom/Node;

.field private fEndOffset:I

.field private fInsertNode:Lmf/org/w3c/dom/Node;

.field private fInsertedFromRange:Z

.field private fRemoveChild:Lmf/org/w3c/dom/Node;

.field private fSplitNode:Lmf/org/w3c/dom/Node;

.field private fStartContainer:Lmf/org/w3c/dom/Node;

.field private fStartOffset:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;)V
    .registers 4
    .param p1, "document"    # Lmf/org/apache/xerces/dom/DocumentImpl;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, fDetach:Z

    .line 55
    iput-object v1, p0, fInsertNode:Lmf/org/w3c/dom/Node;

    .line 56
    iput-object v1, p0, fDeleteNode:Lmf/org/w3c/dom/Node;

    .line 57
    iput-object v1, p0, fSplitNode:Lmf/org/w3c/dom/Node;

    .line 59
    iput-boolean v0, p0, fInsertedFromRange:Z

    .line 995
    iput-object v1, p0, fRemoveChild:Lmf/org/w3c/dom/Node;

    .line 66
    iput-object p1, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    .line 67
    iput-object p1, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 68
    iput-object p1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 69
    iput v0, p0, fStartOffset:I

    .line 70
    iput v0, p0, fEndOffset:I

    .line 71
    iput-boolean v0, p0, fDetach:Z

    .line 72
    return-void
.end method

.method private getRootContainer(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1931
    if-nez p1, :cond_8

    .line 1932
    const/4 v0, 0x0

    .line 1936
    :goto_3
    return-object v0

    .line 1935
    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 1934
    :cond_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, p1

    .line 1936
    goto :goto_3
.end method

.method private getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .registers 6
    .param p1, "container"    # Lmf/org/w3c/dom/Node;
    .param p2, "offset"    # I

    .prologue
    .line 2080
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 2096
    .end local p1    # "container":Lmf/org/w3c/dom/Node;
    :cond_7
    :goto_7
    return-object p1

    .line 2085
    .restart local p1    # "container":Lmf/org/w3c/dom/Node;
    :cond_8
    if-ltz p2, :cond_7

    .line 2088
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 2089
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_e
    if-eqz v0, :cond_12

    if-gtz p2, :cond_16

    .line 2094
    :cond_12
    if-eqz v0, :cond_7

    move-object p1, v0

    .line 2095
    goto :goto_7

    .line 2091
    :cond_16
    add-int/lit8 p2, p2, -0x1

    .line 2092
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_e
.end method

.method private hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 1973
    if-nez p1, :cond_4

    .line 1984
    :goto_3
    return v1

    .line 1976
    :cond_4
    invoke-direct {p0, p1}, getRootContainer(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1977
    .local v0, "rootContainer":Lmf/org/w3c/dom/Node;
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    sparse-switch v2, :sswitch_data_12

    goto :goto_3

    .line 1982
    :sswitch_10
    const/4 v1, 0x1

    goto :goto_3

    .line 1977
    :sswitch_data_12
    .sparse-switch
        0x2 -> :sswitch_10
        0x9 -> :sswitch_10
        0xb -> :sswitch_10
    .end sparse-switch
.end method

.method private isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z
    .registers 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    .line 1993
    if-nez p1, :cond_4

    .line 2004
    :goto_3
    :pswitch_3
    return v0

    .line 1995
    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_e

    .line 2004
    :pswitch_b
    const/4 v0, 0x1

    goto :goto_3

    .line 1995
    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private isLegalContainer(Lmf/org/w3c/dom/Node;)Z
    .registers 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    .line 1945
    if-nez p1, :cond_f

    .line 1960
    :goto_3
    :sswitch_3
    return v0

    .line 1950
    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    sparse-switch v1, :sswitch_data_14

    .line 1957
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 1948
    :cond_f
    if-nez p1, :cond_4

    .line 1960
    const/4 v0, 0x1

    goto :goto_3

    .line 1950
    nop

    :sswitch_data_14
    .sparse-switch
        0x6 -> :sswitch_3
        0xa -> :sswitch_3
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method private traverseCharacterDataNode(Lmf/org/w3c/dom/Node;ZI)Lmf/org/w3c/dom/Node;
    .registers 11
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "isLeft"    # Z
    .param p3, "how"    # I

    .prologue
    const/4 v6, 0x0

    .line 1868
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 1872
    .local v4, "txtValue":Ljava/lang/String;
    if-eqz p2, :cond_1e

    .line 1874
    invoke-virtual {p0}, getStartOffset()I

    move-result v2

    .line 1875
    .local v2, "offset":I
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1876
    .local v1, "newNodeValue":Ljava/lang/String;
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1885
    .local v3, "oldNodeValue":Ljava/lang/String;
    :goto_13
    const/4 v5, 0x2

    if-eq p3, v5, :cond_19

    .line 1886
    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 1887
    :cond_19
    const/4 v5, 0x3

    if-ne p3, v5, :cond_2b

    .line 1888
    const/4 v0, 0x0

    .line 1891
    :goto_1d
    return-object v0

    .line 1880
    .end local v1    # "newNodeValue":Ljava/lang/String;
    .end local v2    # "offset":I
    .end local v3    # "oldNodeValue":Ljava/lang/String;
    :cond_1e
    invoke-virtual {p0}, getEndOffset()I

    move-result v2

    .line 1881
    .restart local v2    # "offset":I
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1882
    .restart local v1    # "newNodeValue":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "oldNodeValue":Ljava/lang/String;
    goto :goto_13

    .line 1889
    :cond_2b
    invoke-interface {p1, v6}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1890
    .local v0, "newNode":Lmf/org/w3c/dom/Node;
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private traverseCommonAncestors(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .registers 13
    .param p1, "startAncestor"    # Lmf/org/w3c/dom/Node;
    .param p2, "endAncestor"    # Lmf/org/w3c/dom/Node;
    .param p3, "how"    # I

    .prologue
    .line 1448
    const/4 v3, 0x0

    .line 1449
    .local v3, "frag":Lmf/org/w3c/dom/DocumentFragment;
    const/4 v8, 0x3

    if-eq p3, v8, :cond_a

    .line 1450
    iget-object v8, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v3

    .line 1452
    :cond_a
    invoke-direct {p0, p1, p3}, traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1453
    .local v4, "n":Lmf/org/w3c/dom/Node;
    if-eqz v3, :cond_13

    .line 1454
    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1456
    :cond_13
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1457
    .local v1, "commonParent":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, p1, v1}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v7

    .line 1458
    .local v7, "startOffset":I
    invoke-virtual {p0, p2, v1}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v2

    .line 1459
    .local v2, "endOffset":I
    add-int/lit8 v7, v7, 0x1

    .line 1461
    sub-int v0, v2, v7

    .line 1462
    .local v0, "cnt":I
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .line 1464
    .local v6, "sibling":Lmf/org/w3c/dom/Node;
    :goto_27
    if-gtz v0, :cond_3d

    .line 1474
    invoke-direct {p0, p2, p3}, traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1475
    if-eqz v3, :cond_32

    .line 1476
    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1478
    :cond_32
    const/4 v8, 0x2

    if-eq p3, v8, :cond_3c

    .line 1480
    invoke-virtual {p0, p1}, setStartAfter(Lmf/org/w3c/dom/Node;)V

    .line 1481
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, collapse(Z)V

    .line 1483
    :cond_3c
    return-object v3

    .line 1466
    :cond_3d
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1467
    .local v5, "nextSibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v6, p3}, traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1468
    if-eqz v3, :cond_4a

    .line 1469
    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1470
    :cond_4a
    move-object v6, v5

    .line 1471
    add-int/lit8 v0, v0, -0x1

    goto :goto_27
.end method

.method private traverseCommonEndContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .registers 10
    .param p1, "startAncestor"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    .line 1373
    const/4 v1, 0x0

    .line 1374
    .local v1, "frag":Lmf/org/w3c/dom/DocumentFragment;
    const/4 v6, 0x3

    if-eq p2, v6, :cond_a

    .line 1375
    iget-object v6, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v1

    .line 1376
    :cond_a
    invoke-direct {p0, p1, p2}, traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1377
    .local v2, "n":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_13

    .line 1378
    invoke-interface {v1, v2}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1379
    :cond_13
    iget-object v6, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v6}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v4

    .line 1380
    .local v4, "startIdx":I
    add-int/lit8 v4, v4, 0x1

    .line 1382
    iget v6, p0, fEndOffset:I

    sub-int v0, v6, v4

    .line 1383
    .local v0, "cnt":I
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1384
    :goto_23
    if-gtz v0, :cond_30

    .line 1394
    const/4 v6, 0x2

    if-eq p2, v6, :cond_2f

    .line 1396
    invoke-virtual {p0, p1}, setStartAfter(Lmf/org/w3c/dom/Node;)V

    .line 1397
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, collapse(Z)V

    .line 1400
    :cond_2f
    return-object v1

    .line 1386
    :cond_30
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1387
    .local v3, "sibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v2, p2}, traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1388
    .local v5, "xferNode":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_3d

    .line 1389
    invoke-interface {v1, v5}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1390
    :cond_3d
    add-int/lit8 v0, v0, -0x1

    .line 1391
    move-object v2, v3

    goto :goto_23
.end method

.method private traverseCommonStartContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .registers 12
    .param p1, "endAncestor"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1294
    const/4 v2, 0x0

    .line 1295
    .local v2, "frag":Lmf/org/w3c/dom/DocumentFragment;
    const/4 v6, 0x3

    if-eq p2, v6, :cond_c

    .line 1296
    iget-object v6, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v2

    .line 1297
    :cond_c
    invoke-direct {p0, p1, p2}, traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1298
    .local v3, "n":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_15

    .line 1299
    invoke-interface {v2, v3}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1301
    :cond_15
    iget-object v6, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v6}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    .line 1302
    .local v1, "endIdx":I
    iget v6, p0, fStartOffset:I

    sub-int v0, v1, v6

    .line 1303
    .local v0, "cnt":I
    if-gtz v0, :cond_2a

    .line 1307
    if-eq p2, v8, :cond_29

    .line 1309
    invoke-virtual {p0, p1}, setEndBefore(Lmf/org/w3c/dom/Node;)V

    .line 1310
    invoke-virtual {p0, v7}, collapse(Z)V

    .line 1332
    :cond_29
    :goto_29
    return-object v2

    .line 1315
    :cond_2a
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1316
    :goto_2e
    if-gtz v0, :cond_39

    .line 1327
    if-eq p2, v8, :cond_29

    .line 1329
    invoke-virtual {p0, p1}, setEndBefore(Lmf/org/w3c/dom/Node;)V

    .line 1330
    invoke-virtual {p0, v7}, collapse(Z)V

    goto :goto_29

    .line 1318
    :cond_39
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1319
    .local v4, "sibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v3, p2}, traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1320
    .local v5, "xferNode":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_4a

    .line 1321
    invoke-interface {v2}, Lmf/org/w3c/dom/DocumentFragment;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lmf/org/w3c/dom/DocumentFragment;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1322
    :cond_4a
    add-int/lit8 v0, v0, -0x1

    .line 1323
    move-object v3, v4

    goto :goto_2e
.end method

.method private traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;
    .registers 16
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1084
    iget-object v10, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-eqz v10, :cond_9

    iget-object v10, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-nez v10, :cond_a

    .line 1157
    :cond_9
    :goto_9
    return-object v9

    .line 1089
    :cond_a
    iget-boolean v10, p0, fDetach:Z

    if-eqz v10, :cond_1f

    .line 1090
    new-instance v10, Lmf/org/w3c/dom/DOMException;

    .line 1091
    const/16 v11, 0xb

    .line 1092
    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string v13, "INVALID_STATE_ERR"

    invoke-static {v12, v13, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1090
    invoke-direct {v10, v11, v9}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v10

    .line 1104
    :cond_1f
    iget-object v9, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v10, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v9, v10, :cond_2a

    .line 1105
    invoke-direct {p0, p1}, traverseSameContainer(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v9

    goto :goto_9

    .line 1111
    :cond_2a
    const/4 v2, 0x0

    .line 1112
    .local v2, "endContainerDepth":I
    iget-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .local v0, "c":Lmf/org/w3c/dom/Node;
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1113
    .local v5, "p":Lmf/org/w3c/dom/Node;
    :goto_31
    if-nez v5, :cond_55

    .line 1123
    const/4 v7, 0x0

    .line 1124
    .local v7, "startContainerDepth":I
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1125
    :goto_3a
    if-nez v5, :cond_66

    .line 1135
    sub-int v1, v7, v2

    .line 1137
    .local v1, "depthDiff":I
    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 1138
    .local v8, "startNode":Lmf/org/w3c/dom/Node;
    :goto_40
    if-gtz v1, :cond_77

    .line 1143
    iget-object v3, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 1144
    .local v3, "endNode":Lmf/org/w3c/dom/Node;
    :goto_44
    if-ltz v1, :cond_7e

    .line 1150
    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .local v6, "sp":Lmf/org/w3c/dom/Node;
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1151
    .local v4, "ep":Lmf/org/w3c/dom/Node;
    :goto_4e
    if-ne v6, v4, :cond_85

    .line 1157
    invoke-direct {p0, v8, v3, p1}, traverseCommonAncestors(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v9

    goto :goto_9

    .line 1116
    .end local v1    # "depthDiff":I
    .end local v3    # "endNode":Lmf/org/w3c/dom/Node;
    .end local v4    # "ep":Lmf/org/w3c/dom/Node;
    .end local v6    # "sp":Lmf/org/w3c/dom/Node;
    .end local v7    # "startContainerDepth":I
    .end local v8    # "startNode":Lmf/org/w3c/dom/Node;
    :cond_55
    iget-object v9, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v5, v9, :cond_5e

    .line 1117
    invoke-direct {p0, v0, p1}, traverseCommonStartContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v9

    goto :goto_9

    .line 1118
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    .line 1114
    move-object v0, v5

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    goto :goto_31

    .line 1128
    .restart local v7    # "startContainerDepth":I
    :cond_66
    iget-object v9, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v5, v9, :cond_6f

    .line 1129
    invoke-direct {p0, v0, p1}, traverseCommonEndContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v9

    goto :goto_9

    .line 1130
    :cond_6f
    add-int/lit8 v7, v7, 0x1

    .line 1126
    move-object v0, v5

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    goto :goto_3a

    .line 1139
    .restart local v1    # "depthDiff":I
    .restart local v8    # "startNode":Lmf/org/w3c/dom/Node;
    :cond_77
    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v8

    .line 1140
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 1145
    .restart local v3    # "endNode":Lmf/org/w3c/dom/Node;
    :cond_7e
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1146
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1154
    .restart local v4    # "ep":Lmf/org/w3c/dom/Node;
    .restart local v6    # "sp":Lmf/org/w3c/dom/Node;
    :cond_85
    move-object v8, v6

    .line 1155
    move-object v3, v4

    .line 1152
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_4e
.end method

.method private traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .registers 8
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v0, 0x0

    .line 1772
    packed-switch p2, :pswitch_data_2e

    move-object p1, v0

    .line 1789
    .end local p1    # "n":Lmf/org/w3c/dom/Node;
    :cond_5
    :goto_5
    return-object p1

    .line 1775
    .restart local p1    # "n":Lmf/org/w3c/dom/Node;
    :pswitch_6
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_5

    .line 1777
    :pswitch_c
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 1780
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 1781
    const/4 v2, 0x3

    .line 1782
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "HIERARCHY_REQUEST_ERR"

    invoke-static {v3, v4, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1780
    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1786
    :pswitch_24
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object p1, v0

    .line 1787
    goto :goto_5

    .line 1772
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
        :pswitch_24
    .end packed-switch
.end method

.method private traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .registers 15
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1649
    invoke-virtual {p0}, getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {p0}, getStartOffset()I

    move-result v10

    invoke-direct {p0, v9, v10}, getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1650
    .local v4, "next":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v9

    if-eq v4, v9, :cond_1d

    move v3, v7

    .line 1652
    .local v3, "isFullySelected":Z
    :goto_16
    if-ne v4, p1, :cond_1f

    .line 1653
    invoke-direct {p0, v4, v3, v7, p2}, traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1683
    :cond_1c
    :goto_1c
    return-object v2

    .end local v3    # "isFullySelected":Z
    :cond_1d
    move v3, v8

    .line 1650
    goto :goto_16

    .line 1655
    .restart local v3    # "isFullySelected":Z
    :cond_1f
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .line 1656
    .local v6, "parent":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v6, v8, v7, p2}, traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1658
    .local v2, "clonedParent":Lmf/org/w3c/dom/Node;
    :goto_27
    if-nez v6, :cond_3a

    .line 1683
    const/4 v2, 0x0

    goto :goto_1c

    .line 1662
    :cond_2b
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1664
    .local v5, "nextSibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v4, v3, v7, p2}, traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1665
    .local v0, "clonedChild":Lmf/org/w3c/dom/Node;
    if-eq p2, v11, :cond_38

    .line 1666
    invoke-interface {v2, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1667
    :cond_38
    const/4 v3, 0x1

    .line 1668
    move-object v4, v5

    .line 1660
    .end local v0    # "clonedChild":Lmf/org/w3c/dom/Node;
    .end local v5    # "nextSibling":Lmf/org/w3c/dom/Node;
    :cond_3a
    if-nez v4, :cond_2b

    .line 1670
    if-eq v6, p1, :cond_1c

    .line 1673
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1674
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .line 1675
    invoke-direct {p0, v6, v8, v7, p2}, traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1676
    .local v1, "clonedGrandParent":Lmf/org/w3c/dom/Node;
    if-eq p2, v11, :cond_4f

    .line 1677
    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1678
    :cond_4f
    move-object v2, v1

    goto :goto_27
.end method

.method private traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;
    .registers 7
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "isFullySelected"    # Z
    .param p3, "isLeft"    # Z
    .param p4, "how"    # I

    .prologue
    .line 1730
    if-eqz p2, :cond_7

    .line 1731
    invoke-direct {p0, p1, p4}, traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1740
    :goto_6
    return-object v1

    .line 1733
    :cond_7
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 1734
    .local v0, "nodeType":S
    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    .line 1735
    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    .line 1736
    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    .line 1737
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1d

    .line 1738
    :cond_18
    invoke-direct {p0, p1, p3, p4}, traverseCharacterDataNode(Lmf/org/w3c/dom/Node;ZI)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_6

    .line 1740
    :cond_1d
    invoke-direct {p0, p1, p4}, traversePartiallySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_6
.end method

.method private traversePartiallySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v0, 0x0

    .line 1821
    packed-switch p2, :pswitch_data_c

    .line 1829
    :goto_4
    :pswitch_4
    return-object v0

    .line 1827
    :pswitch_5
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    .line 1821
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .registers 14
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "how"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 1546
    iget-object v8, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    iget v9, p0, fEndOffset:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {p0, v8, v9}, getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1547
    .local v4, "next":Lmf/org/w3c/dom/Node;
    iget-object v8, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-eq v4, v8, :cond_18

    const/4 v3, 0x1

    .line 1549
    .local v3, "isFullySelected":Z
    :goto_11
    if-ne v4, p1, :cond_1a

    .line 1550
    invoke-direct {p0, v4, v3, v7, p2}, traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1585
    :cond_17
    :goto_17
    return-object v2

    .end local v3    # "isFullySelected":Z
    :cond_18
    move v3, v7

    .line 1547
    goto :goto_11

    .line 1552
    .restart local v3    # "isFullySelected":Z
    :cond_1a
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1553
    .local v5, "parent":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v5, v7, v7, p2}, traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1555
    .local v2, "clonedParent":Lmf/org/w3c/dom/Node;
    :goto_22
    if-nez v5, :cond_39

    .line 1585
    const/4 v2, 0x0

    goto :goto_17

    .line 1559
    :cond_26
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .line 1561
    .local v6, "prevSibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v4, v3, v7, p2}, traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1562
    .local v0, "clonedChild":Lmf/org/w3c/dom/Node;
    if-eq p2, v10, :cond_37

    .line 1566
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v8

    .line 1564
    invoke-interface {v2, v0, v8}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1569
    :cond_37
    const/4 v3, 0x1

    .line 1570
    move-object v4, v6

    .line 1557
    .end local v0    # "clonedChild":Lmf/org/w3c/dom/Node;
    .end local v6    # "prevSibling":Lmf/org/w3c/dom/Node;
    :cond_39
    if-nez v4, :cond_26

    .line 1572
    if-eq v5, p1, :cond_17

    .line 1575
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1576
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1577
    invoke-direct {p0, v5, v7, v7, p2}, traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1578
    .local v1, "clonedGrandParent":Lmf/org/w3c/dom/Node;
    if-eq p2, v10, :cond_4e

    .line 1579
    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1580
    :cond_4e
    move-object v2, v1

    goto :goto_22
.end method

.method private traverseSameContainer(I)Lmf/org/w3c/dom/DocumentFragment;
    .registers 14
    .param p1, "how"    # I

    .prologue
    .line 1192
    const/4 v1, 0x0

    .line 1193
    .local v1, "frag":Lmf/org/w3c/dom/DocumentFragment;
    const/4 v8, 0x3

    if-eq p1, v8, :cond_a

    .line 1194
    iget-object v8, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v1

    .line 1198
    :cond_a
    iget v8, p0, fStartOffset:I

    iget v9, p0, fEndOffset:I

    if-ne v8, v9, :cond_11

    .line 1253
    .end local v1    # "frag":Lmf/org/w3c/dom/DocumentFragment;
    :cond_10
    :goto_10
    return-object v1

    .line 1203
    .restart local v1    # "frag":Lmf/org/w3c/dom/DocumentFragment;
    :cond_11
    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    .line 1204
    .local v3, "nodeType":S
    const/4 v8, 0x3

    if-eq v3, v8, :cond_24

    .line 1205
    const/4 v8, 0x4

    if-eq v3, v8, :cond_24

    .line 1206
    const/16 v8, 0x8

    if-eq v3, v8, :cond_24

    .line 1207
    const/4 v8, 0x7

    if-ne v3, v8, :cond_84

    .line 1209
    :cond_24
    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 1210
    .local v4, "s":Ljava/lang/String;
    iget v8, p0, fStartOffset:I

    iget v9, p0, fEndOffset:I

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1213
    .local v6, "sub":Ljava/lang/String;
    const/4 v8, 0x2

    if-eq p1, v8, :cond_47

    .line 1214
    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    check-cast v8, Lmf/org/apache/xerces/dom/CharacterDataImpl;

    iget v9, p0, fStartOffset:I

    .line 1215
    iget v10, p0, fEndOffset:I

    iget v11, p0, fStartOffset:I

    sub-int/2addr v10, v11

    .line 1214
    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->deleteData(II)V

    .line 1217
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, collapse(Z)V

    .line 1219
    :cond_47
    const/4 v8, 0x3

    if-ne p1, v8, :cond_4c

    .line 1220
    const/4 v1, 0x0

    goto :goto_10

    .line 1222
    :cond_4c
    const/4 v8, 0x3

    if-ne v3, v8, :cond_59

    .line 1223
    iget-object v8, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_10

    .line 1225
    :cond_59
    const/4 v8, 0x4

    if-ne v3, v8, :cond_66

    .line 1226
    iget-object v8, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v8

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_10

    .line 1228
    :cond_66
    const/16 v8, 0x8

    if-ne v3, v8, :cond_74

    .line 1229
    iget-object v8, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v8

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_10

    .line 1232
    :cond_74
    iget-object v8, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-object v9, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v9}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lmf/org/apache/xerces/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v8

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_10

    .line 1238
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "sub":Ljava/lang/String;
    :cond_84
    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget v9, p0, fStartOffset:I

    invoke-direct {p0, v8, v9}, getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1239
    .local v2, "n":Lmf/org/w3c/dom/Node;
    iget v8, p0, fEndOffset:I

    iget v9, p0, fStartOffset:I

    sub-int v0, v8, v9

    .line 1240
    .local v0, "cnt":I
    :goto_92
    if-gtz v0, :cond_9d

    .line 1250
    const/4 v8, 0x2

    if-eq p1, v8, :cond_10

    .line 1251
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, collapse(Z)V

    goto/16 :goto_10

    .line 1241
    :cond_9d
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1242
    .local v5, "sibling":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v2, p1}, traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    .line 1243
    .local v7, "xferNode":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_aa

    .line 1244
    invoke-interface {v1, v7}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1245
    :cond_aa
    add-int/lit8 v0, v0, -0x1

    .line 1246
    move-object v2, v5

    goto :goto_92
.end method


# virtual methods
.method checkIndex(Lmf/org/w3c/dom/Node;I)V
    .registers 9
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1896
    if-gez p2, :cond_13

    .line 1897
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 1899
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INDEX_SIZE_ERR"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1897
    invoke-direct {v1, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1902
    :cond_13
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 1906
    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    .line 1907
    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 1908
    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    .line 1909
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3d

    .line 1910
    :cond_24
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_56

    .line 1911
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 1912
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INDEX_SIZE_ERR"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1911
    invoke-direct {v1, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1918
    :cond_3d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-le p2, v1, :cond_56

    .line 1919
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 1920
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INDEX_SIZE_ERR"

    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1919
    invoke-direct {v1, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1923
    :cond_56
    return-void
.end method

.method public cloneContents()Lmf/org/w3c/dom/DocumentFragment;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v0, 0x2

    invoke-direct {p0, v0}, traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    return-object v0
.end method

.method public cloneRange()Lmf/org/w3c/dom/ranges/Range;
    .registers 7

    .prologue
    .line 758
    iget-boolean v1, p0, fDetach:Z

    if-eqz v1, :cond_16

    .line 759
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 760
    const/16 v2, 0xb

    .line 761
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 759
    invoke-direct {v1, v2, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 764
    :cond_16
    iget-object v1, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DocumentImpl;->createRange()Lmf/org/w3c/dom/ranges/Range;

    move-result-object v0

    .line 765
    .local v0, "range":Lmf/org/w3c/dom/ranges/Range;
    iget-object v1, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget v2, p0, fStartOffset:I

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/ranges/Range;->setStart(Lmf/org/w3c/dom/Node;I)V

    .line 766
    iget-object v1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    iget v2, p0, fEndOffset:I

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/ranges/Range;->setEnd(Lmf/org/w3c/dom/Node;I)V

    .line 767
    return-object v0
.end method

.method public collapse(Z)V
    .registers 7
    .param p1, "toStart"    # Z

    .prologue
    .line 389
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_16

    .line 390
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 391
    const/16 v1, 0xb

    .line 392
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 395
    :cond_16
    if-eqz p1, :cond_21

    .line 396
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 397
    iget v0, p0, fStartOffset:I

    iput v0, p0, fEndOffset:I

    .line 402
    :goto_20
    return-void

    .line 399
    :cond_21
    iget-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 400
    iget v0, p0, fEndOffset:I

    iput v0, p0, fStartOffset:I

    goto :goto_20
.end method

.method public compareBoundaryPoints(SLmf/org/w3c/dom/ranges/Range;)S
    .registers 20
    .param p1, "how"    # S
    .param p2, "sourceRange"    # Lmf/org/w3c/dom/ranges/Range;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 478
    move-object/from16 v0, p0

    iget-object v12, v0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v12, v12, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v12, :cond_6f

    .line 479
    move-object/from16 v0, p0

    iget-boolean v12, v0, fDetach:Z

    if-eqz v12, :cond_21

    .line 480
    new-instance v12, Lmf/org/w3c/dom/DOMException;

    .line 481
    const/16 v13, 0xb

    .line 482
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "INVALID_STATE_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 480
    invoke-direct {v12, v13, v14}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v12

    .line 485
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v13

    if-eq v12, v13, :cond_3f

    .line 486
    move-object/from16 v0, p0

    iget-object v12, v0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v13

    if-eq v12, v13, :cond_3f

    .line 487
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v12

    if-nez v12, :cond_5d

    .line 488
    :cond_3f
    move-object/from16 v0, p0

    iget-object v12, v0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v13

    if-eq v12, v13, :cond_6f

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v13

    if-eq v12, v13, :cond_6f

    .line 490
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_6f

    .line 491
    :cond_5d
    new-instance v12, Lmf/org/w3c/dom/DOMException;

    const/4 v13, 0x4

    .line 492
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "WRONG_DOCUMENT_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 491
    invoke-direct {v12, v13, v14}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v12

    .line 501
    :cond_6f
    if-nez p1, :cond_87

    .line 502
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 503
    .local v3, "endPointA":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 504
    .local v4, "endPointB":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartOffset()I

    move-result v7

    .line 505
    .local v7, "offsetA":I
    move-object/from16 v0, p0

    iget v8, v0, fStartOffset:I

    .line 533
    .local v8, "offsetB":I
    :goto_81
    if-ne v3, v4, :cond_ca

    .line 534
    if-ge v7, v8, :cond_c4

    const/4 v12, 0x1

    .line 597
    :goto_86
    return v12

    .line 507
    .end local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    .end local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    .end local v7    # "offsetA":I
    .end local v8    # "offsetB":I
    :cond_87
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_9d

    .line 508
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 509
    .restart local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 510
    .restart local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getStartOffset()I

    move-result v7

    .line 511
    .restart local v7    # "offsetA":I
    move-object/from16 v0, p0

    iget v8, v0, fEndOffset:I

    .line 512
    .restart local v8    # "offsetB":I
    goto :goto_81

    .line 513
    .end local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    .end local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    .end local v7    # "offsetA":I
    .end local v8    # "offsetB":I
    :cond_9d
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_b3

    .line 514
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 515
    .restart local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 516
    .restart local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndOffset()I

    move-result v7

    .line 517
    .restart local v7    # "offsetA":I
    move-object/from16 v0, p0

    iget v8, v0, fStartOffset:I

    .line 518
    .restart local v8    # "offsetB":I
    goto :goto_81

    .line 519
    .end local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    .end local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    .end local v7    # "offsetA":I
    .end local v8    # "offsetB":I
    :cond_b3
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 520
    .restart local v3    # "endPointA":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v4, v0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 521
    .restart local v4    # "endPointB":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ranges/Range;->getEndOffset()I

    move-result v7

    .line 522
    .restart local v7    # "offsetA":I
    move-object/from16 v0, p0

    iget v8, v0, fEndOffset:I

    .restart local v8    # "offsetB":I
    goto :goto_81

    .line 535
    :cond_c4
    if-ne v7, v8, :cond_c8

    const/4 v12, 0x0

    goto :goto_86

    .line 536
    :cond_c8
    const/4 v12, -0x1

    goto :goto_86

    .line 540
    :cond_ca
    move-object v1, v4

    .local v1, "c":Lmf/org/w3c/dom/Node;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    .line 541
    .local v9, "p":Lmf/org/w3c/dom/Node;
    :goto_cf
    if-nez v9, :cond_f5

    .line 553
    move-object v1, v3

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    .line 554
    :goto_d6
    if-nez v9, :cond_109

    .line 568
    const/4 v2, 0x0

    .line 569
    .local v2, "depthDiff":I
    move-object v6, v3

    .local v6, "n":Lmf/org/w3c/dom/Node;
    :goto_da
    if-nez v6, :cond_11f

    .line 571
    move-object v6, v4

    :goto_dd
    if-nez v6, :cond_126

    .line 573
    :goto_df
    if-gtz v2, :cond_12d

    .line 577
    :goto_e1
    if-ltz v2, :cond_134

    .line 581
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v10

    .line 582
    .local v10, "pA":Lmf/org/w3c/dom/Node;
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    .line 583
    .local v11, "pB":Lmf/org/w3c/dom/Node;
    :goto_eb
    if-ne v10, v11, :cond_13b

    .line 589
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v6

    .line 590
    :goto_f1
    if-nez v6, :cond_146

    .line 597
    const/4 v12, -0x1

    goto :goto_86

    .line 544
    .end local v2    # "depthDiff":I
    .end local v6    # "n":Lmf/org/w3c/dom/Node;
    .end local v10    # "pA":Lmf/org/w3c/dom/Node;
    .end local v11    # "pB":Lmf/org/w3c/dom/Node;
    :cond_f5
    if-ne v9, v3, :cond_103

    .line 545
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v5

    .line 546
    .local v5, "index":I
    if-gt v7, v5, :cond_101

    const/4 v12, 0x1

    goto :goto_86

    .line 547
    :cond_101
    const/4 v12, -0x1

    goto :goto_86

    .line 542
    .end local v5    # "index":I
    :cond_103
    move-object v1, v9

    invoke-interface {v9}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    goto :goto_cf

    .line 557
    :cond_109
    if-ne v9, v4, :cond_119

    .line 558
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v5

    .line 559
    .restart local v5    # "index":I
    if-ge v5, v8, :cond_116

    const/4 v12, 0x1

    goto/16 :goto_86

    .line 560
    :cond_116
    const/4 v12, -0x1

    goto/16 :goto_86

    .line 555
    .end local v5    # "index":I
    :cond_119
    move-object v1, v9

    invoke-interface {v9}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    goto :goto_d6

    .line 570
    .restart local v2    # "depthDiff":I
    .restart local v6    # "n":Lmf/org/w3c/dom/Node;
    :cond_11f
    add-int/lit8 v2, v2, 0x1

    .line 569
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    goto :goto_da

    .line 572
    :cond_126
    add-int/lit8 v2, v2, -0x1

    .line 571
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    goto :goto_dd

    .line 574
    :cond_12d
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 575
    add-int/lit8 v2, v2, -0x1

    goto :goto_df

    .line 578
    :cond_134
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_e1

    .line 586
    .restart local v10    # "pA":Lmf/org/w3c/dom/Node;
    .restart local v11    # "pB":Lmf/org/w3c/dom/Node;
    :cond_13b
    move-object v3, v10

    .line 587
    move-object v4, v11

    .line 584
    invoke-interface {v10}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    goto :goto_eb

    .line 593
    :cond_146
    if-ne v6, v4, :cond_14b

    .line 594
    const/4 v12, 0x1

    goto/16 :goto_86

    .line 591
    :cond_14b
    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v6

    goto :goto_f1
.end method

.method public deleteContents()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x3

    invoke-direct {p0, v0}, traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    .line 604
    return-void
.end method

.method deleteData(Lmf/org/w3c/dom/CharacterData;II)V
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/CharacterData;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 885
    iput-object p1, p0, fDeleteNode:Lmf/org/w3c/dom/Node;

    .line 886
    invoke-interface {p1, p2, p3}, Lmf/org/w3c/dom/CharacterData;->deleteData(II)V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, fDeleteNode:Lmf/org/w3c/dom/Node;

    .line 888
    return-void
.end method

.method public detach()V
    .registers 6

    .prologue
    .line 833
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_16

    .line 834
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 835
    const/16 v1, 0xb

    .line 836
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 838
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, fDetach:Z

    .line 839
    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/DocumentImpl;->removeRange(Lmf/org/w3c/dom/ranges/Range;)V

    .line 840
    return-void
.end method

.method public extractContents()Lmf/org/w3c/dom/DocumentFragment;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, v0}, traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsed()Z
    .registers 6

    .prologue
    .line 111
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_16

    .line 112
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 113
    const/16 v1, 0xb

    .line 114
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 116
    :cond_16
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_24

    .line 117
    iget v0, p0, fStartOffset:I

    iget v1, p0, fEndOffset:I

    if-ne v0, v1, :cond_24

    .line 116
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public getCommonAncestorContainer()Lmf/org/w3c/dom/Node;
    .registers 12

    .prologue
    .line 121
    iget-boolean v6, p0, fDetach:Z

    if-eqz v6, :cond_16

    .line 122
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    .line 123
    const/16 v7, 0xb

    .line 124
    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string v9, "INVALID_STATE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-direct {v6, v7, v8}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 126
    :cond_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v5, "startV":Ljava/util/ArrayList;
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .local v2, "node":Lmf/org/w3c/dom/Node;
    :goto_1d
    if-nez v2, :cond_3c

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "endV":Ljava/util/ArrayList;
    iget-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    :goto_26
    if-nez v2, :cond_44

    .line 139
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 140
    .local v4, "s":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 141
    .local v0, "e":I
    const/4 v3, 0x0

    .line 142
    :goto_35
    if-ltz v4, :cond_39

    if-gez v0, :cond_4c

    .line 151
    :cond_39
    check-cast v3, Lmf/org/w3c/dom/Node;

    return-object v3

    .line 131
    .end local v0    # "e":I
    .end local v1    # "endV":Ljava/util/ArrayList;
    .end local v4    # "s":I
    :cond_3c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_1d

    .line 137
    .restart local v1    # "endV":Ljava/util/ArrayList;
    :cond_44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_26

    .line 143
    .restart local v0    # "e":I
    .restart local v4    # "s":I
    :cond_4c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_39

    .line 144
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 148
    .local v3, "result":Ljava/lang/Object;
    add-int/lit8 v4, v4, -0x1

    .line 149
    add-int/lit8 v0, v0, -0x1

    goto :goto_35
.end method

.method public getEndContainer()Lmf/org/w3c/dom/Node;
    .registers 6

    .prologue
    .line 93
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_16

    .line 94
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 95
    const/16 v1, 0xb

    .line 96
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 98
    :cond_16
    iget-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getEndOffset()I
    .registers 6

    .prologue
    .line 102
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_16

    .line 103
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 104
    const/16 v1, 0xb

    .line 105
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 107
    :cond_16
    iget v0, p0, fEndOffset:I

    return v0
.end method

.method public getStartContainer()Lmf/org/w3c/dom/Node;
    .registers 6

    .prologue
    .line 75
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_16

    .line 76
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 77
    const/16 v1, 0xb

    .line 78
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 80
    :cond_16
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getStartOffset()I
    .registers 6

    .prologue
    .line 84
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_16

    .line 85
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 86
    const/16 v1, 0xb

    .line 87
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 89
    :cond_16
    iget v0, p0, fStartOffset:I

    return v0
.end method

.method indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I
    .registers 6
    .param p1, "child"    # Lmf/org/w3c/dom/Node;
    .param p2, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 2054
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eq v2, p2, :cond_8

    const/4 v0, -0x1

    .line 2059
    :cond_7
    return v0

    .line 2055
    :cond_8
    const/4 v0, 0x0

    .line 2056
    .local v0, "i":I
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "node":Lmf/org/w3c/dom/Node;
    :goto_d
    if-eq v1, p1, :cond_7

    .line 2057
    add-int/lit8 v0, v0, 0x1

    .line 2056
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_d
.end method

.method insertData(Lmf/org/w3c/dom/CharacterData;ILjava/lang/String;)V
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/CharacterData;
    .param p2, "index"    # I
    .param p3, "insert"    # Ljava/lang/String;

    .prologue
    .line 921
    iput-object p1, p0, fInsertNode:Lmf/org/w3c/dom/Node;

    .line 922
    invoke-interface {p1, p2, p3}, Lmf/org/w3c/dom/CharacterData;->insertData(ILjava/lang/String;)V

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, fInsertNode:Lmf/org/w3c/dom/Node;

    .line 924
    return-void
.end method

.method public insertNode(Lmf/org/w3c/dom/Node;)V
    .registers 15
    .param p1, "newNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 621
    if-nez p1, :cond_6

    .line 709
    :goto_5
    return-void

    .line 623
    :cond_6
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    .line 625
    .local v6, "type":I
    iget-object v7, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v7, v7, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_59

    .line 626
    iget-boolean v7, p0, fDetach:Z

    if-eqz v7, :cond_25

    .line 627
    new-instance v7, Lmf/org/w3c/dom/DOMException;

    .line 628
    const/16 v8, 0xb

    .line 629
    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string v10, "INVALID_STATE_ERR"

    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 627
    invoke-direct {v7, v8, v9}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    .line 631
    :cond_25
    iget-object v7, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v8

    if-eq v7, v8, :cond_3d

    .line 632
    new-instance v7, Lmf/org/w3c/dom/DOMException;

    const/4 v8, 0x4

    .line 633
    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string v10, "WRONG_DOCUMENT_ERR"

    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 632
    invoke-direct {v7, v8, v9}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    .line 636
    :cond_3d
    if-eq v6, v12, :cond_4a

    .line 637
    const/4 v7, 0x6

    if-eq v6, v7, :cond_4a

    .line 638
    const/16 v7, 0xc

    if-eq v6, v7, :cond_4a

    .line 639
    const/16 v7, 0x9

    if-ne v6, v7, :cond_59

    .line 641
    :cond_4a
    new-instance v7, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 643
    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string v9, "INVALID_NODE_TYPE_ERR"

    invoke-static {v8, v9, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 641
    invoke-direct {v7, v12, v8}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v7

    .line 648
    :cond_59
    const/4 v2, 0x0

    .line 649
    .local v2, "currentChildren":I
    const/4 v7, 0x1

    iput-boolean v7, p0, fInsertedFromRange:Z

    .line 652
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_e3

    .line 654
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 655
    .local v5, "parent":Lmf/org/w3c/dom/Node;
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 657
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7, v10}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .local v0, "cloneCurrent":Lmf/org/w3c/dom/Node;
    move-object v7, v0

    .line 658
    check-cast v7, Lmf/org/apache/xerces/dom/TextImpl;

    .line 659
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, fStartOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 658
    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/TextImpl;->setNodeValueInternal(Ljava/lang/String;)V

    .line 660
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    check-cast v7, Lmf/org/apache/xerces/dom/TextImpl;

    .line 661
    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, fStartOffset:I

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 660
    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/TextImpl;->setNodeValueInternal(Ljava/lang/String;)V

    .line 662
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 663
    .local v4, "next":Lmf/org/w3c/dom/Node;
    if-eqz v4, :cond_c7

    .line 664
    if-eqz v5, :cond_ad

    .line 665
    invoke-interface {v5, p1, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 666
    invoke-interface {v5, v0, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 675
    :cond_ad
    :goto_ad
    iget-object v7, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v7, v8, :cond_d0

    .line 676
    iput-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 677
    iget v7, p0, fEndOffset:I

    iget v8, p0, fStartOffset:I

    sub-int/2addr v7, v8

    iput v7, p0, fEndOffset:I

    .line 685
    :cond_bc
    :goto_bc
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget v8, p0, fStartOffset:I

    invoke-virtual {p0, v7, v0, v8}, signalSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V

    .line 708
    .end local v0    # "cloneCurrent":Lmf/org/w3c/dom/Node;
    .end local v4    # "next":Lmf/org/w3c/dom/Node;
    .end local v5    # "parent":Lmf/org/w3c/dom/Node;
    :cond_c3
    :goto_c3
    iput-boolean v10, p0, fInsertedFromRange:Z

    goto/16 :goto_5

    .line 669
    .restart local v0    # "cloneCurrent":Lmf/org/w3c/dom/Node;
    .restart local v4    # "next":Lmf/org/w3c/dom/Node;
    .restart local v5    # "parent":Lmf/org/w3c/dom/Node;
    :cond_c7
    if-eqz v5, :cond_ad

    .line 670
    invoke-interface {v5, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 671
    invoke-interface {v5, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_ad

    .line 679
    :cond_d0
    iget-object v7, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v7, v5, :cond_bc

    .line 681
    iget v7, p0, fEndOffset:I

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v8

    sub-int/2addr v8, v2

    add-int/2addr v7, v8

    iput v7, p0, fEndOffset:I

    goto :goto_bc

    .line 689
    .end local v0    # "cloneCurrent":Lmf/org/w3c/dom/Node;
    .end local v4    # "next":Lmf/org/w3c/dom/Node;
    .end local v5    # "parent":Lmf/org/w3c/dom/Node;
    :cond_e3
    iget-object v7, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v7, v8, :cond_f3

    .line 690
    iget-object v7, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 692
    :cond_f3
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 693
    .local v1, "current":Lmf/org/w3c/dom/Node;
    const/4 v3, 0x0

    .line 694
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_fb
    iget v7, p0, fStartOffset:I

    if-ge v3, v7, :cond_101

    if-nez v1, :cond_123

    .line 697
    :cond_101
    if-eqz v1, :cond_12a

    .line 698
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7, p1, v1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 704
    :goto_108
    iget-object v7, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v7, v8, :cond_c3

    iget v7, p0, fEndOffset:I

    if-eqz v7, :cond_c3

    .line 705
    iget v7, p0, fEndOffset:I

    iget-object v8, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v8

    sub-int/2addr v8, v2

    add-int/2addr v7, v8

    iput v7, p0, fEndOffset:I

    goto :goto_c3

    .line 695
    :cond_123
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_fb

    .line 700
    :cond_12a
    iget-object v7, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v7, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_108
.end method

.method public insertedNodeFromDOM(Lmf/org/w3c/dom/Node;)V
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 967
    if-nez p1, :cond_3

    .line 987
    :cond_2
    :goto_2
    return-void

    .line 968
    :cond_3
    iget-object v2, p0, fInsertNode:Lmf/org/w3c/dom/Node;

    if-eq v2, p1, :cond_2

    .line 969
    iget-boolean v2, p0, fInsertedFromRange:Z

    if-nez v2, :cond_2

    .line 971
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 973
    .local v1, "parent":Lmf/org/w3c/dom/Node;
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_23

    .line 974
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v0

    .line 975
    .local v0, "index":I
    iget v2, p0, fStartOffset:I

    if-ge v0, v2, :cond_23

    .line 976
    iget v2, p0, fStartOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, fStartOffset:I

    .line 980
    .end local v0    # "index":I
    :cond_23
    iget-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_2

    .line 981
    iget-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v0

    .line 982
    .restart local v0    # "index":I
    iget v2, p0, fEndOffset:I

    if-ge v0, v2, :cond_2

    .line 983
    iget v2, p0, fEndOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, fEndOffset:I

    goto :goto_2
.end method

.method isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .registers 5
    .param p1, "a"    # Lmf/org/w3c/dom/Node;
    .param p2, "b"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 2046
    move-object v0, p2

    .local v0, "node":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v0, :cond_5

    .line 2049
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 2047
    :cond_5
    if-ne v0, p1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    .line 2046
    :cond_9
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .registers 7
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "visitChildren"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2009
    if-nez p1, :cond_5

    move-object v1, v2

    .line 2041
    :cond_4
    :goto_4
    return-object v1

    .line 2012
    :cond_5
    if-eqz p2, :cond_d

    .line 2013
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 2014
    .local v1, "result":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_4

    .line 2020
    .end local v1    # "result":Lmf/org/w3c/dom/Node;
    :cond_d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 2021
    .restart local v1    # "result":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_4

    .line 2027
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 2028
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    :goto_17
    if-eqz v0, :cond_1d

    .line 2029
    iget-object v3, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, v3, :cond_1f

    :cond_1d
    move-object v1, v2

    .line 2041
    goto :goto_4

    .line 2031
    :cond_1f
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 2032
    if-nez v1, :cond_4

    .line 2035
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_17
.end method

.method receiveDeletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .registers 6
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 896
    if-nez p1, :cond_3

    .line 915
    :cond_2
    :goto_2
    return-void

    .line 897
    :cond_3
    iget-object v0, p0, fDeleteNode:Lmf/org/w3c/dom/Node;

    if-eq v0, p1, :cond_2

    .line 898
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_19

    .line 899
    iget v0, p0, fStartOffset:I

    add-int v1, p2, p3

    if-le v0, v1, :cond_2c

    .line 900
    iget v0, p0, fStartOffset:I

    add-int v1, p2, p3

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, fStartOffset:I

    .line 906
    :cond_19
    :goto_19
    iget-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    .line 907
    iget v0, p0, fEndOffset:I

    add-int v1, p2, p3

    if-le v0, v1, :cond_33

    .line 908
    iget v0, p0, fEndOffset:I

    add-int v1, p2, p3

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, fEndOffset:I

    goto :goto_2

    .line 902
    :cond_2c
    iget v0, p0, fStartOffset:I

    if-le v0, p2, :cond_19

    .line 903
    iput p2, p0, fStartOffset:I

    goto :goto_19

    .line 910
    :cond_33
    iget v0, p0, fEndOffset:I

    if-le v0, p2, :cond_2

    .line 911
    iput p2, p0, fEndOffset:I

    goto :goto_2
.end method

.method receiveInsertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .registers 5
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "index"    # I
    .param p3, "len"    # I

    .prologue
    .line 933
    if-nez p1, :cond_3

    .line 945
    :cond_2
    :goto_2
    return-void

    .line 934
    :cond_3
    iget-object v0, p0, fInsertNode:Lmf/org/w3c/dom/Node;

    if-eq v0, p1, :cond_2

    .line 935
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_14

    .line 936
    iget v0, p0, fStartOffset:I

    if-ge p2, v0, :cond_14

    .line 937
    iget v0, p0, fStartOffset:I

    add-int/2addr v0, p3

    iput v0, p0, fStartOffset:I

    .line 940
    :cond_14
    iget-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    .line 941
    iget v0, p0, fEndOffset:I

    if-ge p2, v0, :cond_2

    .line 942
    iget v0, p0, fEndOffset:I

    add-int/2addr v0, p3

    iput v0, p0, fEndOffset:I

    goto :goto_2
.end method

.method receiveReplacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V
    .registers 4
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;

    .prologue
    const/4 v1, 0x0

    .line 953
    if-nez p1, :cond_4

    .line 960
    :cond_3
    :goto_3
    return-void

    .line 954
    :cond_4
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_a

    .line 955
    iput v1, p0, fStartOffset:I

    .line 957
    :cond_a
    iget-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_3

    .line 958
    iput v1, p0, fEndOffset:I

    goto :goto_3
.end method

.method receiveSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V
    .registers 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "newNode"    # Lmf/org/w3c/dom/Node;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x3

    .line 861
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 879
    :cond_5
    :goto_5
    return-void

    .line 862
    :cond_6
    iget-object v0, p0, fSplitNode:Lmf/org/w3c/dom/Node;

    if-eq v0, p1, :cond_5

    .line 864
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_21

    .line 865
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_21

    .line 866
    iget v0, p0, fStartOffset:I

    if-le v0, p3, :cond_21

    .line 867
    iget v0, p0, fStartOffset:I

    sub-int/2addr v0, p3

    iput v0, p0, fStartOffset:I

    .line 868
    iput-object p2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 871
    :cond_21
    iget-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_5

    .line 872
    iget-object v0, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_5

    .line 873
    iget v0, p0, fEndOffset:I

    if-le v0, p3, :cond_5

    .line 874
    iget v0, p0, fEndOffset:I

    sub-int/2addr v0, p3

    iput v0, p0, fEndOffset:I

    .line 875
    iput-object p2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    goto :goto_5
.end method

.method removeChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 5
    .param p1, "parent"    # Lmf/org/w3c/dom/Node;
    .param p2, "child"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 997
    iput-object p2, p0, fRemoveChild:Lmf/org/w3c/dom/Node;

    .line 998
    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 999
    .local v0, "n":Lmf/org/w3c/dom/Node;
    const/4 v1, 0x0

    iput-object v1, p0, fRemoveChild:Lmf/org/w3c/dom/Node;

    .line 1000
    return-object v0
.end method

.method removeNode(Lmf/org/w3c/dom/Node;)V
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1008
    if-nez p1, :cond_3

    .line 1039
    :cond_2
    :goto_2
    return-void

    .line 1009
    :cond_3
    iget-object v2, p0, fRemoveChild:Lmf/org/w3c/dom/Node;

    if-eq v2, p1, :cond_2

    .line 1011
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1013
    .local v1, "parent":Lmf/org/w3c/dom/Node;
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_1f

    .line 1014
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v0

    .line 1015
    .local v0, "index":I
    iget v2, p0, fStartOffset:I

    if-ge v0, v2, :cond_1f

    .line 1016
    iget v2, p0, fStartOffset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, fStartOffset:I

    .line 1020
    .end local v0    # "index":I
    :cond_1f
    iget-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_33

    .line 1021
    iget-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v0

    .line 1022
    .restart local v0    # "index":I
    iget v2, p0, fEndOffset:I

    if-ge v0, v2, :cond_33

    .line 1023
    iget v2, p0, fEndOffset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, fEndOffset:I

    .line 1027
    .end local v0    # "index":I
    :cond_33
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v2, :cond_3b

    .line 1028
    iget-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-eq v1, v2, :cond_2

    .line 1029
    :cond_3b
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1030
    iput-object v1, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 1031
    invoke-virtual {p0, p1, v1}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v2

    iput v2, p0, fStartOffset:I

    .line 1033
    :cond_4b
    iget-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v2}, isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1034
    iput-object v1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 1035
    invoke-virtual {p0, p1, v1}, indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v2

    iput v2, p0, fEndOffset:I

    goto :goto_2
.end method

.method public selectNode(Lmf/org/w3c/dom/Node;)V
    .registers 10
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 407
    iget-object v3, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_58

    .line 408
    iget-boolean v3, p0, fDetach:Z

    if-eqz v3, :cond_1c

    .line 409
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    .line 410
    const/16 v4, 0xb

    .line 411
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-direct {v3, v4, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 413
    :cond_1c
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3}, isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 414
    invoke-direct {p0, p1}, isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 415
    :cond_2c
    new-instance v3, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 416
    const/4 v4, 0x2

    .line 417
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_NODE_TYPE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v3

    .line 419
    :cond_3c
    iget-object v3, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    if-eq v3, v4, :cond_58

    iget-object v3, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v3, p1, :cond_58

    .line 420
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    .line 421
    const/4 v4, 0x4

    .line 422
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "WRONG_DOCUMENT_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-direct {v3, v4, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 425
    :cond_58
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 426
    .local v2, "parent":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_70

    .line 428
    iput-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 429
    iput-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_64
    if-nez v1, :cond_71

    .line 434
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, fStartOffset:I

    .line 435
    iget v3, p0, fStartOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, fEndOffset:I

    .line 437
    .end local v0    # "i":I
    .end local v1    # "n":Lmf/org/w3c/dom/Node;
    :cond_70
    return-void

    .line 432
    .restart local v0    # "i":I
    .restart local v1    # "n":Lmf/org/w3c/dom/Node;
    :cond_71
    add-int/lit8 v0, v0, 0x1

    .line 431
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_64
.end method

.method public selectNodeContents(Lmf/org/w3c/dom/Node;)V
    .registers 10
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 442
    iget-object v3, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_4f

    .line 443
    iget-boolean v3, p0, fDetach:Z

    if-eqz v3, :cond_1d

    .line 444
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    .line 445
    const/16 v4, 0xb

    .line 446
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-direct {v3, v4, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 448
    :cond_1d
    invoke-direct {p0, p1}, isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 449
    new-instance v3, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 450
    const/4 v4, 0x2

    .line 451
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_NODE_TYPE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 449
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v3

    .line 453
    :cond_33
    iget-object v3, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    if-eq v3, v4, :cond_4f

    iget-object v3, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v3, p1, :cond_4f

    .line 454
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    .line 455
    const/4 v4, 0x4

    .line 456
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "WRONG_DOCUMENT_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-direct {v3, v4, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 459
    :cond_4f
    iput-object p1, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 460
    iput-object p1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 461
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 462
    .local v0, "first":Lmf/org/w3c/dom/Node;
    iput v5, p0, fStartOffset:I

    .line 463
    if-nez v0, :cond_5e

    .line 464
    iput v5, p0, fEndOffset:I

    .line 473
    :goto_5d
    return-void

    .line 466
    :cond_5e
    const/4 v1, 0x0

    .line 467
    .local v1, "i":I
    move-object v2, v0

    .local v2, "n":Lmf/org/w3c/dom/Node;
    :goto_60
    if-nez v2, :cond_65

    .line 470
    iput v1, p0, fEndOffset:I

    goto :goto_5d

    .line 468
    :cond_65
    add-int/lit8 v1, v1, 0x1

    .line 467
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_60
.end method

.method public setEnd(Lmf/org/w3c/dom/Node;I)V
    .registers 8
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;,
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_4e

    .line 196
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_1c

    .line 197
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 198
    const/16 v1, 0xb

    .line 199
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 201
    :cond_1c
    invoke-direct {p0, p1}, isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 202
    new-instance v0, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 203
    const/4 v1, 0x2

    .line 204
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v0

    .line 206
    :cond_32
    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_4e

    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v0, p1, :cond_4e

    .line 207
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 208
    const/4 v1, 0x4

    .line 209
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 213
    :cond_4e
    invoke-virtual {p0, p1, p2}, checkIndex(Lmf/org/w3c/dom/Node;I)V

    .line 215
    iput-object p1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 216
    iput p2, p0, fEndOffset:I

    .line 223
    invoke-virtual {p0}, getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 224
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_6b

    iget v0, p0, fEndOffset:I

    iget v1, p0, fStartOffset:I

    if-ge v0, v1, :cond_6b

    .line 225
    :cond_67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, collapse(Z)V

    .line 227
    :cond_6b
    return-void
.end method

.method public setEndAfter(Lmf/org/w3c/dom/Node;)V
    .registers 9
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 351
    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_54

    .line 352
    iget-boolean v2, p0, fDetach:Z

    if-eqz v2, :cond_1c

    .line 353
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 354
    const/16 v3, 0xb

    .line 355
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_STATE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 357
    :cond_1c
    invoke-direct {p0, p1}, hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 358
    invoke-direct {p0, p1}, isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 359
    :cond_28
    new-instance v2, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 360
    const/4 v3, 0x2

    .line 361
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v2

    .line 363
    :cond_38
    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq v2, v3, :cond_54

    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v2, p1, :cond_54

    .line 364
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 365
    const/4 v3, 0x4

    .line 366
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 369
    :cond_54
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_5c
    if-nez v1, :cond_77

    .line 374
    iput v0, p0, fEndOffset:I

    .line 381
    invoke-virtual {p0}, getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 382
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_76

    iget v2, p0, fEndOffset:I

    iget v3, p0, fStartOffset:I

    if-ge v2, v3, :cond_76

    .line 383
    :cond_72
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, collapse(Z)V

    .line 385
    :cond_76
    return-void

    .line 372
    :cond_77
    add-int/lit8 v0, v0, 0x1

    .line 371
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_5c
.end method

.method public setEndBefore(Lmf/org/w3c/dom/Node;)V
    .registers 9
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 312
    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_54

    .line 313
    iget-boolean v2, p0, fDetach:Z

    if-eqz v2, :cond_1c

    .line 314
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 315
    const/16 v3, 0xb

    .line 316
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_STATE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 318
    :cond_1c
    invoke-direct {p0, p1}, hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 319
    invoke-direct {p0, p1}, isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 320
    :cond_28
    new-instance v2, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 321
    const/4 v3, 0x2

    .line 322
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v2

    .line 324
    :cond_38
    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq v2, v3, :cond_54

    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v2, p1, :cond_54

    .line 325
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 326
    const/4 v3, 0x4

    .line 327
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 330
    :cond_54
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_5c
    if-nez v1, :cond_79

    .line 335
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, fEndOffset:I

    .line 342
    invoke-virtual {p0}, getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 343
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_78

    iget v2, p0, fEndOffset:I

    iget v3, p0, fStartOffset:I

    if-ge v2, v3, :cond_78

    .line 344
    :cond_74
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, collapse(Z)V

    .line 346
    :cond_78
    return-void

    .line 333
    :cond_79
    add-int/lit8 v0, v0, 0x1

    .line 332
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_5c
.end method

.method public setStart(Lmf/org/w3c/dom/Node;I)V
    .registers 8
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;,
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 158
    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_4e

    .line 159
    iget-boolean v0, p0, fDetach:Z

    if-eqz v0, :cond_1c

    .line 160
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 161
    const/16 v1, 0xb

    .line 162
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 164
    :cond_1c
    invoke-direct {p0, p1}, isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 165
    new-instance v0, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 166
    const/4 v1, 0x2

    .line 167
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v0

    .line 169
    :cond_32
    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_4e

    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v0, p1, :cond_4e

    .line 170
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 171
    const/4 v1, 0x4

    .line 172
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 176
    :cond_4e
    invoke-virtual {p0, p1, p2}, checkIndex(Lmf/org/w3c/dom/Node;I)V

    .line 178
    iput-object p1, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 179
    iput p2, p0, fStartOffset:I

    .line 186
    invoke-virtual {p0}, getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 187
    iget-object v0, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_6b

    iget v0, p0, fEndOffset:I

    iget v1, p0, fStartOffset:I

    if-ge v0, v1, :cond_6b

    .line 188
    :cond_67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, collapse(Z)V

    .line 190
    :cond_6b
    return-void
.end method

.method public setStartAfter(Lmf/org/w3c/dom/Node;)V
    .registers 9
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 273
    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_54

    .line 274
    iget-boolean v2, p0, fDetach:Z

    if-eqz v2, :cond_1c

    .line 275
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 276
    const/16 v3, 0xb

    .line 277
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_STATE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 279
    :cond_1c
    invoke-direct {p0, p1}, hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 280
    invoke-direct {p0, p1}, isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 281
    :cond_28
    new-instance v2, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 282
    const/4 v3, 0x2

    .line 283
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v2

    .line 285
    :cond_38
    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq v2, v3, :cond_54

    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v2, p1, :cond_54

    .line 286
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 287
    const/4 v3, 0x4

    .line 288
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 291
    :cond_54
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_5c
    if-nez v1, :cond_77

    .line 296
    iput v0, p0, fStartOffset:I

    .line 303
    invoke-virtual {p0}, getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 304
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_76

    iget v2, p0, fEndOffset:I

    iget v3, p0, fStartOffset:I

    if-ge v2, v3, :cond_76

    .line 305
    :cond_72
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, collapse(Z)V

    .line 307
    :cond_76
    return-void

    .line 294
    :cond_77
    add-int/lit8 v0, v0, 0x1

    .line 293
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_5c
.end method

.method public setStartBefore(Lmf/org/w3c/dom/Node;)V
    .registers 9
    .param p1, "refNode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 232
    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_54

    .line 233
    iget-boolean v2, p0, fDetach:Z

    if-eqz v2, :cond_1c

    .line 234
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 235
    const/16 v3, 0xb

    .line 236
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_STATE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 238
    :cond_1c
    invoke-direct {p0, p1}, hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 239
    invoke-direct {p0, p1}, isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 241
    :cond_28
    new-instance v2, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 242
    const/4 v3, 0x2

    .line 243
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v2

    .line 245
    :cond_38
    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq v2, v3, :cond_54

    iget-object v2, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-eq v2, p1, :cond_54

    .line 246
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 247
    const/4 v3, 0x4

    .line 248
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 252
    :cond_54
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "i":I
    move-object v1, p1

    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_5c
    if-nez v1, :cond_79

    .line 257
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, fStartOffset:I

    .line 264
    invoke-virtual {p0}, getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 265
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_78

    iget v2, p0, fEndOffset:I

    iget v3, p0, fStartOffset:I

    if-ge v2, v3, :cond_78

    .line 266
    :cond_74
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, collapse(Z)V

    .line 268
    :cond_78
    return-void

    .line 255
    :cond_79
    add-int/lit8 v0, v0, 0x1

    .line 254
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_5c
.end method

.method signalSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "newNode"    # Lmf/org/w3c/dom/Node;
    .param p3, "offset"    # I

    .prologue
    .line 851
    iput-object p1, p0, fSplitNode:Lmf/org/w3c/dom/Node;

    .line 853
    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DocumentImpl;->splitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, fSplitNode:Lmf/org/w3c/dom/Node;

    .line 855
    return-void
.end method

.method public surroundContents(Lmf/org/w3c/dom/Node;)V
    .registers 12
    .param p1, "newParent"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xb

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 714
    if-nez p1, :cond_8

    .line 755
    :goto_7
    return-void

    .line 715
    :cond_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    .line 717
    .local v3, "type":I
    iget-object v4, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_47

    .line 718
    iget-boolean v4, p0, fDetach:Z

    if-eqz v4, :cond_25

    .line 719
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    .line 721
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 719
    invoke-direct {v4, v9, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 723
    :cond_25
    if-eq v3, v7, :cond_38

    .line 724
    const/4 v4, 0x6

    if-eq v3, v4, :cond_38

    .line 725
    const/16 v4, 0xc

    if-eq v3, v4, :cond_38

    .line 726
    const/16 v4, 0xa

    if-eq v3, v4, :cond_38

    .line 727
    const/16 v4, 0x9

    if-eq v3, v4, :cond_38

    .line 728
    if-ne v3, v9, :cond_47

    .line 730
    :cond_38
    new-instance v4, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 732
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_NODE_TYPE_ERR"

    invoke-static {v5, v6, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 730
    invoke-direct {v4, v7, v5}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v4

    .line 736
    :cond_47
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 737
    .local v2, "realStart":Lmf/org/w3c/dom/Node;
    iget-object v1, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 738
    .local v1, "realEnd":Lmf/org/w3c/dom/Node;
    iget-object v4, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_59

    .line 739
    iget-object v4, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 741
    :cond_59
    iget-object v4, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_67

    .line 742
    iget-object v4, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 745
    :cond_67
    if-eq v2, v1, :cond_79

    .line 746
    new-instance v4, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    .line 747
    const/4 v5, 0x1

    .line 748
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "BAD_BOUNDARYPOINTS_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 746
    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v4

    .line 751
    :cond_79
    invoke-virtual {p0}, extractContents()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    .line 752
    .local v0, "frag":Lmf/org/w3c/dom/DocumentFragment;
    invoke-virtual {p0, p1}, insertNode(Lmf/org/w3c/dom/Node;)V

    .line 753
    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 754
    invoke-virtual {p0, p1}, selectNode(Lmf/org/w3c/dom/Node;)V

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 771
    iget-boolean v5, p0, fDetach:Z

    if-eqz v5, :cond_1a

    .line 772
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    .line 773
    const/16 v6, 0xb

    .line 774
    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "INVALID_STATE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 772
    invoke-direct {v5, v6, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 777
    :cond_1a
    iget-object v2, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    .line 778
    .local v2, "node":Lmf/org/w3c/dom/Node;
    iget-object v4, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    .line 779
    .local v4, "stopNode":Lmf/org/w3c/dom/Node;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 780
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_33

    .line 781
    iget-object v5, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_ac

    .line 783
    :cond_33
    iget-object v5, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v6, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v5, v6, :cond_4f

    .line 784
    iget-object v5, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, fStartOffset:I

    iget v7, p0, fEndOffset:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 785
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 829
    :goto_4e
    return-object v5

    .line 787
    :cond_4f
    iget-object v5, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, fStartOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    invoke-virtual {p0, v2, v10}, nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 804
    :cond_62
    :goto_62
    iget-object v5, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_86

    .line 805
    iget-object v5, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v8, :cond_86

    .line 806
    iget v1, p0, fEndOffset:I

    .line 807
    .local v1, "i":I
    iget-object v5, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 808
    :goto_7a
    if-lez v1, :cond_7e

    if-nez v4, :cond_cb

    .line 812
    :cond_7e
    if-nez v4, :cond_86

    .line 813
    iget-object v5, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v5, v9}, nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 815
    .end local v1    # "i":I
    :cond_86
    :goto_86
    if-ne v2, v4, :cond_d2

    .line 825
    :cond_88
    iget-object v5, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_98

    .line 826
    iget-object v5, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_a7

    .line 827
    :cond_98
    iget-object v5, p0, fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, fEndOffset:I

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    :cond_a7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4e

    .line 792
    :cond_ac
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 793
    iget v5, p0, fStartOffset:I

    if-lez v5, :cond_bb

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "counter":I
    :goto_b5
    iget v5, p0, fStartOffset:I

    if-ge v0, v5, :cond_bb

    if-nez v2, :cond_c4

    .line 800
    .end local v0    # "counter":I
    :cond_bb
    if-nez v2, :cond_62

    .line 801
    iget-object v5, p0, fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v5, v9}, nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_62

    .line 796
    .restart local v0    # "counter":I
    :cond_c4
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 809
    .end local v0    # "counter":I
    .restart local v1    # "i":I
    :cond_cb
    add-int/lit8 v1, v1, -0x1

    .line 810
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_7a

    .line 816
    .end local v1    # "i":I
    :cond_d2
    if-eqz v2, :cond_88

    .line 817
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_e0

    .line 818
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_e7

    .line 819
    :cond_e0
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    :cond_e7
    invoke-virtual {p0, v2, v10}, nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_86
.end method
