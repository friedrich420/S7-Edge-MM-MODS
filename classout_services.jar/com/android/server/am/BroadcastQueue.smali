.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$AppNotResponding;,
        Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
    }
.end annotation


# static fields
.field static final BROADCAST_INTENT_MSG:I = 0xc8

.field static final BROADCAST_QUEUE_TYPE_BG:I = 0x3

.field static final BROADCAST_QUEUE_TYPE_DF:I = 0x5

.field static final BROADCAST_QUEUE_TYPE_FG:I = 0x2

.field static final BROADCAST_QUEUE_TYPE_SE:I = 0x1

.field static final BROADCAST_QUEUE_TYPE_SP:I = 0x4

.field static final BROADCAST_STATS_ENABLED:Z = false

.field static final BROADCAST_TIMEOUT_FOR_DELAYED:I = 0xbb8

.field static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field static final MAX_DELAYED_BROADCAST_HISTORY:I = 0x3

.field static final SCHEDULE_TEMP_WHITELIST_MSG:I = 0xca

.field static final SNN_MAX_EMPTY_PROC_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_MU:Ljava/lang/String; = "BroadcastQueue_MU"

.field static final TAG_SPLIT_INTENT:Ljava/lang/String; = "splitIntent"

.field static mDeferrableIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mReplaceableIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static quickbootWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final MAX_ABORTED_BROADCAST_HISTORY:I

.field final MAX_BROADCAST_HISTORY:I

.field final MAX_BROADCAST_SUMMARY_HISTORY:I

.field final mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field mAbortedHistoryNext:I

