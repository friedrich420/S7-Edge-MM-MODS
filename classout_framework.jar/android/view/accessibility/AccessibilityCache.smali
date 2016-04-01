.class final Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# static fields
.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"


# instance fields
.field private mAccessibilityFocus:J

.field private mInputFocus:J

.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, CHECK_INTEGRITY:Z

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/32 v2, 0x7fffffff

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 43
    iput-wide v2, p0, mAccessibilityFocus:J

    .line 44
    iput-wide v2, p0, mInputFocus:J

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mWindowCache:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mNodeCache:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mTempWindowArray:Landroid/util/SparseArray;

    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .registers 7
    .param p1, "windowId"    # I

    .prologue
    .line 304
    iget-object v4, p0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 305
    .local v3, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v3, :cond_b

    .line 316
    :goto_a
    return-void

    .line 309
    :cond_b
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 310
    .local v2, "nodeCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_22

    .line 311
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 312
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 313
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 310
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 315
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_22
    iget-object v4, p0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a
.end method

.method private clearSubTreeLocked(IJ)V
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "rootNodeId"    # J

    .prologue
    .line 329
    iget-object v1, p0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 330
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v0, :cond_d

    .line 331
    invoke-direct {p0, v0, p2, p3}, clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 333
    :cond_d
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V
    .registers 10
    .param p2, "rootNodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 345
    .local v1, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_9

    .line 354
    :cond_8
    return-void

    .line 348
    :cond_9
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 349
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 350
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v0, :cond_8

    .line 351
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 352
    .local v2, "childNodeId":J
    invoke-direct {p0, p1, v2, v3}, clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_11
.end method

