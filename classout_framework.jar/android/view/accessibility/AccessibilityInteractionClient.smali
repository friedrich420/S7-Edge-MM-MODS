.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field private static final CHECK_INTEGRITY:Z = true

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final NO_ID:I = -0x1

.field private static final TIMEOUT_INTERACTION_MILLIS:J = 0x1388L

.field private static final sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

.field private static final sClients:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityInteractionClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceLock:Ljava/lang/Object;

.field private volatile mInteractionId:I

.field private final mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPerformAccessibilityActionResult:Z

.field private mSameThreadMessage:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sStaticLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, sClients:Landroid/util/LongSparseArray;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, sConnectionCache:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Landroid/view/accessibility/AccessibilityCache;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityCache;-><init>()V

    sput-object v0, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mInstanceLock:Ljava/lang/Object;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, mInteractionId:I

    .line 138
    return-void
.end method

.method private checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_7

    .line 826
    :cond_6
    :goto_6
    return-void

    .line 787
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 788
    .local v13, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 789
    .local v11, "infoCount":I
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_15
    if-ge v10, v11, :cond_35

    .line 790
    move v12, v10

    .local v12, "j":I
    :goto_18
    if-ge v12, v11, :cond_2f

    .line 791
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 792
    .local v2, "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v16

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-nez v15, :cond_32

    .line 793
    move-object v13, v2

    .line 789
    .end local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2f
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 790
    .restart local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_32
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 798
    .end local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "j":I
    :cond_35
    if-nez v13, :cond_3e

    .line 799
    const-string v15, "AccessibilityInteractionClient"

    const-string v16, "No root."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_3e
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 803
    .local v14, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 804
    .local v9, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v9, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_4b
    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8c

    .line 806
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 807
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_65

    .line 808
    const-string v15, "AccessibilityInteractionClient"

    const-string v16, "Duplicate node."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 811
    :cond_65
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    .line 812
    .local v4, "childCount":I
    const/4 v10, 0x0

    :goto_6a
    if-ge v10, v4, :cond_4b

    .line 813
    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v6

    .line 814
    .local v6, "childId":J
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_71
    if-ge v12, v11, :cond_89

    .line 815
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 816
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v16

    cmp-long v15, v16, v6

    if-nez v15, :cond_86

    .line 817
    invoke-interface {v9, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_86
    add-int/lit8 v12, v12, 0x1

    goto :goto_71

    .line 812
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_89
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    .line 822
    .end local v4    # "childCount":I
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childId":J
    .end local v12    # "j":I
    :cond_8c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v16

    sub-int v8, v15, v16

    .line 823
    .local v8, "disconnectedCount":I
    if-lez v8, :cond_6

    .line 824
    const-string v15, "AccessibilityInteractionClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Disconnected nodes."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private clearResultLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 656
    const/4 v0, -0x1

    iput v0, p0, mInteractionId:I

    .line 657
    iput-object v1, p0, mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 658
    iput-object v1, p0, mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, mPerformAccessibilityActionResult:Z

    .line 660
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "connectionId"    # I

    .prologue
    .line 704
    if-eqz p1, :cond_e

    .line 705
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 706
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 707
    sget-object v0, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 709
    :cond_e
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V
    .registers 6
    .param p2, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_15

    .line 720
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 721
    .local v2, "infosCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_15

    .line 722
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 723
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2}, finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 726
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "infosCount":I
    :cond_15
    return-void
.end method

