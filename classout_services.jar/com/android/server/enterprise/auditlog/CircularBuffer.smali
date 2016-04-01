.class public Lcom/android/server/enterprise/auditlog/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# static fields
.field private static final ADAYINMILLISEC:J = 0x5265c00L

.field private static final BUFFERREADSIZE:I = 0x10000

.field private static final EDM_AUDIT_LOG_FILENAME:Ljava/lang/String; = "/data/system/"

.field private static final TOTALNUMBEROFFILES:I = 0x8fc

.field private static mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isWriting:Z

.field private mAdminCriticalSize:F

.field private mAdminDirectoryPath:Ljava/lang/String;

.field private mAdminMaximumSize:F

.field private mBufferLimitSize:J

.field private volatile mCircularBufferSize:J

.field private mContext:Landroid/content/Context;

.field private mCriticalIntent:Z

.field private mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field private mDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFullBuffer:F

.field private mFullIntent:Z

.field private volatile mIsBootCompleted:Z

.field private volatile mIsDumping:Z

.field private mIsFirstNode:Z

.field private volatile mLastDumpedFile:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMaximumIntent:Z

.field private volatile mNumberOfDeprecatedFiles:I

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntentErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private mTailTimestamp:J

.field private mTotalDirectoryOccupation:J

.field private volatile mTypeOfDump:Z

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 107
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "CircularBuffer"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 109
    iput-boolean v1, p0, isWriting:Z

    .line 111
    iput-boolean v1, p0, mIsDumping:Z

    .line 112
    iput-boolean v1, p0, mTypeOfDump:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsFirstNode:Z

    .line 114
    iput-boolean v1, p0, mIsBootCompleted:Z

    .line 115
    sget-object v0, mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 116
    iput p1, p0, mUid:I

    .line 117
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, mAdminCriticalSize:F

    .line 118
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, mAdminMaximumSize:F

    .line 119
    const/high16 v0, 0x42c20000    # 97.0f

    iput v0, p0, mFullBuffer:F

    .line 120
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 121
    iput-wide v2, p0, mCircularBufferSize:J

    .line 122
    iput-wide v2, p0, mTotalDirectoryOccupation:J

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, mLastDumpedFile:Ljava/lang/String;

    .line 124
    iput-object p3, p0, mPackageName:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 126
    invoke-virtual {p0}, getBufferLogSize()J

    move-result-wide v0

    iput-wide v0, p0, mBufferLimitSize:J

    .line 127
    invoke-direct {p0}, getNumberOfDeprecatedFiles()I

    move-result v0

    iput v0, p0, mNumberOfDeprecatedFiles:I

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mDumpList:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mPendingIntentErrors:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mAdminDirectoryPath:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, populateCircularBuffer()V

    .line 132
    return-void
.end method

