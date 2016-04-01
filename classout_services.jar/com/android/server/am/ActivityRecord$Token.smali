.class Lcom/android/server/am/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 465
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 466
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, weakActivity:Ljava/lang/ref/WeakReference;

    .line 467
    iput-object p2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityRecord$Token;

    .prologue
    .line 461
    invoke-static {p0}, tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private static final tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    .registers 4
    .param p0, "token"    # Lcom/android/server/am/ActivityRecord$Token;

    .prologue
    const/4 v1, 0x0

    .line 547
    if-nez p0, :cond_5

    move-object v0, v1

    .line 554
    :cond_4
    :goto_4
    return-object v0

    .line 550
    :cond_5
    iget-object v2, p0, weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 551
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_4

    :cond_19
    move-object v0, v1

    .line 552
    goto :goto_4
.end method


# virtual methods
.method public getDisplayId()I
    .registers 3

    .prologue
    .line 510
    iget-object v1, p0, weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 511
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    .line 512
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    .line 514
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public getKeyDispatchingTimeout()J
    .registers 6

    .prologue
    .line 536
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 537
    :try_start_3
    invoke-static {p0}, tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 538
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 539
    const-wide/16 v2, 0x0

    monitor-exit v4

    .line 542
    :goto_c
    return-wide v2

    .line 541
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 542
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J

    move-result-wide v2

    monitor-exit v4

    goto :goto_c

    .line 543
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_17
    move-exception v1

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public hasSubWindow()Z
    .registers 3

    .prologue
    .line 579
    iget-object v1, p0, weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 580
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    .line 581
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->hasSubWindow()Z

    move-result v1

    .line 583
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isHomeWindow()Z
    .registers 3

    .prologue
    .line 589
    iget-object v1, p0, weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 590
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    .line 591
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeWindow()Z

    move-result v1

    .line 593
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;)Z
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 523
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 524
    :try_start_4
    invoke-static {p0}, tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 525
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_c

    .line 526
    monitor-exit v5

    .line 531
    :goto_b
    return v4

    .line 528
    :cond_c
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 529
    .local v2, "anrActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1d

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 530
    .local v1, "anrApp":Lcom/android/server/am/ProcessRecord;
    :goto_14
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1f

    .line 531
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v4

    goto :goto_b

    .line 529
    .end local v1    # "anrApp":Lcom/android/server/am/ProcessRecord;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14

    .line 530
    .end local v2    # "anrActivity":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 8
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/high16 v5, 0x8000000

    .line 558
    iget-object v3, p0, weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 559
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_18

    .line 560
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_19

    .line 574
    :cond_18
    :goto_18
    return-void

    .line 564
    :cond_19
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v3, v4, :cond_3d

    .line 565
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v4

    xor-int v1, v3, v4

    .line 566
    .local v1, "diff":I
    if-ne v1, v5, :cond_3d

    .line 567
    invoke-virtual {p1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    .line 568
    .local v2, "option":Z
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, v5, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_18

    .line 572
    .end local v1    # "diff":I
    .end local v2    # "option":Z
    :cond_3d
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityRecord;->scheduleSetMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 599
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    iget-object v1, p0, weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public windowsDrawn()V
    .registers 4

    .prologue
    .line 472
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 473
    :try_start_3
    invoke-static {p0}, tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 474
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c

    .line 475
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsDrawnLocked()V

    .line 477
    :cond_c
    monitor-exit v2

    .line 478
    return-void

    .line 477
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public windowsGone()V
    .registers 4

    .prologue
    .line 492
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 493
    :try_start_3
    invoke-static {p0}, tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 494
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_e

    .line 496
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 503
    monitor-exit v2

    .line 506
    :goto_d
    return-void

    .line 505
    :cond_e
    monitor-exit v2

    goto :goto_d

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public windowsVisible()V
    .registers 4

    .prologue
    .line 482
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 483
    :try_start_3
    invoke-static {p0}, tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 484
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c

    .line 485
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsVisibleLocked()V

    .line 487
    :cond_c
    monitor-exit v2

    .line 488
    return-void

    .line 487
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