.method private getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6
    .param p1, "interactionId"    # I

    .prologue
    .line 553
    iget-object v3, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 554
    :try_start_3
    invoke-direct {p0, p1}, waitForResultTimedLocked(I)Z

    move-result v1

    .line 555
    .local v1, "success":Z
    if-eqz v1, :cond_10

    iget-object v0, p0, mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 556
    .local v0, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_b
    invoke-direct {p0}, clearResultLocked()V

    .line 557
    monitor-exit v3

    return-object v0

    .line 555
    .end local v0    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    .line 558
    .end local v1    # "success":Z
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method private getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .registers 6
    .param p1, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v3, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 584
    :try_start_3
    invoke-direct {p0, p1}, waitForResultTimedLocked(I)Z

    move-result v1

    .line 585
    .local v1, "success":Z
    const/4 v0, 0x0

    .line 586
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v1, :cond_18

    .line 587
    iget-object v0, p0, mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 591
    :goto_c
    invoke-direct {p0}, clearResultLocked()V

    .line 592
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_16

    .line 593
    invoke-direct {p0, v0}, checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V

    .line 595
    :cond_16
    monitor-exit v3

    return-object v0

    .line 589
    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 596
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v1    # "success":Z
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public static getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 3

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 114
    .local v0, "threadId":J
    invoke-static {v0, v1}, getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 6
    .param p0, "threadId"    # J

    .prologue
    .line 126
    sget-object v2, sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_3
    sget-object v1, sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 128
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v0, :cond_17

    .line 129
    new-instance v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    invoke-direct {v0}, <init>()V

    .line 130
    .restart local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    sget-object v1, sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 132
    :cond_17
    monitor-exit v2

    return-object v0

    .line 133
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getPerformAccessibilityActionResultAndClear(I)Z
    .registers 6
    .param p1, "interactionId"    # I

    .prologue
    .line 631
    iget-object v3, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 632
    :try_start_3
    invoke-direct {p0, p1}, waitForResultTimedLocked(I)Z

    move-result v1

    .line 633
    .local v1, "success":Z
    if-eqz v1, :cond_10

    iget-boolean v0, p0, mPerformAccessibilityActionResult:Z

    .line 634
    .local v0, "result":Z
    :goto_b
    invoke-direct {p0}, clearResultLocked()V

    .line 635
    monitor-exit v3

    return v0

    .line 633
    .end local v0    # "result":Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    .line 636
    .end local v1    # "success":Z
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method private getSameProcessMessageAndClear()Landroid/os/Message;
    .registers 4

    .prologue
    .line 735
    iget-object v2, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 736
    :try_start_3
    iget-object v0, p0, mSameThreadMessage:Landroid/os/Message;

    .line 737
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput-object v1, p0, mSameThreadMessage:Landroid/os/Message;

    .line 738
    monitor-exit v2

    return-object v0

    .line 739
    .end local v0    # "result":Landroid/os/Message;
    :catchall_a
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private waitForResultTimedLocked(I)Z
    .registers 12
    .param p1, "interactionId"    # I

    .prologue
    const/4 v3, 0x0

    .line 669
    const-wide/16 v6, 0x1388

    .line 670
    .local v6, "waitTimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 673
    .local v4, "startTimeMillis":J
    :goto_7
    :try_start_7
    invoke-direct {p0}, getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v2

    .line 674
    .local v2, "sameProcessMessage":Landroid/os/Message;
    if-eqz v2, :cond_14

    .line 675
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 678
    :cond_14
    iget v8, p0, mInteractionId:I

    if-ne v8, p1, :cond_1a

    .line 679
    const/4 v3, 0x1

    .line 687
    :cond_19
    return v3

    .line 681
    :cond_1a
    iget v8, p0, mInteractionId:I

    if-gt v8, p1, :cond_19

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 685
    .local v0, "elapsedTimeMillis":J
    const-wide/16 v8, 0x1388

    sub-long v6, v8, v0

    .line 686
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_19

    .line 689
    iget-object v8, p0, mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_7

    .line 690
    .end local v0    # "elapsedTimeMillis":J
    .end local v2    # "sameProcessMessage":Landroid/os/Message;
    :catch_34
    move-exception v8

    goto :goto_7
.end method


# virtual methods
.method public addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .registers 5
    .param p1, "connectionId"    # I
    .param p2, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .prologue
    .line 761
    sget-object v1, sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 762
    :try_start_3
    sget-object v0, sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    monitor-exit v1

    .line 764
    return-void

    .line 763
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public clearCache()V
    .registers 2

    .prologue
    .line 539
    sget-object v0, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 540
    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 26
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I

    .prologue
    .line 267
    and-int/lit8 v5, p6, 0x2

    if-eqz v5, :cond_10

    and-int/lit8 v5, p6, 0x1

    if-nez v5, :cond_10

    .line 269
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "FLAG_PREFETCH_SIBLINGS requires FLAG_PREFETCH_PREDECESSORS"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    :cond_10
    :try_start_10
    invoke-virtual/range {p0 .. p1}, getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v4

    .line 274
    .local v4, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v4, :cond_76

    .line 275
    if-nez p5, :cond_25

    .line 276
    sget-object v5, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/view/accessibility/AccessibilityCache;->getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    .line 278
    .local v13, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v13, :cond_25

    .line 312
    .end local v4    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_24
    return-object v13

    .line 288
    .restart local v4    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    .line 289
    .local v8, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 290
    .local v14, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v9, p0

    move/from16 v10, p6

    invoke-interface/range {v4 .. v12}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v18

    .line 293
    .local v18, "success":Z
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    if-eqz v18, :cond_76

    .line 296
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v16

    .line 298
    .local v16, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V

    .line 299
    if-eqz v16, :cond_76

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    .line 300
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_6a} :catch_6c

    move-object v13, v5

    goto :goto_24

    .line 308
    .end local v4    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v8    # "interactionId":I
    .end local v14    # "identityToken":J
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v18    # "success":Z
    :catch_6c
    move-exception v17

    .line 309
    .local v17, "re":Landroid/os/RemoteException;
    const-string v5, "AccessibilityInteractionClient"

    const-string v6, "Error while calling remote findAccessibilityNodeInfoByAccessibilityId"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_76
    const/4 v13, 0x0

    goto :goto_24