.field final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastSummaryHistoryToString:[Ljava/lang/String;

.field mBroadcastsScheduled:Z

.field final mDelayBehindServices:Z

.field final mDelayedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field mDelayedHistoryNext:I

.field final mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

.field mHistoryNext:I

.field final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field mPendingBroadcastRecvIndex:I

.field mPendingBroadcastTimeoutMessage:Z

.field mPreviousSendTime:J

.field mQueueIdx:I

.field final mQueueName:Ljava/lang/String;

.field final mQueueType:I

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSummaryHistoryDispatchTime:[J

.field final mSummaryHistoryEnqueueTime:[J

.field final mSummaryHistoryFinishTime:[J

.field mSummaryHistoryNext:I

.field final mTimeoutPeriod:J

.field skipResultReceiver:Z

.field statDroppedBrCount:J

.field statEnqueuedBrCount:J

.field statEnqueuedRxCount:J

.field statMaxBrPendingTime:J

.field statMaxBrTime:J

.field statMaxEnqueuedBrCount:J

.field statTotalBrPendingTime:J

.field statTotalBrTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 226
    const/4 v0, 0x0

    sput-object v0, quickbootWhiteList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZI)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timeoutPeriod"    # J
    .param p6, "allowDelayBehindServices"    # Z
    .param p7, "type"    # I

    .prologue
    const/16 v0, 0xa

    const/16 v1, 0x19

    const/4 v3, 0x0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mParallelBroadcasts:Ljava/util/ArrayList;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 162
    iput v3, p0, mHistoryNext:I

    .line 164
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/android/server/am/BroadcastRecord;

    iput-object v2, p0, mDelayedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 165
    iput v3, p0, mDelayedHistoryNext:I

    .line 174
    iput v3, p0, mSummaryHistoryNext:I

    .line 191
    iput-boolean v3, p0, mBroadcastsScheduled:Z

    .line 208
    const/4 v2, 0x0

    iput-object v2, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 223
    iput v3, p0, mAbortedHistoryNext:I

    .line 280
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 281
    new-instance v2, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    iput-object v2, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    .line 282
    iput-object p3, p0, mQueueName:Ljava/lang/String;

    .line 284
    iput p7, p0, mQueueType:I

    .line 287
    const-string/jumbo v2, "foreground"

    iget-object v3, p0, mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "background"

    iget-object v3, p0, mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 288
    :cond_4e
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_a0

    :goto_54
    iput v0, p0, MAX_BROADCAST_HISTORY:I

    .line 289
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_a3

    move v0, v1

    :goto_5d
    iput v0, p0, MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 295
    :goto_5f
    iget v0, p0, MAX_BROADCAST_HISTORY:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 296
    iget v0, p0, MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    .line 297
    iget v0, p0, MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, mSummaryHistoryEnqueueTime:[J

    .line 298
    iget v0, p0, MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, mSummaryHistoryDispatchTime:[J

    .line 299
    iget v0, p0, MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, mSummaryHistoryFinishTime:[J

    .line 301
    iget v0, p0, MAX_BROADCAST_HISTORY:I

    iput v0, p0, MAX_ABORTED_BROADCAST_HISTORY:I

    .line 302
    iget v0, p0, MAX_ABORTED_BROADCAST_HISTORY:I

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 304
    iput-wide p4, p0, mTimeoutPeriod:J

    .line 305
    iput-boolean p6, p0, mDelayBehindServices:Z

    .line 307
    const-class v1, Lcom/android/server/am/BroadcastQueue;

    monitor-enter v1

    .line 308
    :try_start_90
    sget-object v0, mDeferrableIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_97

    .line 309
    invoke-static {}, initializeDeferrableIntents()V

    .line 311
    :cond_97
    sget-object v0, mReplaceableIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_9e

    .line 312
    invoke-static {}, initializeReplaceableIntents()V

    .line 314
    :cond_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_bc

    .line 315
    return-void

    .line 288
    :cond_a0
    const/16 v0, 0x32

    goto :goto_54

    .line 289
    :cond_a3
    const/16 v0, 0x12c

    goto :goto_5d

    .line 291
    :cond_a6
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_b7

    :goto_ac
    iput v0, p0, MAX_BROADCAST_HISTORY:I

    .line 292
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_b9

    :goto_b4
    iput v1, p0, MAX_BROADCAST_SUMMARY_HISTORY:I

    goto :goto_5f

    :cond_b7
    move v0, v1

    .line 291
    goto :goto_ac

    .line 292
    :cond_b9
    const/16 v1, 0x64

    goto :goto_b4

    .line 314
    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit v1
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v0
.end method

.method private final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 1851
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v3, :cond_8

    .line 1919
    :cond_7
    :goto_7
    return-void

    .line 1855
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 1889
    const/4 v3, 0x5

    iget v4, p0, mQueueType:I

    if-ne v3, v4, :cond_1b

    .line 1890
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    .line 1891
    .local v2, "tmpreceivers":Ljava/util/List;
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object v3, p1, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    .line 1892
    iput-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 1896
    .end local v2    # "tmpreceivers":Ljava/util/List;
    :cond_1b
    iget-object v3, p0, mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v4, p0, mHistoryNext:I

    aput-object p1, v3, v4

    .line 1897
    iget v3, p0, mHistoryNext:I

    iget v4, p0, MAX_BROADCAST_HISTORY:I

    invoke-direct {p0, v3, v8, v4}, ringAdvance(III)I

    move-result v3

    iput v3, p0, mHistoryNext:I

    .line 1902
    const-wide/16 v0, 0x0

    .line 1903
    .local v0, "duration":J
    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_7c

    .line 1904
    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long v0, v4, v6

    .line 1908
    :cond_39
    :goto_39
    iget-object v3, p0, mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget v4, p0, mSummaryHistoryNext:I

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, v5, v0, v1}, makeBroadcastSummaryToStringLocked(Landroid/content/Intent;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1909
    iget-object v3, p0, mSummaryHistoryEnqueueTime:[J

    iget v4, p0, mSummaryHistoryNext:I

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v6, v3, v4

    .line 1910
    iget-object v3, p0, mSummaryHistoryDispatchTime:[J

    iget v4, p0, mSummaryHistoryNext:I

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v6, v3, v4

    .line 1911
    iget-object v3, p0, mSummaryHistoryFinishTime:[J

    iget v4, p0, mSummaryHistoryNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 1912
    iget v3, p0, mSummaryHistoryNext:I

    iget v4, p0, MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {p0, v3, v8, v4}, ringAdvance(III)I

    move-result v3

    iput v3, p0, mSummaryHistoryNext:I

    .line 1914
    const-wide/16 v4, 0xbb8

    cmp-long v3, v0, v4

    if-lez v3, :cond_7

    .line 1915
    iget-object v3, p0, mDelayedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v4, p0, mDelayedHistoryNext:I

    aput-object p1, v3, v4

    .line 1916
    iget v3, p0, mDelayedHistoryNext:I

    const/4 v4, 0x3

    invoke-direct {p0, v3, v8, v4}, ringAdvance(III)I

    goto :goto_7

    .line 1905
    :cond_7c
    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_39

    .line 1906
    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v0, v4, v6

    goto :goto_39
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "ordered"    # Z

    .prologue
    .line 696
    const/16 v21, 0x0

    .line 698
    .local v21, "skip":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 700
    :cond_26
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 701
    .local v20, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 702
    .local v14, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v2, :cond_94

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v14}, Lcom/sec/android/emergencymode/EmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 704
    const/16 v21, 0x1

    .line 705
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping deliverToRegisteredReceiverLocked ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": broadcast skipped"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .end local v14    # "action":Ljava/lang/String;
    .end local v20    # "pkgName":Ljava/lang/String;
    :cond_94
    const/16 v19, -0x1

    .line 715
    .local v19, "perm":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v2, :cond_126

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v19

    .line 725
    if-eqz v19, :cond_35c

    .line 726
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: broadcasting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to registered receiver "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/16 v21, 0x1

    .line 749
    :cond_126
    :goto_126
    if-nez v21, :cond_1e8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1e8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1e8

    .line 750
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_137
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1e8

    .line 751
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v4, v2, v17

    .line 754
    .local v4, "requiredPermission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->uid:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v19

    .line 760
    if-eqz v19, :cond_3f1

    .line 761
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: receiving "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to sender "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/16 v21, 0x1

    .line 791
    .end local v4    # "requiredPermission":Ljava/lang/String;
    .end local v17    # "i":I
    :cond_1e8
    :goto_1e8
    if-nez v21, :cond_28a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1f7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_28a

    .line 792
    :cond_1f7
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v2, Lcom/android/server/am/ReceiverList;->pid:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v2, Lcom/android/server/am/ReceiverList;->uid:I

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v19

    .line 794
    if-eqz v19, :cond_28a

    .line 795
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: security check failed when receiving "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to sender "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/16 v21, 0x1

    .line 805
    :cond_28a
    if-nez v21, :cond_339

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_339

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_339

    .line 809
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: receiving "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires appop "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to sender "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/16 v21, 0x1

    .line 820
    :cond_339
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v10, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4a2

    .line 888
    :cond_35b
    :goto_35b
    return-void

    .line 734
    :cond_35c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v18

    .line 735
    .local v18, "opCode":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_126

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_126

    .line 738
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: broadcasting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires appop "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to registered receiver "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/16 v21, 0x1

    goto/16 :goto_126

    .line 772
    .end local v18    # "opCode":I
    .restart local v4    # "requiredPermission":Ljava/lang/String;
    .restart local v17    # "i":I
    :cond_3f1
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v15

    .line 773
    .local v15, "appOp":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_49e

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v15, v2, :cond_49e

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v15, v3, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_49e

    .line 777
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: receiving "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires appop "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to sender "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/16 v21, 0x1

    .line 787
    goto/16 :goto_1e8

    .line 750
    :cond_49e
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_137

    .line 825
    .end local v4    # "requiredPermission":Ljava/lang/String;
    .end local v15    # "appOp":I
    .end local v17    # "i":I
    :cond_4a2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4b4

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v2, :cond_4f2

    .line 826
    :cond_4b4
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping deliver ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": process crashing"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/16 v21, 0x1

    .line 833
    :cond_4f2
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastFilter;->added:Z

    if-nez v2, :cond_536

    .line 834
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping deliver ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": filter unregistered"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/16 v21, 0x1

    .line 839
    :cond_536
    if-nez v21, :cond_35b

    .line 843
    if-eqz p3, :cond_582

    .line 844
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 845
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 846
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 847
    const/4 v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 848
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_582

    .line 854
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 855
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 865
    :cond_582
    :try_start_582
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v2, :cond_598

    .line 866
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v2, v3

    .line 870
    :cond_598
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v6, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget v3, v0, mQueueIdx:I

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setBroadcastQueueHint(I)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v5 .. v13}, performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 873
    if-eqz p3, :cond_35b

    .line 874
    const/4 v2, 0x3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_5d7
    .catch Landroid/os/RemoteException; {:try_start_582 .. :try_end_5d7} :catch_5d9

    goto/16 :goto_35b

    .line 876
    :catch_5d9
    move-exception v16

    .line 877
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure sending broadcast "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    if-eqz p3, :cond_35b

    .line 879
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 880
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 881
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 882
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_35b

    .line 883
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    goto/16 :goto_35b
.end method

.method private getWhiteList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1714
    sget-object v0, quickbootWhiteList:Ljava/util/ArrayList;

    if-nez v0, :cond_19

    .line 1715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, quickbootWhiteList:Ljava/util/ArrayList;

    .line 1717
    sget-object v0, quickbootWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    sget-object v0, quickbootWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.qapp.quickboot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    :cond_19
    sget-object v0, quickbootWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static initializeDeferrableIntents()V
    .registers 2

    .prologue
    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mDeferrableIntents:Ljava/util/ArrayList;

    .line 919
    sget-object v0, mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    sget-object v0, mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    sget-object v0, mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    sget-object v0, mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    sget-object v0, mDeferrableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    return-void
.end method

.method private static initializeReplaceableIntents()V
    .registers 2

    .prologue
    .line 927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mReplaceableIntents:Ljava/util/ArrayList;

    .line 929
    sget-object v0, mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    sget-object v0, mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    sget-object v0, mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    sget-object v0, mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    sget-object v0, mReplaceableIntents:Ljava/util/ArrayList;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    return-void
.end method

.method static final isDeferrable(ZLandroid/content/Intent;)Z
    .registers 5
    .param p0, "ordered"    # Z
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 937
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEFERRED_Q_ENABLED:Z

    if-nez v1, :cond_6

    .line 943
    :cond_5
    :goto_5
    return v0

    .line 940
    :cond_6
    const/4 v1, 0x1

    if-ne p0, v1, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 943
    :cond_12
    sget-object v0, mDeferrableIntents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static final isReplaceable(ZLandroid/content/Intent;)Z
    .registers 5
    .param p0, "ordered"    # Z
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 947
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEFERRED_Q_ENABLED:Z

    if-nez v1, :cond_6

    .line 953
    :cond_5
    :goto_5
    return v0

    .line 950
    :cond_6
    const/4 v1, 0x1

    if-ne p0, v1, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 953
    :cond_12
    sget-object v0, mReplaceableIntents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private final makeBroadcastSummaryToStringLocked(Landroid/content/Intent;J)Ljava/lang/String;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1982
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1983
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v2, v3, v3, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    if-eqz v0, :cond_48

    .line 1987
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1988
    const-string v2, "    extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    :cond_48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1984
    :cond_4d
    const-string v2, ", --ms"

    goto :goto_32
.end method

.method private static performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 19
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    if-eqz p0, :cond_21

    .line 679
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_19

    .line 682
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 692
    :goto_18
    return-void

    .line 686
    :cond_19
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "app.thread must not be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_21
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    goto :goto_18
.end method

.method private final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 420
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_b

    .line 421
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 423
    :cond_b
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 424
    iput-object p2, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 425
    iput-object p1, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 426
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 427
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 428
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 431
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 433
    const/4 v10, 0x0

    .line 438
    .local v10, "started":Z
    :try_start_2f
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x5

    iget v1, p0, mQueueType:I

    if-ne v0, v1, :cond_b1

    .line 443
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTimeDeferred:[J

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 449
    :goto_4f
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v2, p0, mQueueIdx:I

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setBroadcastQueueHint(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v7, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v8, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v9, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 453
    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Process cur broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DELIVERED for app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_2f .. :try_end_a7} :catchall_be

    .line 455
    const/4 v10, 0x1

    .line 457
    if-nez v10, :cond_b0

    .line 460
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 461
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 462
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 465
    :cond_b0
    return-void

    .line 445
    :cond_b1
    :try_start_b1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_bd
    .catchall {:try_start_b1 .. :try_end_bd} :catchall_be

    goto :goto_4f

    .line 457
    :catchall_be
    move-exception v0

    if-nez v10, :cond_c7

    .line 460
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 461
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 462
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    :cond_c7
    throw v0
.end method

.method private final ringAdvance(III)I
    .registers 4
    .param p1, "x"    # I
    .param p2, "increment"    # I
    .param p3, "ringSize"    # I

    .prologue
    .line 1844
    add-int/2addr p1, p2

    .line 1845
    if-gez p1, :cond_6

    add-int/lit8 p1, p3, -0x1

    .line 1847
    .end local p1    # "x":I
    :cond_5
    :goto_5
    return p1

    .line 1846
    .restart local p1    # "x":I
    :cond_6
    if-lt p1, p3, :cond_5

    const/4 p1, 0x0

    goto :goto_5
.end method


# virtual methods
.method public backgroundServicesFinishedLocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v1, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 664
    iget-object v1, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 665
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_29

    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_29

    .line 666
    const-string v1, "BroadcastQueue"

    const-string v2, "Resuming delayed broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 668
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 669
    invoke-virtual {p0, v3}, processNextBroadcast(Z)V

    .line 672
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_29
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .registers 22
    .param p1, "fromMsg"    # Z

    .prologue
    .line 1739
    if-eqz p1, :cond_7

    .line 1740
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mPendingBroadcastTimeoutMessage:Z

    .line 1743
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_12

    .line 1841
    :cond_11
    :goto_11
    return-void

    .line 1747
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1748
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1749
    .local v5, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_60

    .line 1750
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_44

    .line 1752
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1753
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, mTimeoutPeriod:J

    add-long v18, v6, v8

    .line 1754
    .local v18, "timeoutTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, setBroadcastTimeoutLocked(J)V

    goto :goto_11

    .line 1757
    .end local v18    # "timeoutTime":J
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v4, :cond_11

    .line 1764
    iget-wide v6, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, mTimeoutPeriod:J

    add-long v18, v6, v8

    .line 1765
    .restart local v18    # "timeoutTime":J
    cmp-long v4, v18, v16

    if-lez v4, :cond_60

    .line 1774
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, setBroadcastTimeoutLocked(J)V

    goto :goto_11

    .line 1779
    .end local v18    # "timeoutTime":J
    :cond_60
    move-object/from16 v0, p0

    iget-object v4, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/BroadcastRecord;

    .line 1780
    .local v14, "br":Lcom/android/server/am/BroadcastRecord;
    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_b1

    .line 1785
    const-string v6, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "] Waited long enough for: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_ae

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    :goto_95
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const/4 v4, 0x0

    iput-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1788
    const/4 v4, 0x0

    iput v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1789
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, processNextBroadcast(Z)V

    goto/16 :goto_11

    .line 1785
    :cond_ae
    const-string v4, "(null)"

    goto :goto_95

    .line 1793
    :cond_b1
    const-string v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Timeout of broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - receiver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", started "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v8, v16, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1796
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 1799
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-gtz v4, :cond_12a

    .line 1800
    const-string v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Timeout on receiver with nextReceiver <= 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1804
    :cond_12a
    const/4 v12, 0x0

    .line 1805
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v11, 0x0

    .line 1807
    .local v11, "anrMessage":Ljava/lang/String;
    iget-object v4, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 1808
    .local v15, "curReceiver":Ljava/lang/Object;
    const-string v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver during timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1810
    instance-of v4, v15, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_1ce

    move-object v13, v15

    .line 1811
    check-cast v13, Lcom/android/server/am/BroadcastFilter;

    .line 1812
    .local v13, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v4, :cond_182

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_182

    .line 1814
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1815
    :try_start_16f
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v12, v0

    .line 1817
    monitor-exit v6
    :try_end_182
    .catchall {:try_start_16f .. :try_end_182} :catchall_1cb

    .line 1823
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_182
    :goto_182
    if-eqz v12, :cond_19d

    .line 1824
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1827
    :cond_19d
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v4, v5, :cond_1a8

    .line 1828
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1832
    :cond_1a8
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v9, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1834
    invoke-virtual/range {p0 .. p0}, scheduleBroadcastsLocked()V

    .line 1836
    if-eqz v11, :cond_11

    .line 1839
    move-object/from16 v0, p0

    iget-object v4, v0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v6, Lcom/android/server/am/BroadcastQueue$AppNotResponding;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12, v11}, Lcom/android/server/am/BroadcastQueue$AppNotResponding;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_11

    .line 1817
    .restart local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :catchall_1cb
    move-exception v4

    :try_start_1cc
    monitor-exit v6
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1cb

    throw v4

    .line 1820
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_1ce
    iget-object v12, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    goto :goto_182
.end method

.method final cancelBroadcastTimeoutLocked()V
    .registers 3

    .prologue
    .line 1732
    iget-boolean v0, p0, mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_e

    .line 1733
    iget-object v0, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1734
    const/4 v0, 0x0

    iput-boolean v0, p0, mPendingBroadcastTimeoutMessage:Z

    .line 1736
    :cond_e
    return-void
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 1923
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1924
    .local v1, "didSomething":Z
    const/4 v0, 0x0

    .line 1926
    .local v0, "did":Z
    iget-object v3, p0, mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_22

    .line 1927
    iget-object v3, p0, mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1929
    if-nez p4, :cond_1f

    if-eqz v1, :cond_1f

    .line 1930
    const/4 v3, 0x1

    .line 1951
    :goto_1e
    return v3

    .line 1926
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 1934
    :cond_22
    iget-object v3, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2a
    if-ltz v2, :cond_bd

    .line 1935
    iget-object v3, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 1937
    or-int/2addr v1, v0

    .line 1939
    if-eqz p4, :cond_b9

    if-eqz v0, :cond_b9

    .line 1940
    const-string/jumbo v4, "splitIntent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast cleanup, package="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", queue="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", nextReceiver="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget v3, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v3, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v3, :cond_b9

    .line 1944
    const-string/jumbo v4, "splitIntent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast cleanup, record="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", receivers.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_b9
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2a

    :cond_bd
    move v3, v1

    .line 1951
    goto/16 :goto_1e
.end method

.method final dropDeferredOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const-wide/16 v4, 0x1

    .line 399
    iget-object v2, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_a
    if-nez v0, :cond_4e

    .line 400
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 401
    iget-object v2, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 402
    .local v1, "old":Lcom/android/server/am/BroadcastRecord;
    if-nez v0, :cond_43

    iget-object v2, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v2, v1, :cond_43

    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    if-nez v2, :cond_43

    .line 403
    invoke-virtual {p0}, cancelBroadcastTimeoutLocked()V

    .line 404
    const/4 v2, 0x0

    iput-object v2, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 405
    iget-object v2, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 406
    iget-wide v2, p0, statDroppedBrCount:J

    add-long/2addr v2, v4

    iput-wide v2, p0, statDroppedBrCount:J

    .line 399
    .end local v1    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 408
    .restart local v1    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_43
    iget-object v2, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 409
    iget-wide v2, p0, statDroppedBrCount:J

    add-long/2addr v2, v4

    iput-wide v2, p0, statDroppedBrCount:J

    goto :goto_40

    .line 413
    .end local v1    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_4e
    return-void
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .registers 31
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z

    .prologue
    .line 1997
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy-MM-dd HH:mm:ss"

    invoke-direct/range {v17 .. v18}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1998
    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, mParallelBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1de

    .line 2000
    :cond_28
    const/4 v12, 0x0

    .line 2001
    .local v12, "printed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mParallelBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .local v7, "i":I
    :goto_35
    if-ltz v7, :cond_c6

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, mParallelBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 2003
    .local v5, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_58

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_58

    .line 2001
    :goto_55
    add-int/lit8 v7, v7, -0x1

    goto :goto_35

    .line 2006
    :cond_58
    if-nez v12, :cond_88

    .line 2007
    if-eqz p7, :cond_5f

    .line 2008
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2010
    :cond_5f
    const/16 p7, 0x1

    .line 2011
    const/4 v12, 0x1

    .line 2012
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Active broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2014
    :cond_88
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Active Broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_55

    .line 2017
    .end local v5    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_c6
    const/4 v12, 0x0

    .line 2018
    const/16 p7, 0x1

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    :goto_d5
    if-ltz v7, :cond_176

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 2021
    .restart local v5    # "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_f8

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f8

    .line 2019
    :goto_f5
    add-int/lit8 v7, v7, -0x1

    goto :goto_d5

    .line 2024
    :cond_f8
    if-nez v12, :cond_128

    .line 2025
    if-eqz p7, :cond_ff

    .line 2026
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2028
    :cond_ff
    const/16 p7, 0x1

    .line 2029
    const/4 v12, 0x1

    .line 2030
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Active ordered broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    :cond_128
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Active Ordered Broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/BroadcastRecord;

    const-string v19, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_f5

    .line 2035
    .end local v5    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_176
    if-eqz p6, :cond_196

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1de

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1de

    .line 2037
    :cond_196
    if-eqz p7, :cond_19b

    .line 2038
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2040
    :cond_19b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Pending broadcast ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a3

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    const-string v19, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 2046
    :goto_1dc
    const/16 p7, 0x1

    .line 2051
    .end local v7    # "i":I
    .end local v12    # "printed":Z
    :cond_1de
    const/4 v12, 0x0

    .line 2053
    .restart local v12    # "printed":Z
    const/4 v10, 0x0

    .line 2054
    .local v10, "printBootCompleted":Z
    const/4 v11, 0x0

    .line 2056
    .local v11, "printBootCompletedFinished":Z
    const/4 v7, -0x1

    .line 2057
    .restart local v7    # "i":I
    move-object/from16 v0, p0

    iget v9, v0, mHistoryNext:I

    .line 2058
    .local v9, "lastIndex":I
    move/from16 v16, v9

    .line 2062
    .local v16, "ringIndex":I
    :cond_1e8
    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, MAX_BROADCAST_HISTORY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, ringAdvance(III)I

    move-result v16

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    aget-object v15, v18, v16

    .line 2065
    .local v15, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v10, :cond_218

    .line 2066
    const/4 v10, 0x0

    .line 2067
    const/4 v11, 0x1

    .line 2068
    move/from16 v16, v9

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, MAX_BROADCAST_HISTORY:I

    move/from16 v19, v0

    aget-object v15, v18, v19

    .line 2071
    :cond_218
    if-nez v15, :cond_2ae

    .line 2108
    :cond_21a
    :goto_21a
    move/from16 v0, v16

    if-ne v0, v9, :cond_1e8

    if-nez v10, :cond_1e8

    .line 2110
    if-eqz v11, :cond_224

    .line 2111
    add-int/lit8 v7, v7, -0x1

    .line 2114
    :cond_224
    if-nez p6, :cond_252

    .line 2115
    move-object/from16 v0, p0

    iget v0, v0, mSummaryHistoryNext:I

    move/from16 v16, v0

    move/from16 v9, v16

    .line 2118
    const/4 v12, 0x0

    .line 2119
    const/4 v7, -0x1

    .line 2141
    :cond_230
    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, MAX_BROADCAST_SUMMARY_HISTORY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, ringAdvance(III)I

    move-result v16

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v8, v18, v16

    .line 2144
    .local v8, "intent":Ljava/lang/String;
    if-nez v8, :cond_3cc

    .line 2184
    :goto_24e
    move/from16 v0, v16

    if-ne v0, v9, :cond_230

    .line 2189
    .end local v8    # "intent":Ljava/lang/String;
    :cond_252
    :goto_252
    const/4 v13, 0x0

    .line 2190
    .local v13, "printedforAbortedTitle":Z
    const/4 v7, -0x1

    .line 2191
    move-object/from16 v0, p0

    iget v9, v0, mAbortedHistoryNext:I

    .line 2192
    move/from16 v16, v9

    .line 2194
    :cond_25a
    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, MAX_ABORTED_BROADCAST_HISTORY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, ringAdvance(III)I

    move-result v16

    .line 2195
    move-object/from16 v0, p0

    iget-object v0, v0, mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    aget-object v15, v18, v16

    .line 2196
    if-nez v15, :cond_4eb

    .line 2226
    :cond_278
    :goto_278
    move/from16 v0, v16

    if-ne v0, v9, :cond_25a

    .line 2231
    const/4 v14, 0x0

    .line 2232
    .local v14, "printedforDelayedTitle":Z
    const/4 v7, -0x1

    .line 2233
    move-object/from16 v0, p0

    iget v9, v0, mDelayedHistoryNext:I

    .line 2234
    move/from16 v16, v9

    .line 2236
    :cond_284
    const/16 v18, -0x1

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, ringAdvance(III)I

    move-result v16

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, mDelayedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v18, v0

    aget-object v15, v18, v16

    .line 2238
    if-nez v15, :cond_5db

    .line 2278
    :cond_29e
    :goto_29e
    move/from16 v0, v16

    if-ne v0, v9, :cond_284

    .line 2293
    return p7

    .line 2044
    .end local v9    # "lastIndex":I
    .end local v10    # "printBootCompleted":Z
    .end local v11    # "printBootCompletedFinished":Z
    .end local v13    # "printedforAbortedTitle":Z
    .end local v14    # "printedforDelayedTitle":Z
    .end local v15    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v16    # "ringIndex":I
    :cond_2a3
    const-string v18, "    (null)"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1dc

    .line 2075
    .restart local v9    # "lastIndex":I
    .restart local v10    # "printBootCompleted":Z
    .restart local v11    # "printBootCompletedFinished":Z
    .restart local v15    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v16    # "ringIndex":I
    :cond_2ae
    add-int/lit8 v7, v7, 0x1

    .line 2076
    if-eqz p6, :cond_2c0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21a

    .line 2079
    :cond_2c0
    if-nez v12, :cond_2f0

    .line 2080
    if-eqz p7, :cond_2c7

    .line 2081
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2083
    :cond_2c7
    const/16 p7, 0x1

    .line 2084
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Historical broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    const/4 v12, 0x1

    .line 2087
    :cond_2f0
    if-eqz p5, :cond_340

    .line 2088
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Historical Broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2089
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 2104
    :cond_331
    :goto_331
    move/from16 v0, v16

    if-ne v0, v9, :cond_21a

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v18

    if-nez v18, :cond_21a

    if-nez v11, :cond_21a

    .line 2106
    const/4 v10, 0x1

    goto/16 :goto_21a

    .line 2092
    :cond_340
    const-string v18, "  #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2093
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2094
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2095
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3ac

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3ac

    .line 2096
    const-string v18, "    targetComp: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    :cond_3ac
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2099
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_331

    .line 2100
    const-string v18, "    extras: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_331

    .line 2147
    .end local v6    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "intent":Ljava/lang/String;
    :cond_3cc
    if-nez v12, :cond_3fc

    .line 2148
    if-eqz p7, :cond_3d3

    .line 2149
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2151
    :cond_3d3
    const/16 p7, 0x1

    .line 2152
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Historical broadcasts summary ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    const/4 v12, 0x1

    .line 2155
    :cond_3fc
    if-nez p5, :cond_40f

    const/16 v18, 0x32

    move/from16 v0, v18

    if-lt v7, v0, :cond_40f

    .line 2156
    const-string v18, "  ..."

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_252

    .line 2159
    :cond_40f
    add-int/lit8 v7, v7, 0x1

    .line 2160
    const-string v18, "  #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2164
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2165
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, mSummaryHistoryDispatchTime:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, mSummaryHistoryEnqueueTime:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v16

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2168
    const-string v18, " dispatch "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, mSummaryHistoryFinishTime:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, mSummaryHistoryDispatchTime:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v16

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2171
    const-string v18, " finish"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2172
    const-string v18, "    enq="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, mSummaryHistoryEnqueueTime:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    const-string v18, " disp="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2175
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, mSummaryHistoryDispatchTime:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2176
    const-string v18, " fin="

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, mSummaryHistoryFinishTime:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_24e

    .line 2200
    .end local v8    # "intent":Ljava/lang/String;
    .restart local v13    # "printedforAbortedTitle":Z
    :cond_4eb
    add-int/lit8 v7, v7, 0x1

    .line 2201
    if-eqz p6, :cond_4fd

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_278

    .line 2204
    :cond_4fd
    if-nez v13, :cond_52d

    .line 2205
    if-eqz p7, :cond_504

    .line 2206
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2208
    :cond_504
    const/16 p7, 0x1

    .line 2209
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Aborted Historical broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    const/4 v13, 0x1

    .line 2212
    :cond_52d
    const-string v18, "  #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v18, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2213
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_599

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_599

    .line 2216
    const-string v18, "    targetComp: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    :cond_599
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2219
    .restart local v6    # "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_5b7

    .line 2220
    const-string v18, "    extras: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    :cond_5b7
    iget v0, v15, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v18, v0

    add-int/lit8 v4, v18, -0x1

    .line 2223
    .local v4, "abortedIdx":I
    if-ltz v4, :cond_278

    .line 2224
    const-string v18, "    aborted by : "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_278

    .line 2242
    .end local v4    # "abortedIdx":I
    .end local v6    # "bundle":Landroid/os/Bundle;
    .restart local v14    # "printedforDelayedTitle":Z
    :cond_5db
    add-int/lit8 v7, v7, 0x1

    .line 2243
    if-eqz p6, :cond_5ed

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_29e

    .line 2246
    :cond_5ed
    if-nez v14, :cond_61d

    .line 2247
    if-eqz p7, :cond_5f4

    .line 2248
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2250
    :cond_5f4
    const/16 p7, 0x1

    .line 2251
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Delayed Historical broadcasts ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2253
    const/4 v14, 0x1

    .line 2255
    :cond_61d
    if-eqz p5, :cond_660

    .line 2256
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  Delayed Historical Broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2258
    const-string v18, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto/16 :goto_29e

    .line 2261
    :cond_660
    const-string v18, "  #"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2263
    const-string v18, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2265
    const-string v18, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2267
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6cc

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_6cc

    .line 2269
    const-string v18, "    targetComp: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2270
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2272
    :cond_6cc
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2273
    .restart local v6    # "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_29e

    .line 2274
    const-string v18, "    extras: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_29e
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 341
    iget-object v0, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 353
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 328
    iget-object v0, p0, mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 338
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .registers 17
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z
    .param p6, "waitForServices"    # Z

    .prologue
    .line 559
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 560
    .local v5, "state":I
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 561
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 562
    if-nez v5, :cond_2a

    .line 563
    const-string v6, "BroadcastQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "finishReceiver ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mQueueName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] called but state is IDLE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_2a
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 566
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 567
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_42

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-ne v6, p1, :cond_42

    .line 568
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 570
    :cond_42
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v6, :cond_4d

    .line 571
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    iget-object v6, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 573
    :cond_4d
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 574
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 575
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 576
    const/4 v6, 0x0

    iput-object v6, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 580
    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v6, :cond_d6

    .line 582
    const/4 v6, 0x5

    iget v7, p0, mQueueType:I

    if-ne v6, v7, :cond_17a

    .line 583
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTimeDeferred:[J

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 590
    :goto_6e
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService;->mReceiverLogThresholdMs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d6

    .line 591
    const-wide/16 v0, 0x0

    .line 593
    .local v0, "duration":J
    const/4 v6, 0x5

    iget v7, p0, mQueueType:I

    if-ne v6, v7, :cond_188

    .line 594
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTimeDeferred:[J

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTimeDeferred:[J

    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v9, v9, -0x1

    aget-wide v8, v8, v9

    sub-long v0, v6, v8

    .line 602
    :goto_91
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService;->mReceiverLogThresholdMs:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_d6

    .line 603
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_d6

    .line 604
    const-string v6, "BroadcastQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receiver elapsed time["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms],"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "duration":J
    :cond_d6
    iput p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 614
    iput-object p3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 615
    iput-object p4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 616
    if-eqz p5, :cond_19c

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x8000000

    and-int/2addr v6, v7

    if-nez v6, :cond_19c

    .line 617
    iput-boolean p5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 620
    iget-object v6, p0, mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v7, p0, mAbortedHistoryNext:I

    aput-object p1, v6, v7

    .line 621
    iget v6, p0, mAbortedHistoryNext:I

    const/4 v7, 0x1

    iget v8, p0, MAX_ABORTED_BROADCAST_HISTORY:I

    invoke-direct {p0, v6, v7, v8}, ringAdvance(III)I

    .line 627
    :goto_f9
    if-eqz p6, :cond_1a5

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_1a5

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-boolean v6, v6, mDelayBehindServices:Z

    if-eqz v6, :cond_1a5

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v6, v6, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1a5

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v6, v6, mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1a5

    .line 631
    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v7, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a3

    .line 632
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 633
    .local v3, "obj":Ljava/lang/Object;
    instance-of v6, v3, Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_1a1

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .end local v3    # "obj":Ljava/lang/Object;
    move-object v2, v3

    .line 638
    .local v2, "nextReceiver":Landroid/content/pm/ActivityInfo;
    :goto_133
    if-eqz v4, :cond_14b

    if-eqz v2, :cond_14b

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_14b

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a5

    .line 645
    :cond_14b
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveServices;->hasBackgroundServices(I)Z

    move-result v6

    if-eqz v6, :cond_1a5

    .line 646
    const-string v6, "BroadcastQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delay finish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v6, 0x4

    iput v6, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 648
    const/4 v6, 0x0

    .line 658
    .end local v2    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :goto_179
    return v6

    .line 585
    :cond_17a
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    goto/16 :goto_6e

    .line 597
    .restart local v0    # "duration":J
    :cond_188
    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v9, v9, -0x1

    aget-wide v8, v8, v9

    sub-long v0, v6, v8

    goto/16 :goto_91

    .line 624
    .end local v0    # "duration":J
    :cond_19c
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    goto/16 :goto_f9

    .line 633
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_1a1
    const/4 v2, 0x0

    goto :goto_133

    .line 635
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1a3
    const/4 v2, 0x0

    .restart local v2    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_133

    .line 653
    .end local v2    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_1a5
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 658
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1ae

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1b0

    :cond_1ae
    const/4 v6, 0x1

    goto :goto_179

    :cond_1b0
    const/4 v6, 0x0

    goto :goto_179
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .registers 5
    .param p1, "receiver"    # Landroid/os/IBinder;

    .prologue
    .line 548
    iget-object v1, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_18

    .line 549
    iget-object v1, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 550
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-ne v1, p1, :cond_18

    .line 554
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .registers 3
    .param p1, "pid"    # I

    .prologue
    .line 324
    iget-object v0, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_e

    iget-object v0, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1955
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v2, v4, -0x1

    .line 1956
    .local v2, "logIndex":I
    if-ltz v2, :cond_8d

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8d

    .line 1957
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1958
    .local v1, "curReceiver":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_53

    move-object v0, v1

    .line 1959
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1960
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    const/16 v4, 0x7548

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1978
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v1    # "curReceiver":Ljava/lang/Object;
    :goto_52
    return-void

    .restart local v1    # "curReceiver":Ljava/lang/Object;
    :cond_53
    move-object v3, v1

    .line 1964
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1965
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    const/16 v4, 0x7549

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_52

    .line 1970
    .end local v1    # "curReceiver":Ljava/lang/Object;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8d
    if-gez v2, :cond_a7

    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_a7
    const/16 v4, 0x7549

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "NONE"

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_52
.end method

.method final processNextBroadcast(Z)V
    .registers 3
    .param p1, "fromMsg"    # Z

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, processNextBroadcast(ZZ)Z

    .line 959
    return-void
.end method

.method final processNextBroadcast(ZZ)Z
    .registers 59
    .param p1, "fromMsg"    # Z
    .param p2, "trim"    # Z

    .prologue
    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v53, v0

    monitor-enter v53

    .line 976
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 978
    if-eqz p1, :cond_15

    .line 979
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mBroadcastsScheduled:Z

    .line 983
    :cond_15
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_82

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, mParallelBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/BroadcastRecord;

    .line 985
    .local v46, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v46

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v46

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 987
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    .line 990
    .local v17, "N":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_44
    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_77

    .line 991
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    .line 997
    .local v52, "target":Ljava/lang/Object;
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    aput-wide v10, v4, v30

    .line 999
    check-cast v52, Lcom/android/server/am/BroadcastFilter;

    .end local v52    # "target":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2, v4}, deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    .line 1002
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    aput-wide v10, v4, v30

    .line 990
    add-int/lit8 v30, v30, 0x1

    goto :goto_44

    .line 1005
    :cond_77
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_15

    .line 1708
    .end local v17    # "N":I
    .end local v30    # "i":I
    .end local v46    # "r":Lcom/android/server/am/BroadcastRecord;
    :catchall_7f
    move-exception v4

    monitor-exit v53
    :try_end_81
    .catchall {:try_start_7 .. :try_end_81} :catchall_7f

    throw v4

    .line 1015
    :cond_82
    :try_start_82
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_102

    .line 1021
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_8f
    .catchall {:try_start_82 .. :try_end_8f} :catchall_7f

    .line 1022
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v7, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/am/ProcessRecord;

    .line 1023
    .local v45, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v45, :cond_ab

    move-object/from16 v0, v45

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v4, :cond_b3

    :cond_ab
    const/16 v34, 0x1

    .line 1024
    .local v34, "isDead":Z
    :goto_ad
    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_8f .. :try_end_ae} :catchall_b6

    .line 1025
    if-nez v34, :cond_b9

    .line 1027
    const/4 v4, 0x0

    :try_start_b1
    monitor-exit v53
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_7f

    .line 1710
    .end local v34    # "isDead":Z
    .end local v45    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_b2
    return v4

    .line 1023
    .restart local v45    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_b3
    const/16 v34, 0x0

    goto :goto_ad

    .line 1024
    .end local v45    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_b6
    move-exception v4

    :try_start_b7
    monitor-exit v5
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v4

    .line 1029
    .restart local v34    # "isDead":Z
    .restart local v45    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_b9
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pending app  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " died before responding to broadcast"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1033
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v5, v0, mPendingBroadcastRecvIndex:I

    iput v5, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1034
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1038
    .end local v34    # "isDead":Z
    .end local v45    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_102
    const/16 v36, 0x0

    .line 1040
    .local v36, "looped":Z
    :cond_104
    move-object/from16 v0, p0

    iget-object v4, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_135

    .line 1043
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, mQueueType:I

    if-eq v4, v5, :cond_11c

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1047
    :cond_11c
    if-eqz v36, :cond_131

    .line 1051
    if-eqz p2, :cond_12a

    .line 1052
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 1053
    const/4 v4, 0x1

    monitor-exit v53

    goto :goto_b2

    .line 1055
    :cond_12a
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1057
    :cond_131
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1060
    :cond_135
    const-string v4, "background"

    move-object/from16 v0, p0

    iget-object v5, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_157

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_157

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueOnlyRun:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_157

    .line 1063
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1067
    :cond_157
    move-object/from16 v0, p0

    iget-object v4, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/BroadcastRecord;

    .line 1068
    .restart local v46    # "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v29, 0x0

    .line 1077
    .local v29, "forceReceive":Z
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v4, :cond_235

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v40

    .line 1078
    .local v40, "numReceivers":I
    :goto_172
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v4, :cond_22b

    move-object/from16 v0, v46

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_22b

    .line 1079
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 1080
    .local v38, "now":J
    if-lez v40, :cond_22b

    move-object/from16 v0, v46

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v10, 0x2

    move-object/from16 v0, p0

    iget-wide v12, v0, mTimeoutPeriod:J

    mul-long/2addr v10, v12

    move/from16 v0, v40

    int-to-long v12, v0

    mul-long/2addr v10, v12

    add-long/2addr v4, v10

    cmp-long v4, v38, v4

    if-lez v4, :cond_22b

    .line 1082
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hung broadcast ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] discarded after timeout failure:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " now="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " dispatchTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-wide v10, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " startTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-wide v10, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " intent="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " numReceivers="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " nextReceiver="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " state="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, broadcastTimeoutLocked(Z)V

    .line 1092
    const/16 v29, 0x1

    .line 1093
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1097
    .end local v38    # "now":J
    :cond_22b
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v4, :cond_239

    .line 1102
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1077
    .end local v40    # "numReceivers":I
    :cond_235
    const/16 v40, 0x0

    goto/16 :goto_172

    .line 1114
    .restart local v40    # "numReceivers":I
    :cond_239
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    if-eqz v4, :cond_2f4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, mQueueType:I

    if-ne v4, v5, :cond_2f4

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    if-nez v4, :cond_2f4

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v4, :cond_25c

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v0, v40

    if-lt v4, v0, :cond_2f4

    .line 1117
    :cond_25c
    invoke-virtual/range {p0 .. p0}, cancelBroadcastTimeoutLocked()V

    .line 1118
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->deferBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1120
    const/16 v46, 0x0

    .line 1121
    const/16 v36, 0x1

    .line 1224
    :cond_274
    :goto_274
    if-eqz v46, :cond_104

    .line 1227
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v47, v0

    add-int/lit8 v4, v47, 0x1

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1231
    .local v47, "recIdx":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v46

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1232
    if-nez v47, :cond_29c

    .line 1233
    move-object/from16 v0, v46

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, v46

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v46

    iput-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1240
    :cond_29c
    move-object/from16 v0, p0

    iget-boolean v4, v0, mPendingBroadcastTimeoutMessage:Z

    if-nez v4, :cond_2b3

    .line 1241
    move-object/from16 v0, v46

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, mTimeoutPeriod:J

    add-long v54, v4, v10

    .line 1245
    .local v54, "timeoutTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, setBroadcastTimeoutLocked(J)V

    .line 1248
    .end local v54    # "timeoutTime":J
    :cond_2b3
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v21, v0

    .line 1249
    .local v21, "brOptions":Landroid/app/BroadcastOptions;
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v0, v47

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    .line 1251
    .local v37, "nextReceiver":Ljava/lang/Object;
    move-object/from16 v0, v37

    instance-of v4, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_53a

    .line 1254
    move-object/from16 v0, v37

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v28, v0

    .line 1259
    .local v28, "filter":Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v4}, deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    .line 1260
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v4, :cond_2e8

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v4, :cond_51d

    .line 1266
    :cond_2e8
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1267
    invoke-virtual/range {p0 .. p0}, scheduleBroadcastsLocked()V

    .line 1274
    :cond_2f0
    :goto_2f0
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1125
    .end local v21    # "brOptions":Landroid/app/BroadcastOptions;
    .end local v28    # "filter":Lcom/android/server/am/BroadcastFilter;
    .end local v37    # "nextReceiver":Ljava/lang/Object;
    .end local v47    # "recIdx":I
    :cond_2f4
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v4, :cond_30a

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v0, v40

    if-ge v4, v0, :cond_30a

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v4, :cond_30a

    if-eqz v29, :cond_274

    .line 1129
    :cond_30a
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v4, :cond_376

    .line 1131
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, skipResultReceiver:Z

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, mQueueName:Ljava/lang/String;

    const-string v5, "background"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33d

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33d

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueNum:I

    if-ge v4, v5, :cond_33d

    .line 1134
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, skipResultReceiver:Z

    .line 1139
    :cond_33d
    move-object/from16 v0, p0

    iget-boolean v4, v0, skipResultReceiver:Z
    :try_end_341
    .catchall {:try_start_b8 .. :try_end_341} :catchall_7f

    if-nez v4, :cond_376

    .line 1146
    :try_start_343
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, v46

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget v9, v0, mQueueIdx:I

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setBroadcastQueueHint(I)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v4 .. v12}, performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1151
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_376
    .catch Landroid/os/RemoteException; {:try_start_343 .. :try_end_376} :catch_4e0
    .catchall {:try_start_343 .. :try_end_376} :catchall_7f

    .line 1162
    :cond_376
    :goto_376
    :try_start_376
    invoke-virtual/range {p0 .. p0}, cancelBroadcastTimeoutLocked()V

    .line 1173
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1177
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_3e0

    .line 1178
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, p0

    iget-object v4, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    iget-object v4, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e0

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v5, v0, mHistoryNext:I

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget v9, v0, MAX_BROADCAST_HISTORY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v9}, ringAdvance(III)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v9, v0, MAX_BROADCAST_HISTORY:I

    const/4 v10, 0x1

    invoke-static {v4, v5, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1183
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save the BOOT_COMPLETED history constantly, mBroadcastHistory[MAX]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v9, v0, MAX_BROADCAST_HISTORY:I

    aget-object v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_3e0
    move-object/from16 v0, p0

    iget-object v4, v0, mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1191
    const-string v4, "background"

    move-object/from16 v0, p0

    iget-object v5, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_459

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_459

    .line 1192
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_514

    .line 1194
    const-string/jumbo v4, "splitIntent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Queue : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " intent "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is finished at BG and BG split queue"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". set mSplitStart false."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    .line 1203
    :cond_459
    :goto_459
    move-object/from16 v0, p0

    iget-object v4, v0, mQueueName:Ljava/lang/String;

    const-string v5, "backgroundsplit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4da

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4da

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    .line 1205
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueFinishedNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_4da

    .line 1206
    const-string/jumbo v4, "splitIntent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Queue : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " intent "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is finished at BG and BG split queue"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". set mSplitStart and mBgSplitQueueOnlyRun false."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    .line 1210
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueOnlyRun:Z

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v4}, scheduleBroadcastsLocked()V

    .line 1216
    :cond_4da
    const/16 v46, 0x0

    .line 1217
    const/16 v36, 0x1

    .line 1218
    goto/16 :goto_274

    .line 1152
    :catch_4e0
    move-exception v27

    .line 1153
    .local v27, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 1154
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] sending broadcast result of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_376

    .line 1199
    .end local v27    # "e":Landroid/os/RemoteException;
    :cond_514
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mBgSplitQueueOnlyRun:Z

    goto/16 :goto_459

    .line 1269
    .restart local v21    # "brOptions":Landroid/app/BroadcastOptions;
    .restart local v28    # "filter":Lcom/android/server/am/BroadcastFilter;
    .restart local v37    # "nextReceiver":Ljava/lang/Object;
    .restart local v47    # "recIdx":I
    :cond_51d
    if-eqz v21, :cond_2f0

    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_2f0

    .line 1270
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v10

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v4, v10, v11, v1}, scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    goto/16 :goto_2f0

    .line 1277
    .end local v28    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_53a
    if-eqz p1, :cond_579

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, isDeferrable(ZLandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_579

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    if-nez v4, :cond_579

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getSluggishDelay(Lcom/android/server/am/BroadcastQueue;)I

    move-result v26

    .line 1279
    .local v26, "delay":I
    if-lez v26, :cond_579

    .line 1280
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1281
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1282
    move/from16 v0, v26

    int-to-long v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, scheduleBroadcastsLocked(J)V

    .line 1283
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1290
    .end local v26    # "delay":I
    :cond_579
    move-object/from16 v0, v37

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v31, v0

    .line 1292
    .local v31, "info":Landroid/content/pm/ResolveInfo;
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    .local v25, "component":Landroid/content/ComponentName;
    const/16 v51, 0x0

    .line 1299
    .local v51, "skip":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5ae

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_622

    .line 1300
    :cond_5ae
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    .line 1301
    .local v44, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 1302
    .local v18, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v4, :cond_622

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/emergencymode/EmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_622

    .line 1303
    const/16 v51, 0x1

    .line 1304
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping processNextBroadcast ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": broadcast skipped"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    .end local v18    # "action":Ljava/lang/String;
    .end local v44    # "pkgName":Ljava/lang/String;
    :cond_622
    const/16 v43, -0x1

    .line 1317
    .local v43, "perm":I
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v31

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v43

    .line 1326
    const-string v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69d

    .line 1327
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    .line 1328
    .local v24, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v48

    .line 1329
    .local v48, "receiverClassName":Ljava/lang/String;
    const-string v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69d

    .line 1331
    const-string v4, "com.android.settings"

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_693

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_a9b

    .line 1333
    :cond_693
    const/16 v43, 0x0

    .line 1334
    const-string v4, "BroadcastQueue"

    const-string/jumbo v5, "permission granted for keyguard receiver"

    invoke-static {v4, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .end local v24    # "cn":Landroid/content/ComponentName;
    .end local v48    # "receiverClassName":Ljava/lang/String;
    :cond_69d
    :goto_69d
    if-eqz v43, :cond_b17

    .line 1349
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v4, :cond_aa7

    .line 1350
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not exported from uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to receiver "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_717
    const/16 v51, 0x1

    .line 1381
    :cond_719
    :goto_719
    if-nez v51, :cond_7bf

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_7bf

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_7bf

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_7bf

    .line 1383
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_736
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_7bf

    .line 1384
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v50, v4, v30
    :try_end_745
    .catchall {:try_start_376 .. :try_end_745} :catchall_7f

    .line 1386
    .local v50, "requiredPermission":Ljava/lang/String;
    :try_start_745
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v0, v50

    invoke-interface {v4, v0, v5, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_762
    .catch Landroid/os/RemoteException; {:try_start_745 .. :try_end_762} :catch_bba
    .catchall {:try_start_745 .. :try_end_762} :catchall_7f

    move-result v43

    .line 1394
    :goto_763
    if-eqz v43, :cond_bbf

    .line 1395
    :try_start_765
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: receiving "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to sender "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/16 v51, 0x1

    .line 1421
    .end local v30    # "i":I
    .end local v50    # "requiredPermission":Ljava/lang/String;
    :cond_7bf
    :goto_7bf
    if-nez v51, :cond_846

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_846

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7, v9}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_846

    .line 1425
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: receiving "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires appop "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to sender "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/16 v51, 0x1

    .line 1433
    :cond_846
    if-nez v51, :cond_86e

    .line 1434
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v46

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    :try_end_869
    .catchall {:try_start_765 .. :try_end_869} :catchall_7f

    move-result v4

    if-nez v4, :cond_c4e

    const/16 v51, 0x1

    .line 1437
    :cond_86e
    :goto_86e
    const/16 v35, 0x0

    .line 1439
    .local v35, "isSingleton":Z
    :try_start_870
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v4, v5, v7, v9, v10}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    :try_end_88f
    .catch Ljava/lang/SecurityException; {:try_start_870 .. :try_end_88f} :catch_c52
    .catchall {:try_start_870 .. :try_end_88f} :catchall_7f

    move-result v35

    .line 1446
    :goto_890
    :try_start_890
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_8d5

    .line 1447
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8d5

    .line 1451
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: Receiver "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requests FLAG_SINGLE_USER, but app does not hold "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/16 v51, 0x1

    .line 1457
    :cond_8d5
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_921

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v4, :cond_921

    .line 1459
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping deliver ordered ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": process crashing"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/16 v51, 0x1

    .line 1465
    :cond_921
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v4, :cond_96d

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v4, :cond_96d

    .line 1467
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->handleSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1469
    const/4 v6, 0x0

    .line 1470
    .local v6, "callerthread":Landroid/app/IApplicationThread;
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_94b

    .line 1471
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 1472
    :cond_94b
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const-string v9, "broadcast"

    move-object/from16 v0, v46

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, mQueueName:Ljava/lang/String;

    move-object/from16 v5, v25

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_968
    .catchall {:try_start_890 .. :try_end_968} :catchall_7f

    move-result v4

    if-eqz v4, :cond_96d

    .line 1474
    const/16 v51, 0x1

    .line 1479
    .end local v6    # "callerthread":Landroid/app/IApplicationThread;
    :cond_96d
    if-nez v51, :cond_98f

    .line 1480
    const/16 v32, 0x0

    .line 1482
    .local v32, "isAvailable":Z
    :try_start_971
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_98a
    .catch Ljava/lang/Exception; {:try_start_971 .. :try_end_98a} :catch_c60
    .catchall {:try_start_971 .. :try_end_98a} :catchall_7f

    move-result v32

    .line 1490
    :goto_98b
    if-nez v32, :cond_c83

    .line 1495
    const/16 v51, 0x1

    .line 1522
    .end local v32    # "isAvailable":Z
    :cond_98f
    :goto_98f
    if-nez v51, :cond_a24

    :try_start_991
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_a24

    .line 1524
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v42

    .line 1526
    .local v42, "pUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move/from16 v0, v42

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(IZ)Z

    move-result v4

    if-nez v4, :cond_a24

    .line 1527
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not running."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping broadcast of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pUserid : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", user : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", curUser : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", curComponent : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/16 v51, 0x1

    .line 1538
    .end local v42    # "pUserId":I
    :cond_a24
    if-nez v51, :cond_a83

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_a83

    .line 1540
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "sec_container_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a83

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a83

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_a5e
    .catchall {:try_start_991 .. :try_end_a5e} :catchall_7f

    move-result v4

    if-nez v4, :cond_a83

    .line 1544
    :try_start_a61
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KNOX 1.0 not supported hence blocked:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a81
    .catch Ljava/lang/Exception; {:try_start_a61 .. :try_end_a81} :catch_cd5
    .catchall {:try_start_a61 .. :try_end_a81} :catchall_7f

    .line 1545
    const/16 v51, 0x1

    .line 1554
    :cond_a83
    :goto_a83
    if-eqz v51, :cond_cdb

    .line 1558
    const/4 v4, 0x0

    :try_start_a86
    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1559
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1560
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1561
    invoke-virtual/range {p0 .. p0}, scheduleBroadcastsLocked()V

    .line 1562
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1336
    .end local v35    # "isSingleton":Z
    .restart local v24    # "cn":Landroid/content/ComponentName;
    .restart local v48    # "receiverClassName":Ljava/lang/String;
    :cond_a9b
    const-string v4, "BroadcastQueue"

    const-string/jumbo v5, "permission denied for keyguard receiver"

    invoke-static {v4, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/16 v43, -0x1

    goto/16 :goto_69d

    .line 1357
    .end local v24    # "cn":Landroid/content/ComponentName;
    .end local v48    # "receiverClassName":Ljava/lang/String;
    :cond_aa7
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to receiver "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_717

    .line 1365
    :cond_b17
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v4, :cond_719

    .line 1366
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v41

    .line 1367
    .local v41, "opCode":I
    const/4 v4, -0x1

    move/from16 v0, v41

    if-eq v0, v4, :cond_719

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move/from16 v0, v41

    invoke-virtual {v4, v0, v5, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_719

    .line 1370
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires appop "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to registered receiver "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/16 v51, 0x1

    goto/16 :goto_719

    .line 1391
    .end local v41    # "opCode":I
    .restart local v30    # "i":I
    .restart local v50    # "requiredPermission":Ljava/lang/String;
    :catch_bba
    move-exception v27

    .line 1392
    .restart local v27    # "e":Landroid/os/RemoteException;
    const/16 v43, -0x1

    goto/16 :goto_763

    .line 1404
    .end local v27    # "e":Landroid/os/RemoteException;
    :cond_bbf
    invoke-static/range {v50 .. v50}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v20

    .line 1405
    .local v20, "appOp":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_c4a

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_c4a

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_c4a

    .line 1409
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: receiving "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " requires appop "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v50 .. v50}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to sender "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/16 v51, 0x1

    .line 1417
    goto/16 :goto_7bf

    .line 1383
    :cond_c4a
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_736

    .line 1434
    .end local v20    # "appOp":I
    .end local v30    # "i":I
    .end local v50    # "requiredPermission":Ljava/lang/String;
    :cond_c4e
    const/16 v51, 0x0

    goto/16 :goto_86e

    .line 1442
    .restart local v35    # "isSingleton":Z
    :catch_c52
    move-exception v27

    .line 1443
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v4, "BroadcastQueue"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const/16 v51, 0x1

    goto/16 :goto_890

    .line 1485
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v32    # "isAvailable":Z
    :catch_c60
    move-exception v27

    .line 1487
    .local v27, "e":Ljava/lang/Exception;
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting recipient info for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c81
    .catchall {:try_start_a86 .. :try_end_c81} :catchall_7f

    goto/16 :goto_98b

    .line 1497
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_c83
    const/16 v33, 0x0

    .line 1499
    .local v33, "isComponentAvailable":Z
    :try_start_c85
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-interface {v4, v5, v7, v9, v10}, Landroid/content/pm/IPackageManager;->isPackageComponentAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_cac
    .catch Ljava/lang/Exception; {:try_start_c85 .. :try_end_cac} :catch_cb3
    .catchall {:try_start_c85 .. :try_end_cac} :catchall_7f

    move-result v33

    .line 1509
    :goto_cad
    if-nez v33, :cond_98f

    .line 1515
    const/16 v51, 0x1

    goto/16 :goto_98f

    .line 1504
    :catch_cb3
    move-exception v27

    .line 1505
    .restart local v27    # "e":Ljava/lang/Exception;
    :try_start_cb4
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting recipient info for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cad

    .line 1547
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v32    # "isAvailable":Z
    .end local v33    # "isComponentAvailable":Z
    :catch_cd5
    move-exception v27

    .line 1548
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a83

    .line 1565
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_cdb
    const/4 v4, 0x1

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1566
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1567
    .local v8, "targetProcess":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1568
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v49, v0

    .line 1570
    .local v49, "receiverUid":I
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_d21

    if-eqz v35, :cond_d21

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v0, v49

    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v4

    if-eqz v4, :cond_d21

    .line 1572
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    move-object/from16 v0, v31

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1574
    :cond_d21
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 1581
    if-eqz v21, :cond_d42

    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_d42

    .line 1582
    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v4

    move-object/from16 v0, p0

    move/from16 v1, v49

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v4, v5, v2}, scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    .line 1585
    :cond_d42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d45
    .catchall {:try_start_cb4 .. :try_end_d45} :catchall_7f

    move-result-wide v22

    .line 1588
    .local v22, "callingId":J
    :try_start_d46
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-interface {v4, v5, v7, v9}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_d5e
    .catch Landroid/os/RemoteException; {:try_start_d46 .. :try_end_d5e} :catch_dd6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d46 .. :try_end_d5e} :catch_ddb
    .catchall {:try_start_d46 .. :try_end_d5e} :catchall_e36

    .line 1606
    :try_start_d5e
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    :goto_d61
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x0

    invoke-virtual {v4, v8, v5, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v19

    .line 1612
    .local v19, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v19, :cond_e8a

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_d78
    .catchall {:try_start_d5e .. :try_end_d78} :catchall_7f

    if-eqz v4, :cond_e8a

    .line 1615
    :try_start_d7a
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEFERRED_Q_ENABLED:Z

    if-eqz v4, :cond_e3b

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, mQueueType:I

    if-ne v4, v5, :cond_e3b

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, isDeferrable(ZLandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_e3b

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    if-nez v4, :cond_e3b

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->emptyCount:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_e3b

    move-object/from16 v0, v31

    iget v4, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-gtz v4, :cond_e3b

    .line 1619
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    if-nez v4, :cond_db7

    .line 1620
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    .line 1622
    :cond_db7
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1625
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1626
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1627
    invoke-virtual/range {p0 .. p0}, scheduleBroadcastsLocked()V
    :try_end_dd2
    .catch Landroid/os/RemoteException; {:try_start_d7a .. :try_end_dd2} :catch_e6b
    .catch Ljava/lang/RuntimeException; {:try_start_d7a .. :try_end_dd2} :catch_edf
    .catchall {:try_start_d7a .. :try_end_dd2} :catchall_7f

    .line 1628
    const/4 v4, 0x0

    :try_start_dd3
    monitor-exit v53

    goto/16 :goto_b2

    .line 1590
    .end local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_dd6
    move-exception v4

    .line 1606
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_dda
    .catchall {:try_start_dd3 .. :try_end_dda} :catchall_7f

    goto :goto_d61

    .line 1591
    :catch_ddb
    move-exception v27

    .line 1592
    .local v27, "e":Ljava/lang/IllegalArgumentException;
    :try_start_ddc
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed trying to unstop package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1599
    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v46

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v46

    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v46

    invoke-virtual/range {v7 .. v13}, finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1601
    .end local v8    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, scheduleBroadcastsLocked()V

    .line 1602
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_e2f
    .catchall {:try_start_ddc .. :try_end_e2f} :catchall_e36

    .line 1603
    const/4 v4, 0x0

    .line 1606
    :try_start_e30
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v53

    goto/16 :goto_b2

    .end local v27    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_e36
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_e3b
    .catchall {:try_start_e30 .. :try_end_e3b} :catchall_7f

    .line 1631
    .restart local v8    # "targetProcess":Ljava/lang/String;
    .restart local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_e3b
    :try_start_e3b
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v7, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1633
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1634
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->emptyCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->emptyCount:I
    :try_end_e67
    .catch Landroid/os/RemoteException; {:try_start_e3b .. :try_end_e67} :catch_e6b
    .catch Ljava/lang/RuntimeException; {:try_start_e3b .. :try_end_e67} :catch_edf
    .catchall {:try_start_e3b .. :try_end_e67} :catchall_7f

    .line 1635
    const/4 v4, 0x0

    :try_start_e68
    monitor-exit v53

    goto/16 :goto_b2

    .line 1637
    :catch_e6b
    move-exception v27

    .line 1638
    .local v27, "e":Landroid/os/RemoteException;
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when sending broadcast to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1665
    .end local v27    # "e":Landroid/os/RemoteException;
    :cond_e8a
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEFERRED_Q_ENABLED:Z

    if-eqz v4, :cond_f37

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, mQueueType:I

    if-ne v4, v5, :cond_f37

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, isDeferrable(ZLandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_f37

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSplitStart:Z

    if-nez v4, :cond_f37

    move-object/from16 v0, v31

    iget v4, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-gtz v4, :cond_f37

    .line 1670
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    if-nez v4, :cond_ec0

    .line 1671
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    .line 1673
    :cond_ec0
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->deferredreceivers:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1677
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1678
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1679
    invoke-virtual/range {p0 .. p0}, scheduleBroadcastsLocked()V

    .line 1680
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1640
    :catch_edf
    move-exception v27

    .line 1641
    .local v27, "e":Ljava/lang/RuntimeException;
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed sending broadcast to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1648
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1649
    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v46

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v46

    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v46

    invoke-virtual/range {v7 .. v13}, finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1651
    .end local v8    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, scheduleBroadcastsLocked()V

    .line 1653
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1654
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1683
    .end local v27    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "targetProcess":Ljava/lang/String;
    :cond_f37
    const-string/jumbo v4, "sys.quickboot.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f5e

    const-string/jumbo v4, "sys.quickboot.poweron"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_f5e

    invoke-direct/range {p0 .. p0}, getWhiteList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fa9

    :cond_f5e
    move-object/from16 v0, p0

    iget-object v7, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, 0x1

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    or-int/lit8 v11, v4, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, mQueueType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_101a

    const/4 v14, 0x1

    :goto_f9c
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_101c

    .line 1694
    :cond_fa9
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to launch app "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for broadcast "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": process is bad"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1699
    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v46

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v46

    iget-boolean v14, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, v46

    invoke-virtual/range {v9 .. v15}, finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1701
    invoke-virtual/range {p0 .. p0}, scheduleBroadcastsLocked()V

    .line 1702
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1703
    const/4 v4, 0x0

    monitor-exit v53

    goto/16 :goto_b2

    .line 1683
    :cond_101a
    const/4 v14, 0x0

    goto :goto_f9c

    .line 1706
    :cond_101c
    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1707
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, mPendingBroadcastRecvIndex:I

    .line 1708
    monitor-exit v53
    :try_end_1029
    .catchall {:try_start_e68 .. :try_end_1029} :catchall_7f

    .line 1710
    const/4 v4, 0x0

    goto/16 :goto_b2
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 377
    iget-object v1, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-lez v0, :cond_26

    .line 378
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 390
    iget-object v1, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 391
    const/4 v1, 0x1

    .line 394
    :goto_22
    return v1

    .line 377
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 394
    :cond_26
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 356
    iget-object v1, p0, mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 357
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 369
    iget-object v1, p0, mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 370
    const/4 v1, 0x1

    .line 373
    :goto_22
    return v1

    .line 356
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 373
    :cond_26
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public scheduleBroadcastsLocked()V
    .registers 4

    .prologue
    .line 539
    iget-boolean v0, p0, mBroadcastsScheduled:Z

    if-eqz v0, :cond_5

    .line 545
    :goto_4
    return-void

    .line 543
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, mBroadcastsScheduled:Z

    .line 544
    iget-object v0, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method scheduleBroadcastsLocked(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    const/16 v2, 0xc8

    .line 527
    iget-boolean v0, p0, mBroadcastsScheduled:Z

    if-eqz v0, :cond_b

    .line 528
    iget-object v0, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v0, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    .line 530
    :cond_b
    iget-object v0, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, mBroadcastsScheduled:Z

    .line 532
    return-void
.end method

.method final scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "duration"    # J
    .param p4, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 891
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p2, v2

    if-lez v1, :cond_a

    .line 892
    const-wide/32 p2, 0x7fffffff

    .line 900
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 903
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 905
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    :cond_2f
    :goto_2f
    iget-object v1, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v2, 0xca

    long-to-int v3, p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 913
    return-void

    .line 906
    :cond_40
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 907
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 908
    :cond_56
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 909
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2f
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 468
    const/4 v7, 0x0

    .line 469
    .local v7, "didSomething":Z
    iget-object v1, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 470
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_15

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, v2, :cond_15

    .line 472
    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 473
    invoke-direct {p0, v1, p1}, processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_16

    .line 474
    const/4 v7, 0x1

    .line 487
    :cond_15
    return v7

    .line 475
    :catch_16
    move-exception v8

    .line 476
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    invoke-virtual {p0, v1}, logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 479
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 481
    invoke-virtual {p0}, scheduleBroadcastsLocked()V

    .line 483
    iput v6, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 484
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final setBroadcastQueueIndex(I)V
    .registers 2
    .param p1, "queueIdx"    # I

    .prologue
    .line 319
    iput p1, p0, mQueueIdx:I

    .line 320
    return-void
.end method

.method final setBroadcastTimeoutLocked(J)V
    .registers 6
    .param p1, "timeoutTime"    # J

    .prologue
    .line 1724
    iget-boolean v1, p0, mPendingBroadcastTimeoutMessage:Z

    if-nez v1, :cond_14

    .line 1725
    iget-object v1, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1726
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1727
    const/4 v1, 0x1

    iput-boolean v1, p0, mPendingBroadcastTimeoutMessage:Z

    .line 1729
    .end local v0    # "msg":Landroid/os/Message;
    :cond_14
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 503
    iget-object v0, p0, mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    .line 504
    .local v7, "br":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_17

    .line 505
    move-object v1, v7

    .line 508
    .end local v7    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_17
    if-nez v1, :cond_25

    iget-object v0, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_25

    iget-object v0, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_25

    .line 511
    iget-object v1, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 514
    :cond_25
    if-eqz v1, :cond_39

    .line 515
    invoke-virtual {p0, v1}, logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 516
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 518
    invoke-virtual {p0}, scheduleBroadcastsLocked()V

    .line 520
    :cond_39
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 491
    iget-object v0, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 492
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_17

    .line 493
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 494
    iget v1, p0, mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 495
    const/4 v1, 0x0

    iput-object v1, p0, mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 496
    invoke-virtual {p0}, scheduleBroadcastsLocked()V

    .line 498
    :cond_17
    return-void
.end method