.method private addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .registers 5

    .prologue
    .line 293
    iget-boolean v0, p0, mIsBootCompleted:Z

    if-eqz v0, :cond_7

    .line 294
    invoke-direct {p0}, checkCriticalSizes()V

    .line 296
    :cond_7
    iget-boolean v0, p0, mIsDumping:Z

    if-nez v0, :cond_1d

    .line 297
    iget-object v0, p0, mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0}, totalNumberFiles()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 298
    invoke-direct {p0}, cleanBuffer()V

    .line 302
    :cond_1d
    new-instance v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, mAdminDirectoryPath:Ljava/lang/String;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkCriticalSizes()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 520
    const/4 v7, 0x0

    .line 523
    .local v7, "intent":Landroid/content/Intent;
    const-wide/16 v0, 0x64

    iget-wide v4, p0, mCircularBufferSize:J

    mul-long/2addr v0, v4

    iget-wide v4, p0, mBufferLimitSize:J

    div-long/2addr v0, v4

    long-to-int v8, v0

    .line 525
    .local v8, "threshold":I
    int-to-float v0, v8

    iget v1, p0, mAdminCriticalSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_cb

    .line 526
    iget-boolean v0, p0, mCriticalIntent:Z

    if-nez v0, :cond_61

    .line 527
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "mdm.intent.action.audit.log.critical.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "admin_uid"

    iget v1, p0, mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 531
    .local v10, "token":J
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 532
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    iput-boolean v2, p0, mCriticalIntent:Z

    .line 535
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "CircularBuffer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuditLog has reached its critical size. Percentage is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mAdminCriticalSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 545
    .end local v10    # "token":J
    :cond_61
    :goto_61
    int-to-float v0, v8

    iget v1, p0, mAdminMaximumSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_ce

    .line 546
    iget-boolean v0, p0, mMaximumIntent:Z

    if-nez v0, :cond_90

    .line 547
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "mdm.intent.action.audit.log.maximum.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "admin_uid"

    iget v1, p0, mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 551
    .restart local v10    # "token":J
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 552
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    iput-boolean v2, p0, mMaximumIntent:Z

    .line 560
    .end local v10    # "token":J
    :cond_90
    :goto_90
    int-to-float v0, v8

    iget v1, p0, mFullBuffer:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d1

    .line 561
    iget-boolean v0, p0, mFullIntent:Z

    if-nez v0, :cond_ca

    .line 562
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "mdm.intent.action.audit.log.full.size"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "admin_uid"

    iget v1, p0, mUid:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 566
    .restart local v10    # "token":J
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 567
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 568
    iput-boolean v2, p0, mFullIntent:Z

    .line 569
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Full Size Reached!"

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .end local v10    # "token":J
    :cond_ca
    :goto_ca
    return-void

    .line 541
    :cond_cb
    iput-boolean v9, p0, mCriticalIntent:Z

    goto :goto_61

    .line 556
    :cond_ce
    iput-boolean v9, p0, mMaximumIntent:Z

    goto :goto_90

    .line 572
    :cond_d1
    iput-boolean v9, p0, mFullIntent:Z

    goto :goto_ca
.end method