.end method

.method public findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;
    .registers 23
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    invoke-virtual/range {p0 .. p1}, getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 383
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_43

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 385
    .local v7, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 386
    .local v12, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p0

    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v15

    .line 389
    .local v15, "success":Z
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    if-eqz v15, :cond_43

    .line 391
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v11

    .line 393
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v11, :cond_43

    .line 394
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 407
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v12    # "identityToken":J
    .end local v15    # "success":Z
    :goto_3a
    return-object v11

    .line 403
    :catch_3b
    move-exception v14

    .line 404
    .local v14, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityInteractionClient"

    const-string v4, "Error while calling remote findAccessibilityNodeInfosByViewText"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_3a
.end method

.method public findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;
    .registers 23
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    :try_start_0
    invoke-virtual/range {p0 .. p1}, getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 335
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_43

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 337
    .local v7, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 338
    .local v12, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p0

    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v15

    .line 341
    .local v15, "success":Z
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    if-eqz v15, :cond_43

    .line 343
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v11

    .line 345
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v11, :cond_43

    .line 346
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 359
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v12    # "identityToken":J
    .end local v15    # "success":Z
    :goto_3a
    return-object v11

    .line 355
    :catch_3b
    move-exception v14

    .line 356
    .local v14, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityInteractionClient"

    const-string v4, "Error while calling remote findAccessibilityNodeInfoByViewIdInActiveWindow"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_3a
.end method

.method public findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 23
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "focusType"    # I

    .prologue
    .line 429
    :try_start_0
    invoke-virtual/range {p0 .. p1}, getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 430
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_41

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 432
    .local v7, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 433
    .local v12, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v8, p0

    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v15

    .line 436
    .local v15, "success":Z
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    if-eqz v15, :cond_41

    .line 438
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    .line 440
    .local v11, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_38} :catch_39

    .line 451
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "identityToken":J
    .end local v15    # "success":Z
    :goto_38
    return-object v11

    .line 448
    :catch_39
    move-exception v14

    .line 449
    .local v14, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityInteractionClient"

    const-string v4, "Error while calling remote findFocus"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_41
    const/4 v11, 0x0

    goto :goto_38
.end method

.method public focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 23
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "direction"    # I

    .prologue
    .line 473
    :try_start_0
    invoke-virtual/range {p0 .. p1}, getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 474
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_41

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 476
    .local v7, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 477
    .local v12, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v8, p0

    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v15

    .line 480
    .local v15, "success":Z
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 481
    if-eqz v15, :cond_41

    .line 482
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    .line 484
    .local v11, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_38} :catch_39

    .line 495
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "identityToken":J
    .end local v15    # "success":Z
    :goto_38
    return-object v11

    .line 492
    :catch_39
    move-exception v14

    .line 493
    .local v14, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityInteractionClient"

    const-string v4, "Error while calling remote accessibilityFocusSearch"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_41
    const/4 v11, 0x0

    goto :goto_38
.end method

