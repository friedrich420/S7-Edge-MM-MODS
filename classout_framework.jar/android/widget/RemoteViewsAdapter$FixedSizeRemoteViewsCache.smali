.class Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeRemoteViewsCache"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedSizeRemoteViewsCache"

.field private static final sMaxCountSlackPercent:F = 0.75f

.field private static final sMaxMemoryLimitInBytes:I = 0x200000


# instance fields
.field private mIndexMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexRemoteViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRequestedIndex:I

.field private mLoadIndices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCount:I

.field private mMaxCountSlack:I

.field private final mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

.field private mPreloadLowerBound:I

.field private mPreloadUpperBound:I

.field private mRequestedIndices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "maxCacheSize"    # I

    .prologue
    const/4 v2, -0x1

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput p1, p0, mMaxCount:I

    .line 643
    const/high16 v0, 0x3f400000    # 0.75f

    iget v1, p0, mMaxCount:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, mMaxCountSlack:I

    .line 644
    const/4 v0, 0x0

    iput v0, p0, mPreloadLowerBound:I

    .line 645
    iput v2, p0, mPreloadUpperBound:I

    .line 646
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 647
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mIndexMetaData:Ljava/util/HashMap;

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mIndexRemoteViews:Ljava/util/HashMap;

    .line 650
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mRequestedIndices:Ljava/util/HashSet;

    .line 651
    iput v2, p0, mLastRequestedIndex:I

    .line 652
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mLoadIndices:Ljava/util/HashSet;

    .line 653
    return-void
.end method

