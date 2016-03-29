.class public Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings/net/UidDetailProvider;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/settings/net/UidDetailProvider;I)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "provider"    # Lcom/android/settings/net/UidDetailProvider;
    .param p3, "insetSide"    # I

    .prologue
    .line 4338
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4335
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 4339
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 4340
    iput p3, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 4341
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    .line 4342
    return-void
.end method

.method private accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V
    .locals 8
    .param p1, "collapseKey"    # I
    .param p3, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p4, "itemCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 4467
    .local p2, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/DataUsageSummary$AppItem;>;"
    iget v1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 4468
    .local v1, "uid":I
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 4469
    .local v0, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    if-nez v0, :cond_0

    .line 4470
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local v0    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-direct {v0, p1}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 4471
    .restart local v0    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    iput p4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    .line 4472
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4473
    iget v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4475
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$AppItem;->addUid(I)V

    .line 4476
    iget-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 4477
    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    iget-wide v4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 4478
    iget-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iput-wide v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 4480
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 4520
    const/4 v0, 0x0

    return v0
.end method

.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 22
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 4348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 4349
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 4351
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 4352
    .local v6, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 4353
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 4355
    .local v11, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/DataUsageSummary$AppItem;>;"
    const/4 v7, 0x0

    .line 4356
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v15

    .line 4357
    .local v15, "size":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v15, :cond_b

    .line 4358
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 4361
    iget v0, v7, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v17, v0

    .line 4365
    .local v17, "uid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 4366
    .local v18, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 4367
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 4368
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 4369
    move/from16 v0, v18

    if-eq v0, v6, :cond_0

    .line 4371
    invoke-static/range {v18 .. v18}, Lcom/android/settings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v12

    .line 4372
    .local v12, "managedKey":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v11, v7, v1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    .line 4376
    .end local v12    # "managedKey":I
    :cond_0
    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 4357
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4356
    .end local v8    # "i":I
    .end local v15    # "size":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 4381
    .restart local v8    # "i":I
    .restart local v15    # "size":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_3
    move/from16 v5, v17

    .line 4382
    .local v5, "collapseKey":I
    const/4 v4, 0x2

    .line 4402
    .local v4, "category":I
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v7, v4}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    goto :goto_2

    .line 4385
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 4386
    .local v9, "info":Landroid/content/pm/UserInfo;
    if-nez v9, :cond_5

    .line 4387
    const/4 v5, -0x4

    .line 4388
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_3

    .line 4391
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/android/settings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v5

    .line 4392
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x0

    .restart local v4    # "category":I
    goto :goto_3

    .line 4395
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    .end local v9    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    const/16 v19, -0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v19, -0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v19, -0x64

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 4396
    :cond_7
    move/from16 v5, v17

    .line 4397
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_3

    .line 4399
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_8
    const/16 v5, 0x3e8

    .line 4400
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_3

    .line 4405
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_9
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 4406
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 4408
    const/16 v19, -0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, -0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 4411
    move/from16 v5, v17

    .line 4412
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .line 4413
    .restart local v4    # "category":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v7, v4}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    goto :goto_2

    .line 4416
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_a
    const/16 v19, -0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, -0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 4419
    invoke-static/range {v18 .. v18}, Lcom/android/settings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v11, v7, v2}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    goto/16 :goto_2

    .line 4426
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_b
    move-object/from16 v0, p2

    array-length v14, v0

    .line 4427
    .local v14, "restrictedUidsMax":I
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v14, :cond_f

    .line 4428
    aget v17, p2, v8

    .line 4430
    .restart local v17    # "uid":I
    new-instance v19, Landroid/os/UserHandle;

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 4427
    :cond_c
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 4434
    :cond_d
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 4435
    .local v10, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    if-nez v10, :cond_e

    .line 4436
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v19

    if-nez v19, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v19

    if-nez v19, :cond_c

    .line 4437
    new-instance v10, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local v10    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    move/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 4438
    .restart local v10    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 4439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4440
    iget v0, v10, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4442
    :cond_e
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/settings/DataUsageSummary$AppItem;->restricted:Z

    goto :goto_5

    .line 4445
    .end local v10    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    .end local v17    # "uid":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10

    .line 4446
    new-instance v16, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>()V

    .line 4447
    .local v16, "title":Lcom/android/settings/DataUsageSummary$AppItem;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    .line 4448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4451
    .end local v16    # "title":Lcom/android/settings/DataUsageSummary$AppItem;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4452
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 4453
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 4484
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4489
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 4494
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 4510
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 4511
    .local v0, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    iget v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    if-ne v2, v1, :cond_0

    .line 4514
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 4533
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 4534
    .local v2, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4535
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->getItemViewType(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 4536
    if-nez p2, :cond_0

    .line 4537
    invoke-static {v1, p3}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4539
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4540
    .local v0, "context":Landroid/content/Context;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040a42

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4542
    .local v3, "mAdditionalContextDesc":Ljava/lang/String;
    const v8, 0x1020016

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 4543
    .local v7, "title":Landroid/widget/TextView;
    const v8, 0x7f0e0c5a

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 4544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4588
    .end local v3    # "mAdditionalContextDesc":Ljava/lang/String;
    .end local v7    # "title":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 4547
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    if-nez p2, :cond_2

    .line 4548
    const v8, 0x7f04009c

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4549
    const v9, 0x7f040238

    const v8, 0x1020018

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4552
    iget v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v8, :cond_2

    .line 4553
    iget v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    const/4 v11, 0x0

    invoke-virtual {p2, v8, v9, v10, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 4557
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4559
    .restart local v0    # "context":Landroid/content/Context;
    const v8, 0x1020010

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 4560
    .local v6, "summary":Landroid/widget/TextView;
    const v8, 0x102000d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 4564
    .local v5, "progress":Landroid/widget/ProgressBar;
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-static {v8, v2, p2}, Lcom/android/settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settings/net/UidDetailProvider;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 4566
    iget-boolean v8, v2, Lcom/android/settings/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v8, :cond_3

    iget-wide v8, v2, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    .line 4567
    const v8, 0x7f0e0c75

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 4568
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4584
    :goto_1
    iget-wide v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    iget-wide v8, v2, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v8, v10

    long-to-int v4, v8

    .line 4585
    .local v4, "percentTotal":I
    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 4570
    .end local v4    # "percentTotal":I
    :cond_3
    iget-wide v8, v2, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4573
    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4300()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4574
    sget v8, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 4575
    iget-wide v8, v2, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    # invokes: Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;
    invoke-static {v0, v8, v9}, Lcom/android/settings/DataUsageSummary;->access$7800(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4581
    :cond_4
    :goto_3
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 4576
    :cond_5
    sget v8, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 4577
    iget-wide v8, v2, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    # invokes: Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;
    invoke-static {v0, v8, v9}, Lcom/android/settings/DataUsageSummary;->access$7900(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4584
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 4502
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 4526
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 4528
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