.method public getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .registers 4
    .param p1, "connectionId"    # I

    .prologue
    .line 749
    sget-object v1, sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 750
    :try_start_3
    sget-object v0, sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    monitor-exit v1

    return-object v0

    .line 751
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "connectionId"    # I

    .prologue
    .line 160
    const v3, 0x7fffffff

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 10
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0, p1}, getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 177
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_2a

    .line 178
    sget-object v5, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v5, p2}, Landroid/view/accessibility/AccessibilityCache;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 180
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_f

    .line 204
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_e
    return-object v4

    .line 189
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 190
    .local v2, "identityToken":J
    invoke-interface {v0, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 191
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    if-eqz v4, :cond_2a

    .line 193
    sget-object v5, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_e

    .line 201
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "identityToken":J
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catch_22
    move-exception v1

    .line 202
    .local v1, "re":Landroid/os/RemoteException;
    const-string v5, "AccessibilityInteractionClient"

    const-string v6, "Error while calling remote getWindow"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_2a
    const/4 v4, 0x0

    goto :goto_e
.end method

.method public getWindows(I)Ljava/util/List;
    .registers 12
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0, p1}, getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 216
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_39

    .line 217
    sget-object v8, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityCache;->getWindows()Ljava/util/List;

    move-result-object v7

    .line 218
    .local v7, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-eqz v7, :cond_f

    .line 246
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_e
    :goto_e
    return-object v7

    .line 227
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v7    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 228
    .local v2, "identityToken":J
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindows()Ljava/util/List;

    move-result-object v7

    .line 229
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    if-eqz v7, :cond_39

    .line 231
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 232
    .local v6, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v6, :cond_e

    .line 233
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 234
    .local v5, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    sget-object v8, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v8, v5}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_31

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 243
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "i":I
    .end local v2    # "identityToken":J
    .end local v5    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6    # "windowCount":I
    .end local v7    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catch_31
    move-exception v4

    .line 244
    .local v4, "re":Landroid/os/RemoteException;
    const-string v8, "AccessibilityInteractionClient"

    const-string v9, "Error while calling remote getWindows"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_e
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 543
    sget-object v0, sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 544
    return-void
.end method

.method public performAccessibilityAction(IIJILandroid/os/Bundle;)Z
    .registers 22
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 516
    :try_start_0
    invoke-virtual/range {p0 .. p1}, getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 517
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_37

    .line 518
    iget-object v1, p0, mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 519
    .local v6, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 520
    .local v10, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v7, p0

    invoke-interface/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v13

    .line 523
    .local v13, "success":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    if-eqz v13, :cond_37

    .line 525
    invoke-direct {p0, v6}, getPerformAccessibilityActionResultAndClear(I)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result v1

    .line 535
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "interactionId":I
    .end local v10    # "identityToken":J
    .end local v13    # "success":Z
    :goto_2e
    return v1

    .line 532
    :catch_2f
    move-exception v12

    .line 533
    .local v12, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote performAccessibilityAction"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v12    # "re":Landroid/os/RemoteException;
    :cond_37
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public removeConnection(I)V
    .registers 4
    .param p1, "connectionId"    # I

    .prologue
    .line 772
    sget-object v1, sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 773
    :try_start_3
    sget-object v0, sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 774
    monitor-exit v1

    .line 775
    return-void

    .line 774
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I

    .prologue
    .line 566
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 567
    :try_start_3
    iget v0, p0, mInteractionId:I

    if-le p2, v0, :cond_b

    .line 568
    iput-object p1, p0, mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 569
    iput p2, p0, mInteractionId:I

    .line 571
    :cond_b
    iget-object v0, p0, mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 572
    monitor-exit v1

    .line 573
    return-void

    .line 572
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .registers 7
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v2, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 605
    :try_start_3
    iget v1, p0, mInteractionId:I

    if-le p2, v1, :cond_1f

    .line 606
    if-eqz p1, :cond_2e

    .line 609
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v1, v3, :cond_26

    const/4 v0, 0x1

    .line 610
    .local v0, "isIpcCall":Z
    :goto_14
    if-nez v0, :cond_28

    .line 611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 618
    .end local v0    # "isIpcCall":Z
    :goto_1d
    iput p2, p0, mInteractionId:I

    .line 620
    :cond_1f
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 621
    monitor-exit v2

    .line 622
    return-void

    .line 609
    :cond_26
    const/4 v0, 0x0

    goto :goto_14

    .line 613
    .restart local v0    # "isIpcCall":Z
    :cond_28
    iput-object p1, p0, mFindAccessibilityNodeInfosResult:Ljava/util/List;

    goto :goto_1d

    .line 621
    .end local v0    # "isIpcCall":Z
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1

    .line 616
    :cond_2e
    :try_start_2e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, mFindAccessibilityNodeInfosResult:Ljava/util/List;
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2b

    goto :goto_1d
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .registers 5
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I

    .prologue
    .line 643
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_3
    iget v0, p0, mInteractionId:I

    if-le p2, v0, :cond_b

    .line 645
    iput-boolean p1, p0, mPerformAccessibilityActionResult:Z

    .line 646
    iput p2, p0, mInteractionId:I

    .line 648
    :cond_b
    iget-object v0, p0, mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 649
    monitor-exit v1

    .line 650
    return-void

    .line 649
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setSameThreadMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 147
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_3
    iput-object p1, p0, mSameThreadMessage:Landroid/os/Message;

    .line 149
    iget-object v0, p0, mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method