.method static synthetic access$1200(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .prologue
    .line 593
    iget-object v0, p0, mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .prologue
    .line 593
    iget-object v0, p0, mIndexRemoteViews:Ljava/util/HashMap;

    return-object v0
.end method

.method private getFarthestPositionFrom(ILjava/util/ArrayList;)I
    .registers 11
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 732
    .local p2, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 733
    .local v3, "maxDist":I
    const/4 v4, -0x1

    .line 734
    .local v4, "maxDistIndex":I
    const/4 v6, 0x0

    .line 735
    .local v6, "maxDistNotVisible":I
    const/4 v5, -0x1

    .line 736
    .local v5, "maxDistIndexNotVisible":I
    iget-object v7, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 737
    .local v1, "i":I
    sub-int v7, v1, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 738
    .local v0, "dist":I
    if-le v0, v6, :cond_32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 741
    move v5, v1

    .line 742
    move v6, v0

    .line 744
    :cond_32
    if-lt v0, v3, :cond_e

    .line 747
    move v4, v1

    .line 748
    move v3, v0

    goto :goto_e

    .line 751
    .end local v0    # "dist":I
    .end local v1    # "i":I
    :cond_37
    const/4 v7, -0x1

    if-le v5, v7, :cond_3b

    .line 754
    .end local v5    # "maxDistIndexNotVisible":I
    :goto_3a
    return v5

    .restart local v5    # "maxDistIndexNotVisible":I
    :cond_3b
    move v5, v4

    goto :goto_3a
.end method

.method private getRemoteViewsBitmapMemoryUsage()I
    .registers 6

    .prologue
    .line 720
    const/4 v2, 0x0

    .line 721
    .local v2, "mem":I
    iget-object v4, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 722
    .local v0, "i":Ljava/lang/Integer;
    iget-object v4, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 723
    .local v3, "v":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_b

    .line 724
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_b

    .line 727
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v3    # "v":Landroid/widget/RemoteViews;
    :cond_27
    return v2
.end method


# virtual methods
.method public commitTemporaryMetaData()V
    .registers 5

    .prologue
    .line 711
    iget-object v1, p0, mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v1

    .line 712
    :try_start_3
    iget-object v2, p0, mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    .line 713
    :try_start_6
    iget-object v0, p0, mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget-object v3, p0, mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V

    .line 714
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    .line 715
    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_13

    .line 716
    return-void

    .line 714
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0

    .line 715
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public containsMetaDataAt(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 826
    iget-object v0, p0, mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRemoteViewAt(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 823
    iget-object v0, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 704
    iget-object v0, p0, mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 705
    iget-object v0, p0, mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    .line 707
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getNextIndexToLoad()[I
    .registers 6

    .prologue
    .line 802
    iget-object v2, p0, mLoadIndices:Ljava/util/HashSet;

    monitor-enter v2

    .line 804
    :try_start_3
    iget-object v1, p0, mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 805
    iget-object v1, p0, mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 806
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 807
    iget-object v1, p0, mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 808
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput v4, v1, v3

    monitor-exit v2

    .line 818
    .end local v0    # "i":Ljava/lang/Integer;
    :goto_30
    return-object v1

    .line 812
    :cond_31
    iget-object v1, p0, mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 813
    iget-object v1, p0, mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 814
    .restart local v0    # "i":Ljava/lang/Integer;
    iget-object v1, p0, mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 815
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    monitor-exit v2

    goto :goto_30

    .line 819
    .end local v0    # "i":Ljava/lang/Integer;
    :catchall_5a
    move-exception v1

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1

    .line 818
    :cond_5d
    const/4 v1, 0x2

    :try_start_5e
    new-array v1, v1, [I

    fill-array-data v1, :array_66

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_5a

    goto :goto_30

    nop

    :array_66
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method public getRemoteViewsAt(I)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 698
    iget-object v0, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 699
    iget-object v0, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 701
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public insert(ILandroid/widget/RemoteViews;JLjava/util/ArrayList;)V
    .registers 13
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/widget/RemoteViews;
    .param p3, "itemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/RemoteViews;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p5, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget v4, p0, mMaxCount:I

    if-lt v3, v4, :cond_17

    .line 659
    iget-object v3, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-direct {p0, p1, p5}, getFarthestPositionFrom(ILjava/util/ArrayList;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_17
    iget v3, p0, mLastRequestedIndex:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_51

    iget v1, p0, mLastRequestedIndex:I

    .line 664
    .local v1, "pruneFromPosition":I
    :goto_1e
    invoke-direct {p0}, getRemoteViewsBitmapMemoryUsage()I

    move-result v3

    const/high16 v4, 0x200000

    if-lt v3, v4, :cond_2c

    .line 670
    invoke-direct {p0, v1, p5}, getFarthestPositionFrom(ILjava/util/ArrayList;)I

    move-result v2

    .line 674
    .local v2, "trimIndex":I
    if-gez v2, :cond_53

    .line 682
    .end local v2    # "trimIndex":I
    :cond_2c
    iget-object v3, p0, mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 683
    iget-object v3, p0, mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    .line 684
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    invoke-virtual {v0, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    .line 688
    .end local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    :goto_47
    iget-object v3, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    return-void

    .end local v1    # "pruneFromPosition":I
    :cond_51
    move v1, p1

    .line 663
    goto :goto_1e

    .line 678
    .restart local v1    # "pruneFromPosition":I
    .restart local v2    # "trimIndex":I
    :cond_53
    iget-object v3, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 686
    .end local v2    # "trimIndex":I
    :cond_5d
    iget-object v3, p0, mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    invoke-direct {v5, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;-><init>(Landroid/widget/RemoteViews;J)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47
.end method

.method public queuePositionsToBePreloadedFromRequestedPosition(I)Z
    .registers 11
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 766
    iget v7, p0, mPreloadLowerBound:I

    if-gt v7, p1, :cond_1b

    iget v7, p0, mPreloadUpperBound:I

    if-gt p1, v7, :cond_1b

    .line 767
    iget v7, p0, mPreloadUpperBound:I

    iget v8, p0, mPreloadLowerBound:I

    add-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    .line 768
    .local v0, "center":I
    sub-int v7, p1, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, mMaxCountSlack:I

    if-ge v7, v8, :cond_1b

    .line 796
    .end local v0    # "center":I
    :goto_1a
    return v6

    .line 773
    :cond_1b
    const/4 v1, 0x0

    .line 774
    .local v1, "count":I
    iget-object v7, p0, mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v7

    .line 775
    :try_start_1f
    iget-object v6, p0, mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget v1, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 776
    monitor-exit v7
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_5d

    .line 777
    iget-object v7, p0, mLoadIndices:Ljava/util/HashSet;

    monitor-enter v7

    .line 778
    :try_start_27
    iget-object v6, p0, mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 781
    iget-object v6, p0, mLoadIndices:Ljava/util/HashSet;

    iget-object v8, p0, mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 784
    iget v6, p0, mMaxCount:I

    div-int/lit8 v4, v6, 0x2

    .line 785
    .local v4, "halfMaxCount":I
    sub-int v6, p1, v4

    iput v6, p0, mPreloadLowerBound:I

    .line 786
    add-int v6, p1, v4

    iput v6, p0, mPreloadUpperBound:I

    .line 787
    const/4 v6, 0x0

    iget v8, p0, mPreloadLowerBound:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 788
    .local v2, "effectiveLowerBound":I
    iget v6, p0, mPreloadUpperBound:I

    add-int/lit8 v8, v1, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 789
    .local v3, "effectiveUpperBound":I
    move v5, v2

    .local v5, "i":I
    :goto_4f
    if-gt v5, v3, :cond_60

    .line 790
    iget-object v6, p0, mLoadIndices:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_27 .. :try_end_5a} :catchall_6e

    .line 789
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 776
    .end local v2    # "effectiveLowerBound":I
    .end local v3    # "effectiveUpperBound":I
    .end local v4    # "halfMaxCount":I
    .end local v5    # "i":I
    :catchall_5d
    move-exception v6

    :try_start_5e
    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v6

    .line 794
    .restart local v2    # "effectiveLowerBound":I
    .restart local v3    # "effectiveUpperBound":I
    .restart local v4    # "halfMaxCount":I
    .restart local v5    # "i":I
    :cond_60
    :try_start_60
    iget-object v6, p0, mLoadIndices:Ljava/util/HashSet;

    iget-object v8, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 795
    monitor-exit v7

    .line 796
    const/4 v6, 0x1

    goto :goto_1a

    .line 795
    .end local v2    # "effectiveLowerBound":I
    .end local v3    # "effectiveUpperBound":I
    .end local v4    # "halfMaxCount":I
    .end local v5    # "i":I
    :catchall_6e
    move-exception v6

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_6e

    throw v6
.end method

.method public queueRequestedPositionToLoad(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 758
    iput p1, p0, mLastRequestedIndex:I

    .line 759
    iget-object v1, p0, mLoadIndices:Ljava/util/HashSet;

    monitor-enter v1

    .line 760
    :try_start_5
    iget-object v0, p0, mRequestedIndices:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, mLoadIndices:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 762
    monitor-exit v1

    .line 763
    return-void

    .line 762
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 834
    const/4 v0, 0x0

    iput v0, p0, mPreloadLowerBound:I

    .line 835
    iput v1, p0, mPreloadUpperBound:I

    .line 836
    iput v1, p0, mLastRequestedIndex:I

    .line 837
    iget-object v0, p0, mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 838
    iget-object v0, p0, mIndexMetaData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 839
    iget-object v1, p0, mLoadIndices:Ljava/util/HashSet;

    monitor-enter v1

    .line 840
    :try_start_15
    iget-object v0, p0, mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 841
    iget-object v0, p0, mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 842
    monitor-exit v1

    .line 843
    return-void

    .line 842
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v0
.end method