.method private cleanBuffer()V
    .registers 11

    .prologue
    .line 578
    const/4 v3, 0x0

    .line 580
    .local v3, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v5, p0, mDumpList:Ljava/util/List;

    monitor-enter v5

    .line 581
    :try_start_4
    iget-object v4, p0, mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 583
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :goto_a
    iget-object v4, p0, mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v6, v4

    invoke-direct {p0}, totalNumberFiles()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_55

    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v3, v0

    .line 586
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 587
    iget v4, p0, mNumberOfDeprecatedFiles:I

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v4}, setNumberOfDeprecatedFiles(I)V

    .line 592
    :goto_30
    iget-wide v6, p0, mTotalDirectoryOccupation:J

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, mTotalDirectoryOccupation:J

    .line 593
    iget-wide v6, p0, mBufferLimitSize:J

    iget-wide v8, p0, mTotalDirectoryOccupation:J

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, resizeBubbleFile(J)V

    .line 594
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 595
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 597
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :catchall_48
    move-exception v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v4

    .line 589
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_4b
    :try_start_4b
    iget-wide v6, p0, mCircularBufferSize:J

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, mCircularBufferSize:J

    goto :goto_30

    .line 597
    :cond_55
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_48

    .line 598
    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .registers 11
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 640
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 643
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2d

    .line 644
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 645
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 675
    :cond_2c
    :goto_2c
    return-void

    .line 651
    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "files":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_34
    if-ge v3, v4, :cond_43

    aget-object v5, v0, v3

    .line 655
    .local v5, "temp":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 658
    .local v1, "fileDelete":Ljava/io/File;
    invoke-direct {p0, v1}, deleteDirectory(Ljava/io/File;)V

    .line 653
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 662
    .end local v1    # "fileDelete":Ljava/io/File;
    .end local v5    # "temp":Ljava/lang/String;
    :cond_43
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2c

    .line 663
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 664
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2c

    .line 671
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_6a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 672
    const-string v6, "CircularBuffer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
    .registers 26
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_8

    .line 208
    const/4 v10, 0x0

    .line 285
    :goto_7
    return-object v10

    .line 210
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 211
    .local v10, "files":[Ljava/io/File;
    const/4 v13, 0x0

    .line 213
    .local v13, "lastFile":Ljava/io/File;
    if-nez v10, :cond_11

    .line 214
    const/4 v10, 0x0

    goto :goto_7

    .line 216
    :cond_11
    new-instance v20, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;-><init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 223
    array-length v0, v10

    move/from16 v20, v0

    if-lez v20, :cond_47

    .line 224
    array-length v0, v10

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v13, v10, v20

    .line 229
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "_tmp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3d

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_49

    .line 231
    :cond_3d
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, deleteDirectory(Ljava/io/File;)V

    .line 232
    invoke-direct/range {p0 .. p1}, dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v10

    goto :goto_7

    .line 226
    :cond_47
    const/4 v10, 0x0

    goto :goto_7

    .line 235
    :cond_49
    const/16 v18, 0x0

    .line 236
    .local v18, "raf":Ljava/io/RandomAccessFile;
    const/16 v17, 0x0

    .line 240
    .local v17, "out":Ljava/nio/MappedByteBuffer;
    :try_start_4d
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string/jumbo v20, "rwd"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_ce
    .catchall {:try_start_4d .. :try_end_59} :catchall_f2

    .line 241
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .local v19, "raf":Ljava/io/RandomAccessFile;
    const/high16 v20, 0x10000

    :try_start_5b
    move/from16 v0, v20

    new-array v5, v0, [B

    .line 242
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 243
    .local v6, "byteCounter":I
    const/4 v15, 0x0

    .line 244
    .local v15, "length":I
    const/4 v9, 0x0

    .line 245
    .local v9, "fileSize":I
    const/16 v16, 0x0

    .line 246
    .local v16, "lineJumpNumber":I
    const/4 v12, 0x0

    .line 247
    .local v12, "isCorrupted":Z
    :goto_65
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v15

    if-lez v15, :cond_89

    .line 248
    const/16 v16, 0x0

    .line 249
    add-int/lit8 v20, v15, -0x1

    aget-byte v20, v5, v20

    if-nez v20, :cond_bf

    .line 250
    const/4 v6, 0x0

    :goto_76
    if-ge v6, v15, :cond_89

    .line 251
    aget-byte v20, v5, v6

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_84

    .line 252
    move/from16 v16, v6

    .line 254
    :cond_84
    aget-byte v20, v5, v6

    if-nez v20, :cond_bc

    .line 255
    const/4 v12, 0x1

    .line 264
    :cond_89
    if-eqz v12, :cond_99

    .line 265
    const/high16 v20, 0x10000

    mul-int v20, v20, v9

    add-int v20, v20, v16

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_99} :catch_11e
    .catchall {:try_start_5b .. :try_end_99} :catchall_11a

    .line 271
    :cond_99
    if-eqz v19, :cond_122

    .line 273
    :try_start_9b
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_c2

    move-object/from16 v18, v19

    .line 280
    .end local v5    # "buffer":[B
    .end local v6    # "byteCounter":I
    .end local v9    # "fileSize":I
    .end local v12    # "isCorrupted":Z
    .end local v15    # "length":I
    .end local v16    # "lineJumpNumber":I
    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    :cond_a0
    :goto_a0
    move-object v4, v10

    .local v4, "arr$":[Ljava/io/File;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_a3
    if-ge v11, v14, :cond_103

    aget-object v8, v4, v11

    .line 281
    .local v8, "f":Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalDirectoryOccupation:J

    move-wide/from16 v20, v0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v22

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mTotalDirectoryOccupation:J

    .line 280
    add-int/lit8 v11, v11, 0x1

    goto :goto_a3

    .line 250
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v8    # "f":Ljava/io/File;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "buffer":[B
    .restart local v6    # "byteCounter":I
    .restart local v9    # "fileSize":I
    .restart local v12    # "isCorrupted":Z
    .restart local v15    # "length":I
    .restart local v16    # "lineJumpNumber":I
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :cond_bc
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 261
    :cond_bf
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 274
    :catch_c2
    move-exception v7

    .line 275
    .local v7, "e":Ljava/io/IOException;
    const-string v20, "CircularBuffer"

    const-string/jumbo v21, "dirListByAscendingDate.IOException"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v19

    .line 276
    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_a0

    .line 267
    .end local v5    # "buffer":[B
    .end local v6    # "byteCounter":I
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fileSize":I
    .end local v12    # "isCorrupted":Z
    .end local v15    # "length":I
    .end local v16    # "lineJumpNumber":I
    :catch_ce
    move-exception v7

    .line 268
    .local v7, "e":Ljava/lang/Exception;
    :goto_cf
    :try_start_cf
    const-string v20, "CircularBuffer"

    const-string/jumbo v21, "dirListByAscendingDate.Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingIntentErrors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catchall {:try_start_cf .. :try_end_e2} :catchall_f2

    .line 271
    if-eqz v18, :cond_a0

    .line 273
    :try_start_e4
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_a0

    .line 274
    :catch_e8
    move-exception v7

    .line 275
    .local v7, "e":Ljava/io/IOException;
    const-string v20, "CircularBuffer"

    const-string/jumbo v21, "dirListByAscendingDate.IOException"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    .line 271
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_f2
    move-exception v20

    :goto_f3
    if-eqz v18, :cond_f8

    .line 273
    :try_start_f5
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9

    .line 276
    :cond_f8
    :goto_f8
    throw v20

    .line 274
    :catch_f9
    move-exception v7

    .line 275
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v21, "CircularBuffer"

    const-string/jumbo v22, "dirListByAscendingDate.IOException"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    .line 284
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "arr$":[Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v14    # "len$":I
    :cond_103
    move-object/from16 v0, p0

    iget-wide v0, v0, mBufferLimitSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalDirectoryOccupation:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, resizeBubbleFile(J)V

    goto/16 :goto_7

    .line 271
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catchall_11a
    move-exception v20

    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_f3

    .line 267
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catch_11e
    move-exception v7

    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_cf

    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "buffer":[B
    .restart local v6    # "byteCounter":I
    .restart local v9    # "fileSize":I
    .restart local v12    # "isCorrupted":Z
    .restart local v15    # "length":I
    .restart local v16    # "lineJumpNumber":I
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :cond_122
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_a0
.end method

.method private getNumberOfDeprecatedFiles()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 188
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "auditNumberOfDepFiles"

    aput-object v3, v1, v6

    .line 189
    .local v1, "columns":[Ljava/lang/String;
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    iget v5, p0, mUid:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 192
    .local v2, "depFiles":I
    if-eqz v0, :cond_1f

    .line 193
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 194
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_1f
    return v2
.end method

.method private isCompressed(Ljava/io/File;)Z
    .registers 9
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 679
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 680
    .local v1, "fileStream":Ljava/io/FileInputStream;
    new-array v0, v6, [B

    .line 682
    .local v0, "bytes":[B
    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_c
    invoke-virtual {v1, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 683
    if-eqz v0, :cond_14

    array-length v4, v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_33

    if-ge v4, v6, :cond_1b

    .line 692
    :cond_14
    if-eqz v1, :cond_19

    .line 694
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_3a

    :cond_19
    :goto_19
    move v2, v3

    .line 695
    :cond_1a
    :goto_1a
    return v2

    .line 689
    :cond_1b
    const/4 v4, 0x0

    :try_start_1c
    aget-byte v4, v0, v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_31

    const/4 v4, 0x1

    aget-byte v4, v0, v4
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_33

    const/16 v5, -0x75

    if-ne v4, v5, :cond_31

    .line 692
    :goto_29
    if-eqz v1, :cond_1a

    .line 694
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1a

    .line 695
    :catch_2f
    move-exception v3

    goto :goto_1a

    :cond_31
    move v2, v3

    .line 689
    goto :goto_29

    .line 692
    :catchall_33
    move-exception v2

    if-eqz v1, :cond_39

    .line 694
    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3c

    .line 695
    :cond_39
    :goto_39
    throw v2

    :catch_3a
    move-exception v2

    goto :goto_19

    :catch_3c
    move-exception v3

    goto :goto_39
.end method

.method private markDeprecatedFiles()V
    .registers 13

    .prologue
    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, "dumpDeprecated":Z
    const/4 v4, 0x0

    .line 480
    .local v4, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v6, p0, mDumpList:Ljava/util/List;

    monitor-enter v6

    .line 482
    :try_start_5
    iget-object v5, p0, mDumpList:Ljava/util/List;

    iget-object v7, p0, mDumpList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 483
    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 485
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v4, v0

    .line 486
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 487
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 488
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_11

    .line 512
    .end local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :catchall_2c
    move-exception v5

    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v5

    .line 491
    .restart local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_2f
    if-eqz v2, :cond_52

    .line 492
    :try_start_31
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 511
    :cond_37
    iget v5, p0, mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v5}, setNumberOfDeprecatedFiles(I)V

    .line 512
    monitor-exit v6

    .line 513
    return-void

    .line 496
    :cond_3e
    iget-wide v8, p0, mCircularBufferSize:J

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, mCircularBufferSize:J

    .line 497
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    .line 498
    iget v5, p0, mNumberOfDeprecatedFiles:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, mNumberOfDeprecatedFiles:I

    goto :goto_11

    .line 502
    :cond_52
    iget-object v5, p0, mLastDumpedFile:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 503
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, mLastDumpedFile:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 504
    const/4 v2, 0x1

    .line 505
    const/4 v5, 0x0

    iput-object v5, p0, mLastDumpedFile:Ljava/lang/String;

    .line 506
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_31 .. :try_end_6d} :catchall_2c

    goto :goto_11
.end method

.method private populateCircularBuffer()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 139
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_18

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 143
    invoke-direct {p0}, addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v9

    iput-object v9, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 185
    :goto_17
    return-void

    .line 145
    :cond_18
    invoke-direct {p0, v3}, dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "allFiles":[Ljava/io/File;
    const/4 v8, 0x0

    .line 147
    .local v8, "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v2, 0x0

    .line 149
    .local v2, "counter":I
    if-eqz v0, :cond_92

    .line 150
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_23
    if-ge v6, v7, :cond_92

    aget-object v5, v1, v6

    .line 151
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 152
    invoke-direct {p0, v5}, deleteDirectory(Ljava/io/File;)V

    .line 180
    :goto_30
    add-int/lit8 v2, v2, 0x1

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 154
    :cond_35
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_43

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_30

    .line 157
    :cond_43
    new-instance v8, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .end local v8    # "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v9, p0, mPackageName:Ljava/lang/String;

    invoke-direct {v8, v5, v9}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .restart local v8    # "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 159
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v0, v9

    if-ne v5, v9, :cond_5d

    .line 162
    :try_start_54
    invoke-direct {p0, v5}, isCompressed(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_5d

    .line 163
    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5d} :catch_70

    .line 169
    :cond_5d
    :goto_5d
    iget-object v9, p0, mDumpList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget v9, p0, mNumberOfDeprecatedFiles:I

    if-le v2, v9, :cond_8e

    .line 172
    iget-wide v10, p0, mCircularBufferSize:J

    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, mCircularBufferSize:J

    goto :goto_30

    .line 165
    :catch_70
    move-exception v4

    .line 166
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "CircularBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 175
    .end local v4    # "e":Ljava/io/IOException;
    :cond_8e
    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    goto :goto_30

    .line 183
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_92
    invoke-direct {p0}, addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v9

    iput-object v9, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto/16 :goto_17
.end method

.method private setNumberOfDeprecatedFiles(I)V
    .registers 6
    .param p1, "depFiles"    # I

    .prologue
    .line 201
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "auditNumberOfDepFiles"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p0, mUid:I

    const-string v3, "AUDITLOG"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 204
    return-void
.end method

.method private totalNumberFiles()J
    .registers 9

    .prologue
    const-wide/16 v2, 0x8fc

    .line 702
    iget-object v4, p0, mDumpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_20

    .line 703
    const-wide/16 v0, 0x0

    .line 704
    .local v0, "bytesPerFile":J
    iget-wide v4, p0, mTotalDirectoryOccupation:J

    iget-object v6, p0, mDumpList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    div-long v0, v4, v6

    .line 705
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_20

    .line 706
    iget-wide v2, p0, mBufferLimitSize:J

    div-long/2addr v2, v0

    .line 712
    .end local v0    # "bytesPerFile":J
    :cond_20
    return-wide v2
.end method


# virtual methods
.method public closeFile()V
    .registers 3

    .prologue
    .line 408
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_3
    iget-object v0, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 410
    iget-object v0, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 411
    iget-object v0, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 415
    :goto_15
    invoke-direct {p0}, addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 416
    monitor-exit v1

    .line 417
    return-void

    .line 413
    :cond_1a
    iget-object v0, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    goto :goto_15

    .line 416
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method protected createBubbleDir()V
    .registers 4

    .prologue
    .line 602
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bubble"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 604
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 605
    :cond_29
    return-void
.end method

.method public deleteAllFiles()V
    .registers 7

    .prologue
    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v3, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    if-eqz v3, :cond_13

    .line 438
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 439
    :try_start_8
    iget-object v3, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 440
    iget-object v3, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 441
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_34

    .line 443
    :cond_13
    iget-object v4, p0, mDumpList:Ljava/util/List;

    monitor-enter v4

    .line 444
    :try_start_16
    iget-object v3, p0, mDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 445
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v2, v0

    .line 447
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    .line 450
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v3

    .line 441
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v3

    .line 450
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_37
    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_31

    .line 451
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, deleteDirectory(Ljava/io/File;)V

    .line 452
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble/bubbleFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, deleteDirectory(Ljava/io/File;)V

    .line 453
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, deleteDirectory(Ljava/io/File;)V

    .line 454
    return-void
.end method

.method public getBufferLogSize()J
    .registers 5

    .prologue
    .line 399
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v0, "filterValue":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    iget v2, p0, mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    const-string v3, "auditLogBufferSize"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getCriticalLogSize()I
    .registers 2

    .prologue
    .line 360
    iget v0, p0, mAdminCriticalSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentLogFileSize()I
    .registers 7

    .prologue
    const/16 v1, 0x64

    .line 382
    const-wide/16 v2, 0x64

    iget-wide v4, p0, mCircularBufferSize:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, mBufferLimitSize:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 383
    .local v0, "res":I
    if-le v0, v1, :cond_e

    .line 384
    .local v1, "ret":I
    :goto_d
    return v1

    .end local v1    # "ret":I
    :cond_e
    move v1, v0

    .line 383
    goto :goto_d
.end method

.method public getDumpFilesList()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 343
    iget-object v1, p0, mDumpList:Ljava/util/List;

    monitor-enter v1

    .line 344
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, mDumpList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 345
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getLastTimestamp()J
    .registers 7

    .prologue
    .line 735
    const-wide/16 v2, 0x0

    .line 736
    .local v2, "timestamp":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 737
    .local v0, "filterValue":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    iget v4, p0, mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogLastTimestamp"

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 741
    return-wide v2
.end method

.method public getMaximumLogSize()I
    .registers 2

    .prologue
    .line 375
    iget v0, p0, mAdminMaximumSize:F

    float-to-int v0, v0

    return v0
.end method

.method protected resizeBubbleFile(J)V
    .registers 10
    .param p1, "size"    # J

    .prologue
    .line 610
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_2a

    .line 611
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 636
    :cond_29
    :goto_29
    return-void

    .line 614
    :cond_2a
    const/4 v2, 0x0

    .line 617
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_2b
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_53} :catch_72
    .catchall {:try_start_2b .. :try_end_53} :catchall_8b

    .line 619
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    long-to-int v4, p1

    add-int/lit8 v4, v4, -0x1

    :try_start_56
    new-array v0, v4, [B

    .line 620
    .local v0, "b":[B
    invoke-virtual {v3, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 622
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_60} :catch_9f
    .catchall {:try_start_56 .. :try_end_60} :catchall_9c

    .line 627
    if-eqz v3, :cond_a2

    .line 629
    :try_start_62
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_67

    move-object v2, v3

    .line 633
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_29

    .line 631
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_67
    move-exception v1

    .line 632
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 633
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_29

    .line 624
    .end local v0    # "b":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_72
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/Exception;
    :goto_73
    :try_start_73
    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.Exception"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_8b

    .line 627
    if-eqz v2, :cond_29

    .line 629
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_29

    .line 631
    :catch_81
    move-exception v1

    .line 632
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CircularBuffer"

    const-string/jumbo v5, "resizeBubbleFile.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 627
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_8b
    move-exception v4

    :goto_8c
    if-eqz v2, :cond_91

    .line 629
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    .line 633
    :cond_91
    :goto_91
    throw v4

    .line 631
    :catch_92
    move-exception v1

    .line 632
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "CircularBuffer"

    const-string/jumbo v6, "resizeBubbleFile.IOException"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 627
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_9c
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_8c

    .line 624
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_9f
    move-exception v1

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_73

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "b":[B
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_a2
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_29
.end method

.method public setBootCompleted(Z)V
    .registers 7
    .param p1, "boot"    # Z

    .prologue
    .line 423
    iput-boolean p1, p0, mIsBootCompleted:Z

    .line 425
    iget-boolean v1, p0, mIsBootCompleted:Z

    if-eqz v1, :cond_29

    .line 426
    iget-object v2, p0, mPendingIntentErrors:Ljava/util/List;

    monitor-enter v2

    .line 427
    :try_start_9
    iget-object v1, p0, mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 428
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 429
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    iget-object v4, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_f

    .line 431
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw v1

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :cond_28
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 433
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :cond_29
    return-void
.end method

.method public setBufferLogSize(J)V
    .registers 4
    .param p1, "bufferSize"    # J

    .prologue
    .line 391
    iput-wide p1, p0, mBufferLimitSize:J

    .line 392
    invoke-virtual {p0}, createBubbleDir()V

    .line 393
    return-void
.end method

.method public setCriticalLogSize(I)V
    .registers 3
    .param p1, "criticalSize"    # I

    .prologue
    .line 352
    int-to-float v0, p1

    iput v0, p0, mAdminCriticalSize:F

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, mCriticalIntent:Z

    .line 354
    return-void
.end method

.method public declared-synchronized setIsDumping(ZZ)V
    .registers 4
    .param p1, "dumping"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 460
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, mIsDumping:Z

    .line 462
    if-nez p1, :cond_11

    if-eqz p2, :cond_11

    iget-boolean v0, p0, mTypeOfDump:Z

    if-eqz v0, :cond_11

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, mTypeOfDump:Z

    .line 464
    invoke-direct {p0}, markDeprecatedFiles()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 466
    :cond_11
    monitor-exit p0

    return-void

    .line 460
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLastTimestamp(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "dumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    .line 719
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 721
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 722
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .restart local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    goto :goto_5

    .line 725
    :cond_12
    if-eqz v2, :cond_37

    .line 726
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 727
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "auditLogLastTimestamp"

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 728
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p0, mUid:I

    const-string v5, "AUDITLOG"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 731
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_37
    return-void
.end method

.method public setMaximumLogSize(I)V
    .registers 3
    .param p1, "maximumSize"    # I

    .prologue
    .line 367
    int-to-float v0, p1

    iput v0, p0, mAdminMaximumSize:F

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, mMaximumIntent:Z

    .line 369
    return-void
.end method

.method public setTypeOfDump(Z)V
    .registers 2
    .param p1, "isFull"    # Z

    .prologue
    .line 469
    iput-boolean p1, p0, mTypeOfDump:Z

    .line 470
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 10
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 307
    if-nez p1, :cond_41

    .line 308
    :try_start_2
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 309
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 310
    iget-wide v2, p0, mTotalDirectoryOccupation:J

    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, mTotalDirectoryOccupation:J

    .line 311
    iget-wide v2, p0, mCircularBufferSize:J

    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, mCircularBufferSize:J

    .line 312
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mLastDumpedFile:Ljava/lang/String;

    .line 313
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 314
    iget-object v1, p0, mDumpList:Ljava/util/List;

    iget-object v2, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-direct {p0}, addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 337
    :goto_40
    return-void

    .line 318
    :cond_41
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_90

    .line 319
    :try_start_44
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 320
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 321
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 322
    iget-wide v4, p0, mTotalDirectoryOccupation:J

    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, mTotalDirectoryOccupation:J

    .line 323
    iget-wide v4, p0, mCircularBufferSize:J

    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, mCircularBufferSize:J

    .line 325
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 326
    iget-object v1, p0, mDumpList:Ljava/util/List;

    iget-object v3, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-direct {p0}, addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 328
    iget-object v1, p0, mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    .line 329
    iget-wide v4, p0, mBufferLimitSize:J

    iget-wide v6, p0, mTotalDirectoryOccupation:J

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, resizeBubbleFile(J)V

    .line 331
    :cond_8b
    monitor-exit v2

    goto :goto_40

    :catchall_8d
    move-exception v1

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_44 .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v1
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_90} :catch_90

    .line 333
    :catch_90
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CircularBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_40
.end method