.method private refreshCachedNodeLocked(IJ)V
    .registers 8
    .param p1, "windowId"    # I
    .param p2, "sourceId"    # J

    .prologue
    .line 143
    iget-object v2, p0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 144
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_b

    .line 158
    :cond_a
    :goto_a
    return-void

    .line 147
    :cond_b
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 149
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_a

    .line 153
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 157
    invoke-direct {p0, p1, p2, p3}, clearSubTreeLocked(IJ)V

    goto :goto_a
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 22
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 234
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v14

    .line 235
    .local v14, "windowId":I
    move-object/from16 v0, p0

    iget-object v15, v0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 236
    .local v5, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v5, :cond_23

    .line 237
    new-instance v5, Landroid/util/LongSparseArray;

    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 238
    .restart local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    .line 242
    .local v12, "sourceId":J
    invoke-virtual {v5, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 243
    .local v7, "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v7, :cond_5f

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v4

    .line 250
    .local v4, "newChildrenIds":Landroid/util/LongArray;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    .line 251
    .local v6, "oldChildCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    if-ge v3, v6, :cond_4e

    .line 252
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v8

    .line 254
    .local v8, "oldChildId":J
    if-eqz v4, :cond_46

    invoke-virtual {v4, v8, v9}, Landroid/util/LongArray;->indexOf(J)I

    move-result v15

    if-gez v15, :cond_4b

    .line 255
    :cond_46
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v9}, clearSubTreeLocked(IJ)V

    .line 251
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 262
    .end local v8    # "oldChildId":J
    :cond_4e
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    .line 263
    .local v10, "oldParentId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v18

    cmp-long v15, v18, v10

    if-eqz v15, :cond_5f

    .line 264
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v11}, clearSubTreeLocked(IJ)V

    .line 270
    .end local v3    # "i":I
    .end local v4    # "newChildrenIds":Landroid/util/LongArray;
    .end local v6    # "oldChildCount":I
    .end local v10    # "oldParentId":J
    :cond_5f
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 271
    .local v2, "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5, v12, v13, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 272
    monitor-exit v16

    .line 273
    return-void

    .line 272
    .end local v2    # "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "sourceId":J
    .end local v14    # "windowId":I
    :catchall_68
    move-exception v15

    monitor-exit v16
    :try_end_6a
    .catchall {:try_start_7 .. :try_end_6a} :catchall_68

    throw v15
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 7
    .param p1, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 56
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 60
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 61
    .local v1, "windowId":I
    iget-object v2, p0, mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 62
    .local v0, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_14

    .line 63
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 65
    :cond_14
    iget-object v2, p0, mWindowCache:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    monitor-exit v3

    .line 67
    return-void

    .line 66
    .end local v0    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v1    # "windowId":I
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public checkIntegrity()V
    .registers 27

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 366
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-gtz v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-nez v22, :cond_21

    .line 367
    monitor-exit v23

    .line 475
    :goto_20
    return-void

    .line 370
    :cond_21
    const/4 v7, 0x0

    .line 371
    .local v7, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v3, 0x0

    .line 373
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v20

    .line 374
    .local v20, "windowCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    move/from16 v0, v20

    if-ge v8, v0, :cond_99

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 378
    .local v19, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v22

    if-eqz v22, :cond_68

    .line 379
    if-eqz v3, :cond_93

    .line 380
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate active window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_68
    :goto_68
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_90

    .line 388
    if-eqz v7, :cond_96

    .line 389
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate focused window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_90
    :goto_90
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 382
    :cond_93
    move-object/from16 v3, v19

    goto :goto_68

    .line 391
    :cond_96
    move-object/from16 v7, v19

    goto :goto_90

    .line 397
    .end local v19    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_99
    const/4 v2, 0x0

    .line 398
    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v9, 0x0

    .line 400
    .local v9, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 401
    .local v16, "nodesForWindowCount":I
    const/4 v8, 0x0

    :goto_a6
    move/from16 v0, v16

    if-ge v8, v0, :cond_22b

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/LongSparseArray;

    .line 403
    .local v15, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v22

    if-gtz v22, :cond_c1

    .line 401
    :cond_be
    add-int/lit8 v8, v8, 0x1

    goto :goto_a6

    .line 407
    :cond_c1
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 408
    .local v18, "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 410
    .local v21, "windowId":I
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    .line 411
    .local v13, "nodeCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_d7
    if-ge v10, v13, :cond_be

    .line 412
    invoke-virtual {v15, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 415
    .local v12, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_116

    .line 416
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate node: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_113
    add-int/lit8 v10, v10, 0x1

    goto :goto_d7

    .line 423
    :cond_116
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v22

    if-eqz v22, :cond_14a

    .line 424
    if-eqz v2, :cond_221

    .line 425
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate accessibility focus:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_14a
    :goto_14a
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_17e

    .line 434
    if-eqz v9, :cond_224

    .line 435
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate input focus: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_17e
    :goto_17e
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 444
    .local v14, "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v14, :cond_1cf

    .line 445
    const/4 v6, 0x0

    .line 446
    .local v6, "childOfItsParent":Z
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 447
    .local v5, "childCount":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_192
    if-ge v11, v5, :cond_1a3

    .line 448
    invoke-virtual {v14, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 449
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-ne v4, v12, :cond_227

    .line 450
    const/4 v6, 0x1

    .line 454
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1a3
    if-nez v6, :cond_1cf

    .line 455
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid parent-child relation between parent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " and child: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v5    # "childCount":I
    .end local v6    # "childOfItsParent":Z
    .end local v11    # "k":I
    :cond_1cf
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 462
    .restart local v5    # "childCount":I
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_1d4
    if-ge v11, v5, :cond_113

    .line 463
    invoke-virtual {v12, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 464
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_21e

    .line 465
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 466
    .local v17, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v17

    if-eq v0, v12, :cond_21e

    .line 467
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid child-parent relation between child: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " and parent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v17    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_21e
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d4

    .line 428
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v11    # "k":I
    .end local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_221
    move-object v2, v12

    goto/16 :goto_14a

    .line 438
    :cond_224
    move-object v9, v12

    goto/16 :goto_17e

    .line 447
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "childCount":I
    .restart local v6    # "childOfItsParent":Z
    .restart local v11    # "k":I
    .restart local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_227
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_192

    .line 474
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v6    # "childOfItsParent":Z
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v12    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "nodeCount":I
    .end local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v15    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v18    # "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v21    # "windowId":I
    :cond_22b
    monitor-exit v23

    goto/16 :goto_20

    .end local v2    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v7    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v8    # "i":I
    .end local v9    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v16    # "nodesForWindowCount":I
    .end local v20    # "windowCount":I
    :catchall_22e
    move-exception v22

    monitor-exit v23
    :try_end_230
    .catchall {:try_start_7 .. :try_end_230} :catchall_22e

    throw v22
.end method

.method public clear()V
    .registers 11

    .prologue
    .line 279
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 283
    :try_start_3
    iget-object v5, p0, mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 284
    .local v3, "windowCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_20

    .line 285
    iget-object v5, p0, mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 286
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 287
    iget-object v5, p0, mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 284
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 289
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_20
    iget-object v5, p0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 290
    .local v1, "nodesForWindowCount":I
    const/4 v0, 0x0

    :goto_27
    if-ge v0, v1, :cond_35

    .line 291
    iget-object v5, p0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 292
    .local v4, "windowId":I
    invoke-direct {p0, v4}, clearNodesForWindowLocked(I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 295
    .end local v4    # "windowId":I
    :cond_35
    const-wide/32 v8, 0x7fffffff

    iput-wide v8, p0, mAccessibilityFocus:J

    .line 296
    const-wide/32 v8, 0x7fffffff

    iput-wide v8, p0, mInputFocus:J

    .line 297
    monitor-exit v6

    .line 298
    return-void

    .line 297
    .end local v0    # "i":I
    .end local v1    # "nodesForWindowCount":I
    .end local v3    # "windowCount":I
    :catchall_41
    move-exception v5

    monitor-exit v6
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v5
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    .prologue
    .line 169
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    :try_start_3
    iget-object v2, p0, mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 171
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_10

    .line 172
    const/4 v0, 0x0

    monitor-exit v3

    .line 183
    :goto_f
    return-object v0

    .line 174
    :cond_10
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 175
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1c

    .line 178
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 183
    :cond_1c
    monitor-exit v3

    goto :goto_f

    .line 184
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5
    .param p1, "windowId"    # I

    .prologue
    .line 214
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    :try_start_3
    iget-object v1, p0, mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 216
    .local v0, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_13

    .line 217
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    monitor-exit v2

    .line 219
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_12

    .line 220
    .end local v0    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 189
    :try_start_3
    iget-object v5, p0, mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 190
    .local v3, "windowCount":I
    if-lez v3, :cond_43

    .line 192
    iget-object v1, p0, mTempWindowArray:Landroid/util/SparseArray;

    .line 193
    .local v1, "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v3, :cond_25

    .line 196
    iget-object v5, p0, mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 197
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 200
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_25
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v0, v3, -0x1

    :goto_2c
    if-ltz v0, :cond_41

    .line 202
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 203
    .restart local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    .line 207
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_41
    monitor-exit v6

    .line 209
    .end local v0    # "i":I
    .end local v1    # "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v4    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :goto_42
    return-object v4

    :cond_43
    const/4 v4, 0x0

    monitor-exit v6

    goto :goto_42

    .line 210
    .end local v3    # "windowCount":I
    :catchall_46
    move-exception v5

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v5
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 76
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 77
    :try_start_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 78
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_ae

    .line 131
    :cond_d
    :goto_d
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_35

    .line 133
    sget-boolean v4, CHECK_INTEGRITY:Z

    if-eqz v4, :cond_15

    .line 134
    invoke-virtual {p0}, checkIntegrity()V

    .line 136
    :cond_15
    return-void

    .line 80
    :sswitch_16
    :try_start_16
    iget-wide v6, p0, mAccessibilityFocus:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_25

    .line 81
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, refreshCachedNodeLocked(IJ)V

    .line 83
    :cond_25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    iput-wide v6, p0, mAccessibilityFocus:J

    .line 84
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, refreshCachedNodeLocked(IJ)V

    goto :goto_d

    .line 131
    .end local v0    # "eventType":I
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_35

    throw v4

    .line 88
    .restart local v0    # "eventType":I
    :sswitch_38
    :try_start_38
    iget-wide v6, p0, mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_d

    .line 89
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, refreshCachedNodeLocked(IJ)V

    .line 90
    const-wide/32 v6, 0x7fffffff

    iput-wide v6, p0, mAccessibilityFocus:J

    goto :goto_d

    .line 95
    :sswitch_51
    iget-wide v6, p0, mInputFocus:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_60

    .line 96
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, mInputFocus:J

    invoke-direct {p0, v4, v6, v7}, refreshCachedNodeLocked(IJ)V

    .line 98
    :cond_60
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    iput-wide v6, p0, mInputFocus:J

    .line 99
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, mInputFocus:J

    invoke-direct {p0, v4, v6, v7}, refreshCachedNodeLocked(IJ)V

    goto :goto_d

    .line 106
    :sswitch_70
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, refreshCachedNodeLocked(IJ)V

    goto :goto_d

    .line 110
    :sswitch_7c
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7f
    .catchall {:try_start_38 .. :try_end_7f} :catchall_35

    .line 111
    :try_start_7f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    .line 112
    .local v1, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v2

    .line 113
    .local v2, "sourceId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_98

    .line 115
    invoke-direct {p0, v1, v2, v3}, clearSubTreeLocked(IJ)V

    .line 119
    :goto_92
    monitor-exit v6

    goto/16 :goto_d

    .end local v1    # "windowId":I
    .end local v2    # "sourceId":J
    :catchall_95
    move-exception v4

    monitor-exit v6
    :try_end_97
    .catchall {:try_start_7f .. :try_end_97} :catchall_95

    :try_start_97
    throw v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_35

    .line 117
    .restart local v1    # "windowId":I
    .restart local v2    # "sourceId":J
    :cond_98
    :try_start_98
    invoke-direct {p0, v1, v2, v3}, refreshCachedNodeLocked(IJ)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_95

    goto :goto_92

    .line 123
    .end local v1    # "windowId":I
    .end local v2    # "sourceId":J
    :sswitch_9c
    :try_start_9c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, clearSubTreeLocked(IJ)V

    goto/16 :goto_d

    .line 128
    :sswitch_a9
    invoke-virtual {p0}, clear()V
    :try_end_ac
    .catchall {:try_start_9c .. :try_end_ac} :catchall_35

    goto/16 :goto_d

    .line 78
    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_70
        0x4 -> :sswitch_70
        0x8 -> :sswitch_51
        0x10 -> :sswitch_70
        0x20 -> :sswitch_a9
        0x800 -> :sswitch_7c
        0x1000 -> :sswitch_9c
        0x2000 -> :sswitch_70
        0x8000 -> :sswitch_16
        0x10000 -> :sswitch_38
        0x400000 -> :sswitch_a9
    .end sparse-switch
.end method
