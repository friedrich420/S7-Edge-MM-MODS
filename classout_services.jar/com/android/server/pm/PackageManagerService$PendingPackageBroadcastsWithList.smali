.class Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingPackageBroadcastsWithList"
.end annotation


# instance fields
.field final mUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final mUidMapOfNewPkgState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 1536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mUidMap:Landroid/util/SparseArray;

    .line 1538
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    .line 1539
    return-void
.end method

.method private getOrAllocate(I)Ljava/util/LinkedHashMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1608
    iget-object v1, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1609
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v0, :cond_14

    .line 1610
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1611
    .restart local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v1, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1613
    :cond_14
    return-object v0
.end method

.method private getOrAllocateNewState(I)Ljava/util/LinkedHashMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1617
    iget-object v1, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1618
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_14

    .line 1619
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1620
    .restart local v0    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1622
    :cond_14
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1603
    iget-object v0, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1604
    iget-object v0, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1605
    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1542
    invoke-direct {p0, p1}, getOrAllocate(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1543
    .local v0, "packages":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public getNewState(ILjava/lang/String;)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1552
    invoke-direct {p0, p1}, getOrAllocateNewState(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1553
    .local v0, "packagesNewState":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public packagesForUserId(I)Ljava/util/LinkedHashMap;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1578
    iget-object v0, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public packagesNewStateForUserId(I)Ljava/util/LinkedHashMap;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1582
    iget-object v0, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public put(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1547
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, getOrAllocate(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1548
    .local v0, "packages":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    return-void
.end method

.method public putNewState(ILjava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 1557
    invoke-direct {p0, p1}, getOrAllocateNewState(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1558
    .local v0, "packagesNewState":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    return-void
.end method

.method public remove(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1573
    iget-object v0, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1574
    iget-object v0, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1575
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1562
    iget-object v2, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1563
    .local v0, "packages":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_d

    .line 1564
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    :cond_d
    iget-object v2, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1567
    .local v1, "packagesNewState":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1a

    .line 1568
    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    :cond_1a
    return-void
.end method

.method public size()I
    .registers 4

    .prologue
    .line 1595
    const/4 v1, 0x0

    .line 1596
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 1597
    iget-object v2, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1596
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1599
    :cond_1a
    return v1
.end method

.method public userIdAt(I)I
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 1590
    iget-object v0, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public userIdCount()I
    .registers 2

    .prologue
    .line 1586
    iget-object v0, p0, mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
