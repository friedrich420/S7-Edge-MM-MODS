.class public Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
.super Lmf/org/apache/xerces/dom/DocumentImpl;
.source "DeferredDocumentImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;,
        Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    }
.end annotation


# static fields
.field protected static final CHUNK_MASK:I = 0x7ff

.field protected static final CHUNK_SHIFT:I = 0xb

.field protected static final CHUNK_SIZE:I = 0x800

.field private static final DEBUG_IDS:Z = false

.field private static final DEBUG_PRINT_REF_COUNTS:Z = false

.field private static final DEBUG_PRINT_TABLES:Z = false

.field protected static final INITIAL_CHUNK_COUNT:I = 0x20

.field private static final INIT_ARRAY:[I

.field static final serialVersionUID:J = 0x47f985d180d03de9L


# instance fields
.field private final transient fBufferStr:Ljava/lang/StringBuffer;

.field protected transient fIdCount:I

.field protected transient fIdElement:[I

.field protected transient fIdName:[Ljava/lang/String;

.field protected fNamespacesEnabled:Z

.field protected transient fNodeCount:I

.field protected transient fNodeExtra:[[I

.field protected transient fNodeLastChild:[[I

.field protected transient fNodeName:[[Ljava/lang/Object;

.field protected transient fNodeParent:[[I

.field protected transient fNodePrevSib:[[I

.field protected transient fNodeType:[[I

.field protected transient fNodeURI:[[Ljava/lang/Object;

.field protected transient fNodeValue:[[Ljava/lang/Object;

.field private final transient fStrChunks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1924
    const/16 v1, 0x801

    new-array v1, v1, [I

    sput-object v1, INIT_ARRAY:[I

    .line 1926
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    const/16 v1, 0x800

    if-lt v0, v1, :cond_c

    .line 1929
    return-void

    .line 1927
    :cond_c
    sget-object v1, INIT_ARRAY:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 1926
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, <init>(Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "namespacesEnabled"    # Z

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(ZZ)V

    .line 153
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5
    .param p1, "namespaces"    # Z
    .param p2, "grammarAccess"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Z)V

    .line 88
    iput v0, p0, fNodeCount:I

    .line 127
    iput-boolean v0, p0, fNamespacesEnabled:Z

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, fBufferStr:Ljava/lang/StringBuffer;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, fStrChunks:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p0, v1}, needsSyncData(Z)V

    .line 160
    invoke-virtual {p0, v1}, needsSyncChildren(Z)V

    .line 162
    iput-boolean p1, p0, fNamespacesEnabled:Z

    .line 164
    return-void
.end method

.method protected static binarySearch([IIII)I
    .registers 7
    .param p0, "values"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "target"    # I

    .prologue
    .line 1884
    :goto_0
    if-le p1, p2, :cond_4

    .line 1917
    const/4 v0, -0x1

    :cond_3
    return v0

    .line 1887
    :cond_4
    add-int v2, p1, p2

    ushr-int/lit8 v0, v2, 0x1

    .line 1888
    .local v0, "middle":I
    aget v1, p0, v0

    .line 1893
    .local v1, "value":I
    if-ne v1, p3, :cond_17

    .line 1894
    :goto_c
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-ne v2, p3, :cond_3

    .line 1895
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1904
    :cond_17
    if-le v1, p3, :cond_1c

    .line 1905
    add-int/lit8 p2, v0, -0x1

    .line 1906
    goto :goto_0

    .line 1908
    :cond_1c
    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private final clearChunkIndex([[III)I
    .registers 9
    .param p1, "data"    # [[I
    .param p2, "chunk"    # I
    .param p3, "index"    # I

    .prologue
    const/16 v4, 0x800

    const/4 v1, -0x1

    .line 2020
    aget-object v2, p1, p2

    if-eqz v2, :cond_23

    aget-object v2, p1, p2

    aget v0, v2, p3

    .line 2021
    .local v0, "value":I
    :goto_b
    if-eq v0, v1, :cond_22

    .line 2022
    aget-object v2, p1, p2

    aget v3, v2, v4

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v4

    .line 2023
    aget-object v2, p1, p2

    aput v1, v2, p3

    .line 2024
    aget-object v1, p1, p2

    aget v1, v1, v4

    if-nez v1, :cond_22

    .line 2025
    const/4 v1, 0x0

    aput-object v1, p1, p2

    .line 2028
    :cond_22
    return v0

    .end local v0    # "value":I
    :cond_23
    move v0, v1

    .line 2020
    goto :goto_b
.end method

.method private final clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .registers 9
    .param p1, "data"    # [[Ljava/lang/Object;
    .param p2, "chunk"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 2032
    aget-object v2, p1, p2

    if-eqz v2, :cond_27

    aget-object v2, p1, p2

    aget-object v2, v2, p3

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 2033
    .local v1, "value":Ljava/lang/String;
    :goto_c
    if-eqz v1, :cond_26

    .line 2034
    aget-object v2, p1, p2

    aput-object v3, v2, p3

    .line 2035
    aget-object v2, p1, p2

    const/16 v4, 0x800

    aget-object v0, v2, v4

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    .line 2036
    .local v0, "c":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    iget v2, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    .line 2037
    iget v2, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v2, :cond_26

    .line 2038
    aput-object v3, p1, p2

    .line 2041
    .end local v0    # "c":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    :cond_26
    return-object v1

    .end local v1    # "value":Ljava/lang/String;
    :cond_27
    move-object v1, v3

    .line 2032
    goto :goto_c
.end method

.method private final createChunk([[II)V
    .registers 7
    .param p1, "data"    # [[I
    .param p2, "chunk"    # I

    .prologue
    const/4 v3, 0x0

    .line 1932
    const/16 v0, 0x801

    new-array v0, v0, [I

    aput-object v0, p1, p2

    .line 1933
    sget-object v0, INIT_ARRAY:[I

    aget-object v1, p1, p2

    const/16 v2, 0x800

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1934
    return-void
.end method

.method private final createChunk([[Ljava/lang/Object;I)V
    .registers 6
    .param p1, "data"    # [[Ljava/lang/Object;
    .param p2, "chunk"    # I

    .prologue
    .line 1941
    const/16 v0, 0x801

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 1942
    aget-object v0, p1, p2

    const/16 v1, 0x800

    new-instance v2, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;-><init>()V

    aput-object v2, v0, v1

    .line 1943
    return-void
.end method

.method private final getChunkIndex([[III)I
    .registers 5
    .param p1, "data"    # [[I
    .param p2, "chunk"    # I
    .param p3, "index"    # I

    .prologue
    .line 1992
    aget-object v0, p1, p2

    if-eqz v0, :cond_9

    aget-object v0, p1, p2

    aget v0, v0, p3

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method private final getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .registers 5
    .param p1, "data"    # [[Ljava/lang/Object;
    .param p2, "chunk"    # I
    .param p3, "index"    # I

    .prologue
    .line 1995
    aget-object v0, p1, p2

    if-eqz v0, :cond_b

    aget-object v0, p1, p2

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private final getNodeValue(II)Ljava/lang/String;
    .registers 5
    .param p1, "chunk"    # I
    .param p2, "index"    # I

    .prologue
    .line 1998
    iget-object v1, p0, fNodeValue:[[Ljava/lang/Object;

    aget-object v1, v1, p1

    aget-object v0, v1, p2

    .line 1999
    .local v0, "data":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 2000
    const/4 v0, 0x0

    .line 2007
    .end local v0    # "data":Ljava/lang/Object;
    :goto_9
    return-object v0

    .line 2002
    .restart local v0    # "data":Ljava/lang/Object;
    :cond_a
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 2003
    check-cast v0, Ljava/lang/String;

    goto :goto_9

    .line 2007
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static print([IIIII)V
    .registers 5
    .param p0, "values"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "middle"    # I
    .param p4, "target"    # I

    .prologue
    .line 2089
    return-void
.end method

.method private final putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .registers 4
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "element"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 2058
    iget-object v0, p0, identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 2059
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, identifiers:Ljava/util/Hashtable;

    .line 2063
    :cond_b
    iget-object v0, p0, identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    return-void
.end method

.method private final setChunkIndex([[IIII)I
    .registers 9
    .param p1, "data"    # [[I
    .param p2, "value"    # I
    .param p3, "chunk"    # I
    .param p4, "index"    # I

    .prologue
    const/4 v2, -0x1

    .line 1952
    if-ne p2, v2, :cond_8

    .line 1953
    invoke-direct {p0, p1, p3, p4}, clearChunkIndex([[III)I

    move-result v1

    .line 1966
    :goto_7
    return v1

    .line 1955
    :cond_8
    aget-object v0, p1, p3

    .line 1957
    .local v0, "dataChunk":[I
    if-nez v0, :cond_11

    .line 1958
    invoke-direct {p0, p1, p3}, createChunk([[II)V

    .line 1959
    aget-object v0, p1, p3

    .line 1961
    :cond_11
    aget v1, v0, p4

    .line 1962
    .local v1, "ovalue":I
    if-ne v1, v2, :cond_1d

    .line 1963
    const/16 v2, 0x800

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 1965
    :cond_1d
    aput p2, v0, p4

    goto :goto_7
.end method

.method private final setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;
    .registers 9
    .param p1, "data"    # [[Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "chunk"    # I
    .param p4, "index"    # I

    .prologue
    .line 1970
    if-nez p2, :cond_7

    .line 1971
    invoke-direct {p0, p1, p3, p4}, clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    .line 1985
    :goto_6
    return-object v2

    .line 1973
    :cond_7
    aget-object v1, p1, p3

    .line 1975
    .local v1, "dataChunk":[Ljava/lang/Object;
    if-nez v1, :cond_10

    .line 1976
    invoke-direct {p0, p1, p3}, createChunk([[Ljava/lang/Object;I)V

    .line 1977
    aget-object v1, p1, p3

    .line 1979
    :cond_10
    aget-object v2, v1, p4

    check-cast v2, Ljava/lang/String;

    .line 1980
    .local v2, "ovalue":Ljava/lang/String;
    if-nez v2, :cond_22

    .line 1981
    const/16 v3, 0x800

    aget-object v0, v1, v3

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    .line 1982
    .local v0, "c":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    iget v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    .line 1984
    .end local v0    # "c":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    :cond_22
    aput-object p2, v1, p4

    goto :goto_6
.end method


# virtual methods
.method public appendChild(II)V
    .registers 9
    .param p1, "parentIndex"    # I
    .param p2, "childIndex"    # I

    .prologue
    .line 649
    shr-int/lit8 v3, p1, 0xb

    .line 650
    .local v3, "pchunk":I
    and-int/lit16 v4, p1, 0x7ff

    .line 651
    .local v4, "pindex":I
    shr-int/lit8 v0, p2, 0xb

    .line 652
    .local v0, "cchunk":I
    and-int/lit16 v1, p2, 0x7ff

    .line 653
    .local v1, "cindex":I
    iget-object v5, p0, fNodeParent:[[I

    invoke-direct {p0, v5, p1, v0, v1}, setChunkIndex([[IIII)I

    .line 656
    iget-object v5, p0, fNodeLastChild:[[I

    invoke-direct {p0, v5, v3, v4}, getChunkIndex([[III)I

    move-result v2

    .line 657
    .local v2, "olast":I
    iget-object v5, p0, fNodePrevSib:[[I

    invoke-direct {p0, v5, v2, v0, v1}, setChunkIndex([[IIII)I

    .line 660
    iget-object v5, p0, fNodeLastChild:[[I

    invoke-direct {p0, v5, p2, v3, v4}, setChunkIndex([[IIII)I

    .line 662
    return-void
.end method

.method public cloneNode(IZ)I
    .registers 15
    .param p1, "nodeIndex"    # I
    .param p2, "deep"    # Z

    .prologue
    .line 609
    shr-int/lit8 v6, p1, 0xb

    .line 610
    .local v6, "nchunk":I
    and-int/lit16 v7, p1, 0x7ff

    .line 611
    .local v7, "nindex":I
    iget-object v10, p0, fNodeType:[[I

    aget-object v10, v10, v6

    aget v8, v10, v7

    .line 612
    .local v8, "nodeType":I
    int-to-short v10, v8

    invoke-virtual {p0, v10}, createNode(S)I

    move-result v3

    .line 613
    .local v3, "cloneIndex":I
    shr-int/lit8 v0, v3, 0xb

    .line 614
    .local v0, "cchunk":I
    and-int/lit16 v2, v3, 0x7ff

    .line 615
    .local v2, "cindex":I
    iget-object v10, p0, fNodeName:[[Ljava/lang/Object;

    iget-object v11, p0, fNodeName:[[Ljava/lang/Object;

    aget-object v11, v11, v6

    aget-object v11, v11, v7

    invoke-direct {p0, v10, v11, v0, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 616
    iget-object v10, p0, fNodeValue:[[Ljava/lang/Object;

    iget-object v11, p0, fNodeValue:[[Ljava/lang/Object;

    aget-object v11, v11, v6

    aget-object v11, v11, v7

    invoke-direct {p0, v10, v11, v0, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 617
    iget-object v10, p0, fNodeURI:[[Ljava/lang/Object;

    iget-object v11, p0, fNodeURI:[[Ljava/lang/Object;

    aget-object v11, v11, v6

    aget-object v11, v11, v7

    invoke-direct {p0, v10, v11, v0, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 618
    iget-object v10, p0, fNodeExtra:[[I

    aget-object v10, v10, v6

    aget v5, v10, v7

    .line 619
    .local v5, "extraIndex":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4d

    .line 620
    const/4 v10, 0x2

    if-eq v8, v10, :cond_48

    const/4 v10, 0x3

    if-eq v8, v10, :cond_48

    .line 621
    const/4 v10, 0x0

    invoke-virtual {p0, v5, v10}, cloneNode(IZ)I

    move-result v5

    .line 623
    :cond_48
    iget-object v10, p0, fNodeExtra:[[I

    invoke-direct {p0, v10, v5, v0, v2}, setChunkIndex([[IIII)I

    .line 627
    :cond_4d
    if-eqz p2, :cond_58

    .line 628
    const/4 v9, -0x1

    .line 629
    .local v9, "prevIndex":I
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, getLastChild(IZ)I

    move-result v1

    .line 630
    .local v1, "childIndex":I
    :goto_55
    const/4 v10, -0x1

    if-ne v1, v10, :cond_59

    .line 641
    .end local v1    # "childIndex":I
    .end local v9    # "prevIndex":I
    :cond_58
    return v3

    .line 631
    .restart local v1    # "childIndex":I
    .restart local v9    # "prevIndex":I
    :cond_59
    invoke-virtual {p0, v1, p2}, cloneNode(IZ)I

    move-result v4

    .line 632
    .local v4, "clonedChildIndex":I
    invoke-virtual {p0, v3, v4, v9}, insertBefore(III)I

    .line 633
    move v9, v4

    .line 634
    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10}, getRealPrevSibling(IZ)I

    move-result v1

    goto :goto_55
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 10
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrURI"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;
    .param p4, "specified"    # Z

    .prologue
    .line 517
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, createNode(S)I

    move-result v3

    .line 518
    .local v3, "nodeIndex":I
    shr-int/lit8 v0, v3, 0xb

    .line 519
    .local v0, "chunk":I
    and-int/lit16 v2, v3, 0x7ff

    .line 520
    .local v2, "index":I
    iget-object v4, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v0, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 521
    iget-object v4, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p2, v0, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 522
    iget-object v4, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p3, v0, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 523
    if-eqz p4, :cond_22

    const/16 v1, 0x20

    .line 524
    .local v1, "extra":I
    :goto_1c
    iget-object v4, p0, fNodeExtra:[[I

    invoke-direct {p0, v4, v1, v0, v2}, setChunkIndex([[IIII)I

    .line 527
    return v3

    .line 523
    .end local v1    # "extra":I
    :cond_22
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;
    .param p3, "specified"    # Z

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public createDeferredCDATASection(Ljava/lang/String;)I
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 567
    .local v2, "nodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 568
    .local v0, "chunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 569
    .local v1, "index":I
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 572
    return v2
.end method

.method public createDeferredComment(Ljava/lang/String;)I
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 594
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 595
    .local v2, "nodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 596
    .local v0, "chunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 597
    .local v1, "index":I
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 600
    return v2
.end method

.method public createDeferredDocument()I
    .registers 3

    .prologue
    .line 195
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, createNode(S)I

    move-result v0

    .line 196
    .local v0, "nodeIndex":I
    return v0
.end method

.method public createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "rootElementName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;

    .prologue
    .line 204
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 205
    .local v2, "nodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 206
    .local v0, "chunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 209
    .local v1, "index":I
    iget-object v3, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 210
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 211
    iget-object v3, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 214
    return v2
.end method

.method public createDeferredElement(Ljava/lang/String;)I
    .registers 3
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "elementURI"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 401
    .local v2, "elementNodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 402
    .local v0, "elementChunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 403
    .local v1, "elementIndex":I
    iget-object v3, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 404
    iget-object v3, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 407
    return v2
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .registers 8
    .param p1, "elementURI"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/Object;

    .prologue
    .line 374
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 375
    .local v2, "elementNodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 376
    .local v0, "elementChunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 377
    .local v1, "elementIndex":I
    iget-object v3, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 378
    iget-object v3, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 379
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 382
    return v2
.end method

.method public createDeferredElementDefinition(Ljava/lang/String;)I
    .registers 6
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 535
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 536
    .local v2, "nodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 537
    .local v0, "chunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 538
    .local v1, "index":I
    iget-object v3, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 541
    return v2
.end method

.method public createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 18
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .param p5, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, createNode(S)I

    move-result v9

    .line 265
    .local v9, "nodeIndex":I
    shr-int/lit8 v1, v9, 0xb

    .line 266
    .local v1, "chunk":I
    and-int/lit16 v8, v9, 0x7ff

    .line 269
    .local v8, "index":I
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, createNode(S)I

    move-result v6

    .line 270
    .local v6, "extraDataIndex":I
    shr-int/lit8 v2, v6, 0xb

    .line 271
    .local v2, "echunk":I
    and-int/lit16 v4, v6, 0x7ff

    .line 274
    .local v4, "eindex":I
    iget-object v10, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v10, p1, v1, v8}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 275
    iget-object v10, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v10, p2, v1, v8}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 276
    iget-object v10, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v10, p3, v1, v8}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 277
    iget-object v10, p0, fNodeExtra:[[I

    invoke-direct {p0, v10, v6, v1, v8}, setChunkIndex([[IIII)I

    .line 280
    iget-object v10, p0, fNodeName:[[Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-direct {p0, v10, v0, v2, v4}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 282
    iget-object v10, p0, fNodeValue:[[Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v2, v4}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 284
    iget-object v10, p0, fNodeURI:[[Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v2, v4}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 287
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, createNode(S)I

    move-result v7

    .line 288
    .local v7, "extraDataIndex2":I
    shr-int/lit8 v3, v7, 0xb

    .line 289
    .local v3, "echunk2":I
    and-int/lit16 v5, v7, 0x7ff

    .line 291
    .local v5, "eindex2":I
    iget-object v10, p0, fNodeExtra:[[I

    invoke-direct {p0, v10, v7, v2, v4}, setChunkIndex([[IIII)I

    .line 294
    iget-object v10, p0, fNodeName:[[Ljava/lang/Object;

    move-object/from16 v0, p5

    invoke-direct {p0, v10, v0, v3, v5}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 297
    return v9
.end method

.method public createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 355
    .local v2, "nodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 356
    .local v0, "chunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 357
    .local v1, "index":I
    iget-object v3, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 358
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 361
    return v2
.end method

.method public createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "notationName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "baseURI"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xc

    .line 235
    invoke-virtual {p0, v6}, createNode(S)I

    move-result v5

    .line 236
    .local v5, "nodeIndex":I
    shr-int/lit8 v0, v5, 0xb

    .line 237
    .local v0, "chunk":I
    and-int/lit16 v4, v5, 0x7ff

    .line 241
    .local v4, "index":I
    invoke-virtual {p0, v6}, createNode(S)I

    move-result v3

    .line 242
    .local v3, "extraDataIndex":I
    shr-int/lit8 v1, v3, 0xb

    .line 243
    .local v1, "echunk":I
    and-int/lit16 v2, v3, 0x7ff

    .line 246
    .local v2, "eindex":I
    iget-object v6, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p1, v0, v4}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 247
    iget-object v6, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p2, v0, v4}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 248
    iget-object v6, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p3, v0, v4}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 251
    iget-object v6, p0, fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v0, v4}, setChunkIndex([[IIII)I

    .line 252
    iget-object v6, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p4, v1, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 255
    return v5
.end method

.method public createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 580
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 581
    .local v2, "nodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 582
    .local v0, "chunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 583
    .local v1, "index":I
    iget-object v3, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 584
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 586
    return v2
.end method

.method public createDeferredTextNode(Ljava/lang/String;Z)I
    .registers 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ignorableWhitespace"    # Z

    .prologue
    .line 550
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, createNode(S)I

    move-result v2

    .line 551
    .local v2, "nodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 552
    .local v0, "chunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 553
    .local v1, "index":I
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 555
    iget-object v4, p0, fNodeExtra:[[I

    if-eqz p2, :cond_17

    const/4 v3, 0x1

    :goto_13
    invoke-direct {p0, v4, v3, v0, v1}, setChunkIndex([[IIII)I

    .line 558
    return v2

    .line 555
    :cond_17
    const/4 v3, 0x0

    goto :goto_13
.end method

.method protected createNode(S)I
    .registers 6
    .param p1, "nodeType"    # S

    .prologue
    .line 1849
    iget v2, p0, fNodeCount:I

    shr-int/lit8 v0, v2, 0xb

    .line 1850
    .local v0, "chunk":I
    iget v2, p0, fNodeCount:I

    and-int/lit16 v1, v2, 0x7ff

    .line 1851
    .local v1, "index":I
    invoke-virtual {p0, v0}, ensureCapacity(I)V

    .line 1854
    iget-object v2, p0, fNodeType:[[I

    invoke-direct {p0, v2, p1, v0, v1}, setChunkIndex([[IIII)I

    .line 1857
    iget v2, p0, fNodeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, fNodeCount:I

    return v2
.end method

.method protected ensureCapacity(I)V
    .registers 8
    .param p1, "chunk"    # I

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 1779
    iget-object v3, p0, fNodeType:[[I

    if-nez v3, :cond_50

    .line 1781
    new-array v3, v5, [[I

    iput-object v3, p0, fNodeType:[[I

    .line 1782
    new-array v3, v5, [[Ljava/lang/Object;

    iput-object v3, p0, fNodeName:[[Ljava/lang/Object;

    .line 1783
    new-array v3, v5, [[Ljava/lang/Object;

    iput-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    .line 1784
    new-array v3, v5, [[I

    iput-object v3, p0, fNodeParent:[[I

    .line 1785
    new-array v3, v5, [[I

    iput-object v3, p0, fNodeLastChild:[[I

    .line 1786
    new-array v3, v5, [[I

    iput-object v3, p0, fNodePrevSib:[[I

    .line 1787
    new-array v3, v5, [[Ljava/lang/Object;

    iput-object v3, p0, fNodeURI:[[Ljava/lang/Object;

    .line 1788
    new-array v3, v5, [[I

    iput-object v3, p0, fNodeExtra:[[I

    .line 1832
    :cond_27
    :goto_27
    iget-object v3, p0, fNodeType:[[I

    invoke-direct {p0, v3, p1}, createChunk([[II)V

    .line 1833
    iget-object v3, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1}, createChunk([[Ljava/lang/Object;I)V

    .line 1834
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1}, createChunk([[Ljava/lang/Object;I)V

    .line 1835
    iget-object v3, p0, fNodeParent:[[I

    invoke-direct {p0, v3, p1}, createChunk([[II)V

    .line 1836
    iget-object v3, p0, fNodeLastChild:[[I

    invoke-direct {p0, v3, p1}, createChunk([[II)V

    .line 1837
    iget-object v3, p0, fNodePrevSib:[[I

    invoke-direct {p0, v3, p1}, createChunk([[II)V

    .line 1838
    iget-object v3, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1}, createChunk([[Ljava/lang/Object;I)V

    .line 1839
    iget-object v3, p0, fNodeExtra:[[I

    invoke-direct {p0, v3, p1}, createChunk([[II)V

    .line 1842
    :goto_4f
    return-void

    .line 1790
    :cond_50
    iget-object v3, p0, fNodeType:[[I

    array-length v3, v3

    if-gt v3, p1, :cond_a0

    .line 1792
    mul-int/lit8 v2, p1, 0x2

    .line 1794
    .local v2, "newsize":I
    new-array v0, v2, [[I

    .line 1795
    .local v0, "newArray":[[I
    iget-object v3, p0, fNodeType:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1796
    iput-object v0, p0, fNodeType:[[I

    .line 1798
    new-array v1, v2, [[Ljava/lang/Object;

    .line 1799
    .local v1, "newStrArray":[[Ljava/lang/Object;
    iget-object v3, p0, fNodeName:[[Ljava/lang/Object;

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1800
    iput-object v1, p0, fNodeName:[[Ljava/lang/Object;

    .line 1802
    new-array v1, v2, [[Ljava/lang/Object;

    .line 1803
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1804
    iput-object v1, p0, fNodeValue:[[Ljava/lang/Object;

    .line 1806
    new-array v0, v2, [[I

    .line 1807
    iget-object v3, p0, fNodeParent:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1808
    iput-object v0, p0, fNodeParent:[[I

    .line 1810
    new-array v0, v2, [[I

    .line 1811
    iget-object v3, p0, fNodeLastChild:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1812
    iput-object v0, p0, fNodeLastChild:[[I

    .line 1814
    new-array v0, v2, [[I

    .line 1815
    iget-object v3, p0, fNodePrevSib:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1816
    iput-object v0, p0, fNodePrevSib:[[I

    .line 1818
    new-array v1, v2, [[Ljava/lang/Object;

    .line 1819
    iget-object v3, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1820
    iput-object v1, p0, fNodeURI:[[Ljava/lang/Object;

    .line 1822
    new-array v0, v2, [[I

    .line 1823
    iget-object v3, p0, fNodeExtra:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1824
    iput-object v0, p0, fNodeExtra:[[I

    goto :goto_27

    .line 1826
    .end local v0    # "newArray":[[I
    .end local v1    # "newStrArray":[[Ljava/lang/Object;
    .end local v2    # "newsize":I
    :cond_a0
    iget-object v3, p0, fNodeType:[[I

    aget-object v3, v3, p1

    if-eqz v3, :cond_27

    goto :goto_4f
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "elemIndex"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 1317
    if-eq p1, v7, :cond_6

    if-nez p2, :cond_7

    .line 1331
    :cond_6
    :goto_6
    return-object v5

    .line 1320
    :cond_7
    shr-int/lit8 v3, p1, 0xb

    .line 1321
    .local v3, "echunk":I
    and-int/lit16 v4, p1, 0x7ff

    .line 1322
    .local v4, "eindex":I
    iget-object v6, p0, fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v4}, getChunkIndex([[III)I

    move-result v2

    .line 1323
    .local v2, "attrIndex":I
    :goto_11
    if-eq v2, v7, :cond_6

    .line 1324
    shr-int/lit8 v0, v2, 0xb

    .line 1325
    .local v0, "achunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 1326
    .local v1, "aindex":I
    iget-object v6, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, v0, v1}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    if-ne v6, p2, :cond_26

    .line 1327
    iget-object v5, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v5, v0, v1}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1329
    :cond_26
    iget-object v6, p0, fNodePrevSib:[[I

    invoke-direct {p0, v6, v0, v1}, getChunkIndex([[III)I

    move-result v2

    goto :goto_11
.end method

.method public getDeferredEntityBaseURI(I)Ljava/lang/String;
    .registers 5
    .param p1, "entityIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 302
    const/4 v1, -0x1

    if-eq p1, v1, :cond_11

    .line 303
    invoke-virtual {p0, p1, v2}, getNodeExtra(IZ)I

    move-result v0

    .line 304
    .local v0, "extraDataIndex":I
    invoke-virtual {p0, v0, v2}, getNodeExtra(IZ)I

    move-result v0

    .line 305
    invoke-virtual {p0, v0, v2}, getNodeName(IZ)Ljava/lang/String;

    move-result-object v1

    .line 307
    .end local v0    # "extraDataIndex":I
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .registers 2

    .prologue
    .line 179
    invoke-static {}, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild(I)I
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 808
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getLastChild(IZ)I

    move-result v0

    return v0
.end method

.method public getLastChild(IZ)I
    .registers 6
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    const/4 v2, -0x1

    .line 817
    if-ne p1, v2, :cond_4

    .line 823
    :goto_3
    return v2

    .line 821
    :cond_4
    shr-int/lit8 v0, p1, 0xb

    .line 822
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 823
    .local v1, "index":I
    if-eqz p2, :cond_11

    iget-object v2, p0, fNodeLastChild:[[I

    invoke-direct {p0, v2, v0, v1}, clearChunkIndex([[III)I

    move-result v2

    goto :goto_3

    .line 824
    :cond_11
    iget-object v2, p0, fNodeLastChild:[[I

    invoke-direct {p0, v2, v0, v1}, getChunkIndex([[III)I

    move-result v2

    goto :goto_3
.end method

.method getNamespacesEnabled()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, fNamespacesEnabled:Z

    return v0
.end method

.method public getNodeExtra(I)I
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 1273
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getNodeExtra(IZ)I

    move-result v0

    return v0
.end method

.method public getNodeExtra(IZ)I
    .registers 6
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1282
    if-ne p1, v2, :cond_4

    .line 1288
    :goto_3
    return v2

    .line 1286
    :cond_4
    shr-int/lit8 v0, p1, 0xb

    .line 1287
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 1288
    .local v1, "index":I
    if-eqz p2, :cond_11

    iget-object v2, p0, fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, clearChunkIndex([[III)I

    move-result v2

    goto :goto_3

    .line 1289
    :cond_11
    iget-object v2, p0, fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, getChunkIndex([[III)I

    move-result v2

    goto :goto_3
.end method

.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 1518
    const/4 v0, 0x0

    return v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 1109
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getNodeName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    .line 1118
    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    .line 1119
    const/4 v2, 0x0

    .line 1124
    :goto_4
    return-object v2

    .line 1122
    :cond_5
    shr-int/lit8 v0, p1, 0xb

    .line 1123
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 1124
    .local v1, "index":I
    if-eqz p2, :cond_12

    iget-object v2, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1125
    :cond_12
    iget-object v2, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;
    .registers 13
    .param p1, "nodeIndex"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 947
    if-ne p1, v10, :cond_6

    move-object v4, v7

    .line 1099
    :cond_5
    return-object v4

    .line 952
    :cond_6
    shr-int/lit8 v0, p1, 0xb

    .line 953
    .local v0, "chunk":I
    and-int/lit16 v2, p1, 0x7ff

    .line 954
    .local v2, "index":I
    iget-object v6, p0, fNodeType:[[I

    invoke-direct {p0, v6, v0, v2}, getChunkIndex([[III)I

    move-result v5

    .line 955
    .local v5, "type":I
    const/4 v6, 0x3

    if-eq v5, v6, :cond_1b

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1b

    .line 956
    iget-object v6, p0, fNodeType:[[I

    invoke-direct {p0, v6, v0, v2}, clearChunkIndex([[III)I

    .line 960
    :cond_1b
    const/4 v4, 0x0

    .line 961
    .local v4, "node":Lmf/org/apache/xerces/dom/DeferredNode;
    packed-switch v5, :pswitch_data_d0

    .line 1092
    :pswitch_1f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 968
    :pswitch_35
    iget-boolean v6, p0, fNamespacesEnabled:Z

    if-eqz v6, :cond_46

    .line 969
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1098
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    :cond_3e
    :goto_3e
    if-nez v4, :cond_5

    .line 1103
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 971
    :cond_46
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredAttrImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 973
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto :goto_3e

    .line 977
    :pswitch_4c
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 978
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto :goto_3e

    .line 982
    :pswitch_52
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredCommentImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredCommentImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 983
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto :goto_3e

    .line 995
    :pswitch_58
    move-object v4, p0

    .line 996
    goto :goto_3e

    .line 1000
    :pswitch_5a
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    move-object v6, v4

    .line 1002
    check-cast v6, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v6, p0, docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_3e

    .line 1013
    :pswitch_65
    iget-boolean v6, p0, fNamespacesEnabled:Z

    if-eqz v6, :cond_a0

    .line 1014
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1021
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    :goto_6e
    iget-object v6, p0, fIdElement:[I

    if-eqz v6, :cond_3e

    .line 1022
    iget-object v6, p0, fIdElement:[I

    const/4 v8, 0x0

    .line 1023
    iget v9, p0, fIdCount:I

    add-int/lit8 v9, v9, -0x1

    .line 1022
    invoke-static {v6, v8, v9, p1}, binarySearch([IIII)I

    move-result v1

    .line 1024
    .local v1, "idIndex":I
    :goto_7d
    if-eq v1, v10, :cond_3e

    .line 1033
    iget-object v6, p0, fIdName:[Ljava/lang/String;

    aget-object v3, v6, v1

    .line 1034
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_8f

    move-object v6, v4

    .line 1039
    check-cast v6, Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v3, v6}, putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    .line 1040
    iget-object v6, p0, fIdName:[Ljava/lang/String;

    aput-object v7, v6, v1

    .line 1045
    :cond_8f
    add-int/lit8 v6, v1, 0x1

    iget v8, p0, fIdCount:I

    if-ge v6, v8, :cond_a6

    .line 1046
    iget-object v6, p0, fIdElement:[I

    add-int/lit8 v8, v1, 0x1

    aget v6, v6, v8

    if-ne v6, p1, :cond_a6

    .line 1047
    add-int/lit8 v1, v1, 0x1

    .line 1048
    goto :goto_7d

    .line 1016
    .end local v1    # "idIndex":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_a0
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredElementImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto :goto_6e

    .line 1050
    .restart local v1    # "idIndex":I
    .restart local v3    # "name":Ljava/lang/String;
    :cond_a6
    const/4 v1, -0x1

    goto :goto_7d

    .line 1058
    .end local v1    # "idIndex":I
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_a8
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredEntityImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1059
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto :goto_3e

    .line 1063
    :pswitch_ae
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1064
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto :goto_3e

    .line 1068
    :pswitch_b4
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredNotationImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1069
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto :goto_3e

    .line 1073
    :pswitch_ba
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1074
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto/16 :goto_3e

    .line 1078
    :pswitch_c1
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredTextImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredTextImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1079
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto/16 :goto_3e

    .line 1087
    :pswitch_c8
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;

    .end local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1088
    .restart local v4    # "node":Lmf/org/apache/xerces/dom/DeferredNode;
    goto/16 :goto_3e

    .line 961
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_65
        :pswitch_35
        :pswitch_c1
        :pswitch_4c
        :pswitch_ae
        :pswitch_a8
        :pswitch_ba
        :pswitch_52
        :pswitch_58
        :pswitch_5a
        :pswitch_1f
        :pswitch_b4
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_c8
    .end packed-switch
.end method

.method public getNodeType(I)S
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 1295
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getNodeType(IZ)S

    move-result v0

    return v0
.end method

.method public getNodeType(IZ)S
    .registers 6
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1304
    if-ne p1, v2, :cond_4

    .line 1310
    :goto_3
    return v2

    .line 1308
    :cond_4
    shr-int/lit8 v0, p1, 0xb

    .line 1309
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 1310
    .local v1, "index":I
    if-eqz p2, :cond_12

    iget-object v2, p0, fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, clearChunkIndex([[III)I

    move-result v2

    int-to-short v2, v2

    goto :goto_3

    .line 1311
    :cond_12
    iget-object v2, p0, fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, getChunkIndex([[III)I

    move-result v2

    int-to-short v2, v2

    goto :goto_3
.end method

.method public getNodeURI(I)Ljava/lang/String;
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 1336
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getNodeURI(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeURI(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    .line 1345
    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    .line 1346
    const/4 v2, 0x0

    .line 1351
    :goto_4
    return-object v2

    .line 1349
    :cond_5
    shr-int/lit8 v0, p1, 0xb

    .line 1350
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 1351
    .local v1, "index":I
    if-eqz p2, :cond_12

    iget-object v2, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1352
    :cond_12
    iget-object v2, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 1222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getNodeValue(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    .line 1257
    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    .line 1258
    const/4 v2, 0x0

    .line 1263
    :goto_4
    return-object v2

    .line 1261
    :cond_5
    shr-int/lit8 v0, p1, 0xb

    .line 1262
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 1263
    .local v1, "index":I
    if-eqz p2, :cond_12

    iget-object v2, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1264
    :cond_12
    iget-object v2, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public getNodeValueString(I)Ljava/lang/String;
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 1131
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValueString(IZ)Ljava/lang/String;
    .registers 16
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1140
    if-ne p1, v10, :cond_8

    move-object v7, v8

    .line 1214
    :cond_7
    :goto_7
    return-object v7

    .line 1144
    :cond_8
    shr-int/lit8 v1, p1, 0xb

    .line 1145
    .local v1, "chunk":I
    and-int/lit16 v4, p1, 0x7ff

    .line 1146
    .local v4, "index":I
    if-eqz p2, :cond_18

    iget-object v9, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v9, v1, v4}, clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    .line 1148
    .local v7, "value":Ljava/lang/String;
    :goto_14
    if-nez v7, :cond_1f

    move-object v7, v8

    .line 1149
    goto :goto_7

    .line 1147
    .end local v7    # "value":Ljava/lang/String;
    :cond_18
    iget-object v9, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v9, v1, v4}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    .line 1152
    .restart local v7    # "value":Ljava/lang/String;
    :cond_1f
    iget-object v8, p0, fNodeType:[[I

    invoke-direct {p0, v8, v1, v4}, getChunkIndex([[III)I

    move-result v6

    .line 1153
    .local v6, "type":I
    if-ne v6, v12, :cond_81

    .line 1154
    invoke-virtual {p0, p1}, getRealPrevSibling(I)I

    move-result v5

    .line 1155
    .local v5, "prevSib":I
    if-eq v5, v10, :cond_7

    .line 1156
    invoke-virtual {p0, v5, v11}, getNodeType(IZ)S

    move-result v8

    if-ne v8, v12, :cond_7

    .line 1160
    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_38
    shr-int/lit8 v1, v5, 0xb

    .line 1165
    and-int/lit16 v4, v5, 0x7ff

    .line 1166
    iget-object v8, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v8, v1, v4}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    .line 1167
    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v8, p0, fNodePrevSib:[[I

    invoke-direct {p0, v8, v1, v4}, getChunkIndex([[III)I

    move-result v5

    .line 1169
    if-ne v5, v10, :cond_6a

    .line 1174
    :goto_4f
    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1177
    .local v2, "chunkCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_57
    if-gez v3, :cond_71

    .line 1181
    iget-object v8, p0, fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1182
    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1183
    iget-object v8, p0, fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_7

    .line 1172
    .end local v2    # "chunkCount":I
    .end local v3    # "i":I
    :cond_6a
    invoke-virtual {p0, v5, v11}, getNodeType(IZ)S

    move-result v8

    if-eq v8, v12, :cond_38

    goto :goto_4f

    .line 1178
    .restart local v2    # "chunkCount":I
    .restart local v3    # "i":I
    :cond_71
    iget-object v9, p0, fBufferStr:Ljava/lang/StringBuffer;

    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1177
    add-int/lit8 v3, v3, -0x1

    goto :goto_57

    .line 1187
    .end local v2    # "chunkCount":I
    .end local v3    # "i":I
    .end local v5    # "prevSib":I
    :cond_81
    const/4 v8, 0x4

    if-ne v6, v8, :cond_7

    .line 1189
    invoke-virtual {p0, p1, v11}, getLastChild(IZ)I

    move-result v0

    .line 1190
    .local v0, "child":I
    if-eq v0, v10, :cond_7

    .line 1192
    iget-object v8, p0, fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1193
    :goto_8f
    if-ne v0, v10, :cond_ad

    .line 1203
    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3    # "i":I
    :goto_99
    if-gez v3, :cond_c3

    .line 1207
    iget-object v8, p0, fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1208
    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1209
    iget-object v8, p0, fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_7

    .line 1196
    .end local v3    # "i":I
    :cond_ad
    shr-int/lit8 v1, v0, 0xb

    .line 1197
    and-int/lit16 v4, v0, 0x7ff

    .line 1198
    iget-object v8, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v8, v1, v4}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    .line 1199
    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v8, p0, fNodePrevSib:[[I

    invoke-direct {p0, v8, v1, v4}, getChunkIndex([[III)I

    move-result v0

    goto :goto_8f

    .line 1204
    .restart local v3    # "i":I
    :cond_c3
    iget-object v9, p0, fBufferStr:Ljava/lang/StringBuffer;

    iget-object v8, p0, fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1203
    add-int/lit8 v3, v3, -0x1

    goto :goto_99
.end method

.method public getParentNode(I)I
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getParentNode(IZ)I

    move-result v0

    return v0
.end method

.method public getParentNode(IZ)I
    .registers 6
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    const/4 v2, -0x1

    .line 795
    if-ne p1, v2, :cond_4

    .line 801
    :goto_3
    return v2

    .line 799
    :cond_4
    shr-int/lit8 v0, p1, 0xb

    .line 800
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 801
    .local v1, "index":I
    if-eqz p2, :cond_11

    iget-object v2, p0, fNodeParent:[[I

    invoke-direct {p0, v2, v0, v1}, clearChunkIndex([[III)I

    move-result v2

    goto :goto_3

    .line 802
    :cond_11
    iget-object v2, p0, fNodeParent:[[I

    invoke-direct {p0, v2, v0, v1}, getChunkIndex([[III)I

    move-result v2

    goto :goto_3
.end method

.method public getPrevSibling(I)I
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getPrevSibling(IZ)I

    move-result v0

    return v0
.end method

.method public getPrevSibling(IZ)I
    .registers 9
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v3, -0x1

    .line 842
    if-ne p1, v3, :cond_5

    .line 864
    :goto_4
    return v3

    .line 846
    :cond_5
    shr-int/lit8 v0, p1, 0xb

    .line 847
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 848
    .local v1, "index":I
    iget-object v4, p0, fNodeType:[[I

    invoke-direct {p0, v4, v0, v1}, getChunkIndex([[III)I

    move-result v2

    .line 849
    .local v2, "type":I
    if-ne v2, v5, :cond_28

    .line 851
    :cond_11
    iget-object v4, p0, fNodePrevSib:[[I

    invoke-direct {p0, v4, v0, v1}, getChunkIndex([[III)I

    move-result p1

    .line 852
    if-ne p1, v3, :cond_1b

    :goto_19
    move v3, p1

    .line 864
    goto :goto_4

    .line 855
    :cond_1b
    shr-int/lit8 v0, p1, 0xb

    .line 856
    and-int/lit16 v1, p1, 0x7ff

    .line 857
    iget-object v4, p0, fNodeType:[[I

    invoke-direct {p0, v4, v0, v1}, getChunkIndex([[III)I

    move-result v2

    .line 858
    if-eq v2, v5, :cond_11

    goto :goto_19

    .line 861
    :cond_28
    iget-object v3, p0, fNodePrevSib:[[I

    invoke-direct {p0, v3, v0, v1}, getChunkIndex([[III)I

    move-result p1

    goto :goto_19
.end method

.method public getRealPrevSibling(I)I
    .registers 3
    .param p1, "nodeIndex"    # I

    .prologue
    .line 874
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, getRealPrevSibling(IZ)I

    move-result v0

    return v0
.end method

.method public getRealPrevSibling(IZ)I
    .registers 6
    .param p1, "nodeIndex"    # I
    .param p2, "free"    # Z

    .prologue
    const/4 v2, -0x1

    .line 883
    if-ne p1, v2, :cond_4

    .line 889
    :goto_3
    return v2

    .line 887
    :cond_4
    shr-int/lit8 v0, p1, 0xb

    .line 888
    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 889
    .local v1, "index":I
    if-eqz p2, :cond_11

    iget-object v2, p0, fNodePrevSib:[[I

    invoke-direct {p0, v2, v0, v1}, clearChunkIndex([[III)I

    move-result v2

    goto :goto_3

    .line 890
    :cond_11
    iget-object v2, p0, fNodePrevSib:[[I

    invoke-direct {p0, v2, v0, v1}, getChunkIndex([[III)I

    move-result v2

    goto :goto_3
.end method

.method public getTypeInfo(I)Ljava/lang/Object;
    .registers 9
    .param p1, "nodeIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 1231
    const/4 v5, -0x1

    if-ne p1, v5, :cond_6

    move-object v3, v4

    .line 1248
    :cond_5
    :goto_5
    return-object v3

    .line 1235
    :cond_6
    shr-int/lit8 v1, p1, 0xb

    .line 1236
    .local v1, "chunk":I
    and-int/lit16 v2, p1, 0x7ff

    .line 1239
    .local v2, "index":I
    iget-object v5, p0, fNodeValue:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    if-eqz v5, :cond_37

    iget-object v5, p0, fNodeValue:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    aget-object v3, v5, v2

    .line 1240
    .local v3, "value":Ljava/lang/Object;
    :goto_16
    if-eqz v3, :cond_5

    .line 1241
    iget-object v5, p0, fNodeValue:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v4, v5, v2

    .line 1242
    iget-object v5, p0, fNodeValue:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    const/16 v6, 0x800

    aget-object v0, v5, v6

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    .line 1243
    .local v0, "c":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    iget v5, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    .line 1244
    iget v5, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v5, :cond_5

    .line 1245
    iget-object v5, p0, fNodeValue:[[Ljava/lang/Object;

    aput-object v4, v5, v1

    goto :goto_5

    .end local v0    # "c":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_37
    move-object v3, v4

    .line 1239
    goto :goto_16
.end method

.method public insertBefore(III)I
    .registers 10
    .param p1, "parentIndex"    # I
    .param p2, "newChildIndex"    # I
    .param p3, "refChildIndex"    # I

    .prologue
    .line 757
    const/4 v5, -0x1

    if-ne p3, v5, :cond_7

    .line 758
    invoke-virtual {p0, p1, p2}, appendChild(II)V

    .line 770
    :goto_6
    return p2

    .line 762
    :cond_7
    shr-int/lit8 v0, p2, 0xb

    .line 763
    .local v0, "nchunk":I
    and-int/lit16 v1, p2, 0x7ff

    .line 764
    .local v1, "nindex":I
    shr-int/lit8 v3, p3, 0xb

    .line 765
    .local v3, "rchunk":I
    and-int/lit16 v4, p3, 0x7ff

    .line 766
    .local v4, "rindex":I
    iget-object v5, p0, fNodePrevSib:[[I

    invoke-direct {p0, v5, v3, v4}, getChunkIndex([[III)I

    move-result v2

    .line 767
    .local v2, "previousIndex":I
    iget-object v5, p0, fNodePrevSib:[[I

    invoke-direct {p0, v5, p2, v3, v4}, setChunkIndex([[IIII)I

    .line 768
    iget-object v5, p0, fNodePrevSib:[[I

    invoke-direct {p0, v5, v2, v0, v1}, setChunkIndex([[IIII)I

    goto :goto_6
.end method

.method public lookupElementDefinition(Ljava/lang/String;)I
    .registers 9
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 901
    iget v5, p0, fNodeCount:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_38

    .line 904
    const/4 v0, -0x1

    .line 905
    .local v0, "docTypeIndex":I
    const/4 v2, 0x0

    .line 906
    .local v2, "nchunk":I
    const/4 v3, 0x0

    .line 907
    .local v3, "nindex":I
    iget-object v5, p0, fNodeLastChild:[[I

    invoke-direct {p0, v5, v2, v3}, getChunkIndex([[III)I

    move-result v1

    .line 908
    .local v1, "index":I
    :goto_f
    if-ne v1, v4, :cond_15

    .line 920
    :goto_11
    if-ne v0, v4, :cond_2c

    move v1, v4

    .line 939
    .end local v0    # "docTypeIndex":I
    .end local v1    # "index":I
    .end local v2    # "nchunk":I
    .end local v3    # "nindex":I
    :cond_14
    :goto_14
    return v1

    .line 911
    .restart local v0    # "docTypeIndex":I
    .restart local v1    # "index":I
    .restart local v2    # "nchunk":I
    .restart local v3    # "nindex":I
    :cond_15
    shr-int/lit8 v2, v1, 0xb

    .line 912
    and-int/lit16 v3, v1, 0x7ff

    .line 913
    iget-object v5, p0, fNodeType:[[I

    invoke-direct {p0, v5, v2, v3}, getChunkIndex([[III)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_25

    .line 914
    move v0, v1

    .line 915
    goto :goto_11

    .line 909
    :cond_25
    iget-object v5, p0, fNodePrevSib:[[I

    invoke-direct {p0, v5, v2, v3}, getChunkIndex([[III)I

    move-result v1

    goto :goto_f

    .line 923
    :cond_2c
    shr-int/lit8 v2, v0, 0xb

    .line 924
    and-int/lit16 v3, v0, 0x7ff

    .line 925
    iget-object v5, p0, fNodeLastChild:[[I

    invoke-direct {p0, v5, v2, v3}, getChunkIndex([[III)I

    move-result v1

    .line 926
    :goto_36
    if-ne v1, v4, :cond_3a

    .end local v0    # "docTypeIndex":I
    .end local v1    # "index":I
    .end local v2    # "nchunk":I
    .end local v3    # "nindex":I
    :cond_38
    move v1, v4

    .line 939
    goto :goto_14

    .line 929
    .restart local v0    # "docTypeIndex":I
    .restart local v1    # "index":I
    .restart local v2    # "nchunk":I
    .restart local v3    # "nindex":I
    :cond_3a
    shr-int/lit8 v2, v1, 0xb

    .line 930
    and-int/lit16 v3, v1, 0x7ff

    .line 931
    iget-object v5, p0, fNodeType:[[I

    invoke-direct {p0, v5, v2, v3}, getChunkIndex([[III)I

    move-result v5

    .line 932
    const/16 v6, 0x15

    .line 931
    if-ne v5, v6, :cond_50

    .line 933
    iget-object v5, p0, fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v5, v2, v3}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    if-eq v5, p1, :cond_14

    .line 927
    :cond_50
    iget-object v5, p0, fNodePrevSib:[[I

    invoke-direct {p0, v5, v2, v3}, getChunkIndex([[III)I

    move-result v1

    goto :goto_36
.end method

.method public print()V
    .registers 1

    .prologue
    .line 1510
    return-void
.end method

.method public putIdentifier(Ljava/lang/String;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementNodeIndex"    # I

    .prologue
    const/16 v3, 0x40

    const/4 v4, 0x0

    .line 1370
    iget-object v2, p0, fIdName:[Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1371
    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, fIdName:[Ljava/lang/String;

    .line 1372
    new-array v2, v3, [I

    iput-object v2, p0, fIdElement:[I

    .line 1376
    :cond_f
    iget v2, p0, fIdCount:I

    iget-object v3, p0, fIdName:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_31

    .line 1377
    iget v2, p0, fIdCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1378
    .local v1, "idName":[Ljava/lang/String;
    iget-object v2, p0, fIdName:[Ljava/lang/String;

    iget v3, p0, fIdCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1379
    iput-object v1, p0, fIdName:[Ljava/lang/String;

    .line 1381
    array-length v2, v1

    new-array v0, v2, [I

    .line 1382
    .local v0, "idElement":[I
    iget-object v2, p0, fIdElement:[I

    iget v3, p0, fIdCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1383
    iput-object v0, p0, fIdElement:[I

    .line 1387
    .end local v0    # "idElement":[I
    .end local v1    # "idName":[Ljava/lang/String;
    :cond_31
    iget-object v2, p0, fIdName:[Ljava/lang/String;

    iget v3, p0, fIdCount:I

    aput-object p1, v2, v3

    .line 1388
    iget-object v2, p0, fIdElement:[I

    iget v3, p0, fIdCount:I

    aput p2, v2, v3

    .line 1389
    iget v2, p0, fIdCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, fIdCount:I

    .line 1391
    return-void
.end method

.method public setAsLastChild(II)V
    .registers 6
    .param p1, "parentIndex"    # I
    .param p2, "childIndex"    # I

    .prologue
    .line 776
    shr-int/lit8 v0, p1, 0xb

    .line 777
    .local v0, "pchunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 778
    .local v1, "pindex":I
    iget-object v2, p0, fNodeLastChild:[[I

    invoke-direct {p0, v2, p2, v0, v1}, setChunkIndex([[IIII)I

    .line 779
    return-void
.end method

.method public setAttributeNode(II)I
    .registers 25
    .param p1, "elemIndex"    # I
    .param p2, "attrIndex"    # I

    .prologue
    .line 667
    shr-int/lit8 v11, p1, 0xb

    .line 668
    .local v11, "echunk":I
    move/from16 v0, p1

    and-int/lit16 v12, v0, 0x7ff

    .line 669
    .local v12, "eindex":I
    shr-int/lit8 v5, p2, 0xb

    .line 670
    .local v5, "achunk":I
    move/from16 v0, p2

    and-int/lit16 v6, v0, 0x7ff

    .line 673
    .local v6, "aindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeName:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    .line 674
    .local v9, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeExtra:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11, v12}, getChunkIndex([[III)I

    move-result v16

    .line 675
    .local v16, "oldAttrIndex":I
    const/4 v13, -0x1

    .line 676
    .local v13, "nextIndex":I
    const/4 v14, -0x1

    .line 677
    .local v14, "oachunk":I
    const/4 v15, -0x1

    .line 678
    .local v15, "oaindex":I
    :goto_2b
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_112

    .line 690
    :cond_33
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_e5

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, getChunkIndex([[III)I

    move-result v20

    .line 694
    .local v20, "prevIndex":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_140

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeExtra:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v11, v12}, setChunkIndex([[IIII)I

    .line 704
    :goto_5e
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeType:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, clearChunkIndex([[III)I

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeName:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeParent:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, clearChunkIndex([[III)I

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, clearChunkIndex([[III)I

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeLastChild:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, clearChunkIndex([[III)I

    move-result v10

    .line 711
    .local v10, "attrTextIndex":I
    shr-int/lit8 v7, v10, 0xb

    .line 712
    .local v7, "atchunk":I
    and-int/lit16 v8, v10, 0x7ff

    .line 713
    .local v8, "atindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeType:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, clearChunkIndex([[III)I

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeParent:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, clearChunkIndex([[III)I

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeLastChild:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, clearChunkIndex([[III)I

    .line 720
    .end local v7    # "atchunk":I
    .end local v8    # "atindex":I
    .end local v10    # "attrTextIndex":I
    .end local v20    # "prevIndex":I
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeExtra:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11, v12}, getChunkIndex([[III)I

    move-result v20

    .line 721
    .restart local v20    # "prevIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeExtra:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11, v12}, setChunkIndex([[IIII)I

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v5, v6}, setChunkIndex([[IIII)I

    .line 725
    return v16

    .line 679
    .end local v20    # "prevIndex":I
    :cond_112
    shr-int/lit8 v14, v16, 0xb

    .line 680
    move/from16 v0, v16

    and-int/lit16 v15, v0, 0x7ff

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeName:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v17

    .line 682
    .local v17, "oldAttrName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_33

    .line 685
    move/from16 v13, v16

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, getChunkIndex([[III)I

    move-result v16

    goto/16 :goto_2b

    .line 698
    .end local v17    # "oldAttrName":Ljava/lang/String;
    .restart local v20    # "prevIndex":I
    :cond_140
    shr-int/lit8 v18, v13, 0xb

    .line 699
    .local v18, "pchunk":I
    and-int/lit16 v0, v13, 0x7ff

    move/from16 v19, v0

    .line 700
    .local v19, "pindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, setChunkIndex([[IIII)I

    goto/16 :goto_5e
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 13
    .param p1, "elementNodeIndex"    # I
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrURI"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;
    .param p5, "specified"    # Z

    .prologue
    .line 479
    invoke-virtual {p0, p2, p3, p4, p5}, createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 481
    .local v2, "attrNodeIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 482
    .local v0, "attrChunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 484
    .local v1, "attrIndex":I
    iget-object v6, p0, fNodeParent:[[I

    invoke-direct {p0, v6, p1, v0, v1}, setChunkIndex([[IIII)I

    .line 486
    shr-int/lit8 v3, p1, 0xb

    .line 487
    .local v3, "elementChunk":I
    and-int/lit16 v4, p1, 0x7ff

    .line 490
    .local v4, "elementIndex":I
    iget-object v6, p0, fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v4}, getChunkIndex([[III)I

    move-result v5

    .line 492
    .local v5, "lastAttrNodeIndex":I
    if-eqz v5, :cond_1e

    .line 494
    iget-object v6, p0, fNodePrevSib:[[I

    invoke-direct {p0, v6, v5, v0, v1}, setChunkIndex([[IIII)I

    .line 498
    :cond_1e
    iget-object v6, p0, fNodeExtra:[[I

    invoke-direct {p0, v6, v2, v3, v4}, setChunkIndex([[IIII)I

    .line 502
    return v2
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I
    .registers 25
    .param p1, "elementNodeIndex"    # I
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrURI"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;
    .param p5, "specified"    # Z
    .param p6, "id"    # Z
    .param p7, "type"    # Ljava/lang/Object;

    .prologue
    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v7

    .line 433
    .local v7, "attrNodeIndex":I
    shr-int/lit8 v5, v7, 0xb

    .line 434
    .local v5, "attrChunk":I
    and-int/lit16 v6, v7, 0x7ff

    .line 436
    .local v6, "attrIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeParent:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v5, v6}, setChunkIndex([[IIII)I

    .line 438
    shr-int/lit8 v10, p1, 0xb

    .line 439
    .local v10, "elementChunk":I
    move/from16 v0, p1

    and-int/lit16 v11, v0, 0x7ff

    .line 442
    .local v11, "elementIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeExtra:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v10, v11}, getChunkIndex([[III)I

    move-result v14

    .line 443
    .local v14, "lastAttrNodeIndex":I
    if-eqz v14, :cond_44

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, fNodePrevSib:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14, v5, v6}, setChunkIndex([[IIII)I

    .line 448
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeExtra:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7, v10, v11}, setChunkIndex([[IIII)I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeExtra:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, getChunkIndex([[III)I

    move-result v12

    .line 451
    .local v12, "extra":I
    if-eqz p6, :cond_85

    .line 452
    or-int/lit16 v12, v12, 0x200

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeExtra:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12, v5, v6}, setChunkIndex([[IIII)I

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v15

    .line 455
    .local v15, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v15, v1}, putIdentifier(Ljava/lang/String;I)V

    .line 458
    .end local v15    # "value":Ljava/lang/String;
    :cond_85
    if-eqz p7, :cond_b1

    .line 459
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, createNode(S)I

    move-result v13

    .line 460
    .local v13, "extraDataIndex":I
    shr-int/lit8 v8, v13, 0xb

    .line 461
    .local v8, "echunk":I
    and-int/lit16 v9, v13, 0x7ff

    .line 463
    .local v9, "eindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeLastChild:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v5, v6}, setChunkIndex([[IIII)I

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2, v8, v9}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 468
    .end local v8    # "echunk":I
    .end local v9    # "eindex":I
    .end local v13    # "extraDataIndex":I
    :cond_b1
    return v7
.end method

.method public setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "currentEntityDecl"    # I
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 313
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, getNodeExtra(IZ)I

    move-result v0

    .line 314
    .local v0, "eNodeIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_16

    .line 315
    shr-int/lit8 v1, v0, 0xb

    .line 316
    .local v1, "echunk":I
    and-int/lit16 v2, v0, 0x7ff

    .line 317
    .local v2, "eindex":I
    iget-object v3, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 318
    iget-object v3, p0, fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v1, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 320
    .end local v1    # "echunk":I
    .end local v2    # "eindex":I
    :cond_16
    return-void
.end method

.method public setIdAttribute(I)V
    .registers 6
    .param p1, "attrIndex"    # I

    .prologue
    .line 747
    shr-int/lit8 v0, p1, 0xb

    .line 748
    .local v0, "chunk":I
    and-int/lit16 v2, p1, 0x7ff

    .line 749
    .local v2, "index":I
    iget-object v3, p0, fNodeExtra:[[I

    invoke-direct {p0, v3, v0, v2}, getChunkIndex([[III)I

    move-result v1

    .line 750
    .local v1, "extra":I
    or-int/lit16 v1, v1, 0x200

    .line 751
    iget-object v3, p0, fNodeExtra:[[I

    invoke-direct {p0, v3, v1, v0, v2}, setChunkIndex([[IIII)I

    .line 752
    return-void
.end method

.method public setIdAttributeNode(II)V
    .registers 8
    .param p1, "elemIndex"    # I
    .param p2, "attrIndex"    # I

    .prologue
    .line 733
    shr-int/lit8 v0, p2, 0xb

    .line 734
    .local v0, "chunk":I
    and-int/lit16 v2, p2, 0x7ff

    .line 735
    .local v2, "index":I
    iget-object v4, p0, fNodeExtra:[[I

    invoke-direct {p0, v4, v0, v2}, getChunkIndex([[III)I

    move-result v1

    .line 736
    .local v1, "extra":I
    or-int/lit16 v1, v1, 0x200

    .line 737
    iget-object v4, p0, fNodeExtra:[[I

    invoke-direct {p0, v4, v1, v0, v2}, setChunkIndex([[IIII)I

    .line 739
    iget-object v4, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, v0, v2}, getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, putIdentifier(Ljava/lang/String;I)V

    .line 741
    return-void
.end method

.method public setInputEncoding(ILjava/lang/String;)V
    .registers 8
    .param p1, "currentEntityDecl"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 339
    invoke-virtual {p0, p1, v4}, getNodeExtra(IZ)I

    move-result v3

    .line 341
    .local v3, "nodeIndex":I
    invoke-virtual {p0, v3, v4}, getNodeExtra(IZ)I

    move-result v2

    .line 343
    .local v2, "extraDataIndex":I
    shr-int/lit8 v0, v2, 0xb

    .line 344
    .local v0, "echunk":I
    and-int/lit16 v1, v2, 0x7ff

    .line 346
    .local v1, "eindex":I
    iget-object v4, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p2, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setInternalSubset(ILjava/lang/String;)V
    .registers 9
    .param p1, "doctypeIndex"    # I
    .param p2, "subset"    # Ljava/lang/String;

    .prologue
    .line 219
    shr-int/lit8 v0, p1, 0xb

    .line 220
    .local v0, "chunk":I
    and-int/lit16 v4, p1, 0x7ff

    .line 223
    .local v4, "index":I
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, createNode(S)I

    move-result v3

    .line 224
    .local v3, "extraDataIndex":I
    shr-int/lit8 v1, v3, 0xb

    .line 225
    .local v1, "echunk":I
    and-int/lit16 v2, v3, 0x7ff

    .line 226
    .local v2, "eindex":I
    iget-object v5, p0, fNodeExtra:[[I

    invoke-direct {p0, v5, v3, v0, v4}, setChunkIndex([[IIII)I

    .line 227
    iget-object v5, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v5, p2, v1, v2}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 228
    return-void
.end method

.method setNamespacesEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, fNamespacesEnabled:Z

    .line 189
    return-void
.end method

.method public setTypeInfo(ILjava/lang/Object;)V
    .registers 6
    .param p1, "elementNodeIndex"    # I
    .param p2, "type"    # Ljava/lang/Object;

    .prologue
    .line 324
    shr-int/lit8 v0, p1, 0xb

    .line 325
    .local v0, "elementChunk":I
    and-int/lit16 v1, p1, 0x7ff

    .line 326
    .local v1, "elementIndex":I
    iget-object v2, p0, fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p2, v0, v1}, setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 327
    return-void
.end method

.method protected synchronizeChildren()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1610
    invoke-virtual {p0}, needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1611
    invoke-virtual {p0}, synchronizeData()V

    .line 1617
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v6

    if-nez v6, :cond_12

    .line 1669
    :goto_11
    return-void

    .line 1623
    :cond_12
    iget-boolean v4, p0, mutationEvents:Z

    .line 1624
    .local v4, "orig":Z
    iput-boolean v7, p0, mutationEvents:Z

    .line 1627
    invoke-virtual {p0, v7}, needsSyncChildren(Z)V

    .line 1629
    invoke-virtual {p0, v7}, getNodeType(I)S

    .line 1632
    const/4 v0, 0x0

    .line 1633
    .local v0, "first":Lmf/org/apache/xerces/dom/ChildNode;
    const/4 v2, 0x0

    .line 1634
    .local v2, "last":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {p0, v7}, getLastChild(I)I

    move-result v1

    .line 1635
    .local v1, "index":I
    :goto_22
    const/4 v6, -0x1

    if-ne v1, v6, :cond_32

    .line 1660
    if-eqz v0, :cond_2f

    .line 1661
    iput-object v0, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1662
    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 1663
    invoke-virtual {p0, v2}, lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    .line 1667
    :cond_2f
    iput-boolean v4, p0, mutationEvents:Z

    goto :goto_11

    .line 1638
    :cond_32
    invoke-virtual {p0, v1}, getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1639
    .local v3, "node":Lmf/org/apache/xerces/dom/ChildNode;
    if-nez v2, :cond_52

    .line 1640
    move-object v2, v3

    .line 1645
    :goto_3b
    iput-object p0, v3, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1646
    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 1647
    iput-object v0, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1648
    move-object v0, v3

    .line 1651
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    .line 1652
    .local v5, "type":I
    if-ne v5, v8, :cond_55

    .line 1653
    check-cast v3, Lmf/org/apache/xerces/dom/ElementImpl;

    .end local v3    # "node":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v3, p0, docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 1636
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v1}, getPrevSibling(I)I

    move-result v1

    goto :goto_22

    .line 1643
    .end local v5    # "type":I
    .restart local v3    # "node":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_52
    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_3b

    .line 1655
    .restart local v5    # "type":I
    :cond_55
    const/16 v6, 0xa

    if-ne v5, v6, :cond_4d

    .line 1656
    check-cast v3, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .end local v3    # "node":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v3, p0, docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_4d
.end method

.method protected final synchronizeChildren(Lmf/org/apache/xerces/dom/AttrImpl;I)V
    .registers 13
    .param p1, "a"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1682
    invoke-virtual {p0}, getMutationEvents()Z

    move-result v5

    .line 1683
    .local v5, "orig":Z
    invoke-virtual {p0, v7}, setMutationEvents(Z)V

    .line 1686
    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    .line 1690
    invoke-virtual {p0, p2}, getLastChild(I)I

    move-result v2

    .line 1691
    .local v2, "last":I
    invoke-virtual {p0, v2}, getPrevSibling(I)I

    move-result v6

    .line 1692
    .local v6, "prev":I
    if-ne v6, v9, :cond_24

    .line 1693
    invoke-virtual {p0, p2}, getNodeValueString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 1694
    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    .line 1723
    :goto_20
    invoke-virtual {p0, v5}, setMutationEvents(Z)V

    .line 1725
    return-void

    .line 1697
    :cond_24
    const/4 v0, 0x0

    .line 1698
    .local v0, "firstNode":Lmf/org/apache/xerces/dom/ChildNode;
    const/4 v3, 0x0

    .line 1699
    .local v3, "lastNode":Lmf/org/apache/xerces/dom/ChildNode;
    move v1, v2

    .local v1, "index":I
    :goto_27
    if-ne v1, v9, :cond_37

    .line 1714
    if-eqz v3, :cond_33

    .line 1715
    iput-object v0, p1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 1716
    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 1717
    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    .line 1719
    :cond_33
    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    goto :goto_20

    .line 1702
    :cond_37
    invoke-virtual {p0, v1}, getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1703
    .local v4, "node":Lmf/org/apache/xerces/dom/ChildNode;
    if-nez v3, :cond_4d

    .line 1704
    move-object v3, v4

    .line 1709
    :goto_40
    iput-object p1, v4, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1710
    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 1711
    iput-object v0, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1712
    move-object v0, v4

    .line 1700
    invoke-virtual {p0, v1}, getPrevSibling(I)I

    move-result v1

    goto :goto_27

    .line 1707
    :cond_4d
    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_40
.end method

.method protected final synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V
    .registers 10
    .param p1, "p"    # Lmf/org/apache/xerces/dom/ParentNode;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1739
    invoke-virtual {p0}, getMutationEvents()Z

    move-result v4

    .line 1740
    .local v4, "orig":Z
    invoke-virtual {p0, v5}, setMutationEvents(Z)V

    .line 1743
    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    .line 1746
    const/4 v0, 0x0

    .line 1747
    .local v0, "firstNode":Lmf/org/apache/xerces/dom/ChildNode;
    const/4 v2, 0x0

    .line 1748
    .local v2, "lastNode":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {p0, p2}, getLastChild(I)I

    move-result v1

    .line 1749
    .local v1, "index":I
    :goto_12
    const/4 v5, -0x1

    if-ne v1, v5, :cond_23

    .line 1764
    if-eqz v2, :cond_1f

    .line 1765
    iput-object v0, p1, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1766
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 1767
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    .line 1771
    :cond_1f
    invoke-virtual {p0, v4}, setMutationEvents(Z)V

    .line 1773
    return-void

    .line 1752
    :cond_23
    invoke-virtual {p0, v1}, getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1753
    .local v3, "node":Lmf/org/apache/xerces/dom/ChildNode;
    if-nez v2, :cond_39

    .line 1754
    move-object v2, v3

    .line 1759
    :goto_2c
    iput-object p1, v3, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1760
    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 1761
    iput-object v0, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1762
    move-object v0, v3

    .line 1750
    invoke-virtual {p0, v1}, getPrevSibling(I)I

    move-result v1

    goto :goto_12

    .line 1757
    :cond_39
    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2c
.end method

.method protected synchronizeData()V
    .registers 15

    .prologue
    .line 1529
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, needsSyncData(Z)V

    .line 1532
    iget-object v12, p0, fIdElement:[I

    if-eqz v12, :cond_12

    .line 1541
    new-instance v8, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;

    invoke-direct {v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;-><init>()V

    .line 1542
    .local v8, "path":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget v12, p0, fIdCount:I

    if-lt v3, v12, :cond_13

    .line 1600
    .end local v3    # "i":I
    .end local v8    # "path":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;
    :cond_12
    return-void

    .line 1545
    .restart local v3    # "i":I
    .restart local v8    # "path":Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;
    :cond_13
    iget-object v12, p0, fIdElement:[I

    aget v2, v12, v3

    .line 1546
    .local v2, "elementNodeIndex":I
    iget-object v12, p0, fIdName:[Ljava/lang/String;

    aget-object v4, v12, v3

    .line 1547
    .local v4, "idName":Ljava/lang/String;
    if-nez v4, :cond_20

    .line 1542
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1552
    :cond_20
    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->removeAllElements()V

    .line 1553
    move v5, v2

    .line 1555
    .local v5, "index":I
    :cond_24
    invoke-virtual {v8, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->addElement(I)V

    .line 1556
    shr-int/lit8 v9, v5, 0xb

    .line 1557
    .local v9, "pchunk":I
    and-int/lit16 v10, v5, 0x7ff

    .line 1558
    .local v10, "pindex":I
    iget-object v12, p0, fNodeParent:[[I

    invoke-direct {p0, v12, v9, v10}, getChunkIndex([[III)I

    move-result v5

    .line 1559
    const/4 v12, -0x1

    if-ne v5, v12, :cond_24

    .line 1565
    move-object v11, p0

    .line 1566
    .local v11, "place":Lmf/org/w3c/dom/Node;
    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x2

    .local v6, "j":I
    :goto_3b
    if-gez v6, :cond_62

    move-object v1, v11

    .line 1583
    check-cast v1, Lmf/org/w3c/dom/Element;

    .line 1584
    .local v1, "element":Lmf/org/w3c/dom/Element;
    invoke-direct {p0, v4, v1}, putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    .line 1585
    iget-object v12, p0, fIdName:[Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v13, v12, v3

    .line 1588
    :cond_48
    :goto_48
    add-int/lit8 v12, v3, 0x1

    iget v13, p0, fIdCount:I

    if-ge v12, v13, :cond_1d

    .line 1589
    iget-object v12, p0, fIdElement:[I

    add-int/lit8 v13, v3, 0x1

    aget v12, v12, v13

    if-ne v12, v2, :cond_1d

    .line 1590
    iget-object v12, p0, fIdName:[Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v12, v3

    .line 1591
    if-eqz v4, :cond_48

    .line 1594
    invoke-direct {p0, v4, v1}, putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_48

    .line 1567
    .end local v1    # "element":Lmf/org/w3c/dom/Element;
    :cond_62
    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->elementAt(I)I

    move-result v5

    .line 1568
    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1569
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_6a
    if-nez v0, :cond_6f

    .line 1566
    :goto_6c
    add-int/lit8 v6, v6, -0x1

    goto :goto_3b

    .line 1570
    :cond_6f
    instance-of v12, v0, Lmf/org/apache/xerces/dom/DeferredNode;

    if-eqz v12, :cond_7e

    move-object v12, v0

    .line 1572
    check-cast v12, Lmf/org/apache/xerces/dom/DeferredNode;

    invoke-interface {v12}, Lmf/org/apache/xerces/dom/DeferredNode;->getNodeIndex()I

    move-result v7

    .line 1573
    .local v7, "nodeIndex":I
    if-ne v7, v5, :cond_7e

    .line 1574
    move-object v11, v0

    .line 1575
    goto :goto_6c

    .line 1578
    .end local v7    # "nodeIndex":I
    :cond_7e
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_6a
.end method
