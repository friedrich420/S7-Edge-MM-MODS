.class Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 2

    .prologue
    .line 443
    iput-object p1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPid(I)Ljava/lang/String;
    .registers 5
    .param p1, "pid"    # I

    .prologue
    .line 446
    iget-object v2, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 447
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_e

    .line 448
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 451
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_20
    return-object v2

    :cond_21
    const-string v2, ""

    goto :goto_20
.end method

.method getPidFromPackageName(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v2, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 456
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz p1, :cond_e

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 457
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 460
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_26
    return v2

    :cond_27
    const/4 v2, -0x1

    goto :goto_26
.end method

.method getUidFromPackageName(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v2, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 465
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz p1, :cond_e

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 466
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 469
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_26
    return v2

    :cond_27
    const/4 v2, -0x1

    goto :goto_26
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 15
    .param p1, "pid_"    # I
    .param p2, "uid_"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 474
    iget-object v7, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v7

    if-nez v7, :cond_b

    .line 508
    :cond_a
    :goto_a
    return-void

    .line 478
    :cond_b
    const/4 v1, 0x0

    .line 479
    .local v1, "packageName":Ljava/lang/String;
    move v2, p1

    .line 480
    .local v2, "pid":I
    move v6, p2

    .line 481
    .local v6, "uid":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_4f

    .line 482
    if-eqz p3, :cond_35

    .line 483
    invoke-virtual {p0, v2}, getPackageNameFromPid(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    :goto_17
    if-eqz v1, :cond_a

    .line 501
    iget-object v7, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 502
    .local v0, "msg":Landroid/os/Message;
    iput v8, v0, Landroid/os/Message;->what:I

    .line 503
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 505
    iput v6, v0, Landroid/os/Message;->arg2:I

    .line 506
    iget-object v7, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 485
    .end local v0    # "msg":Landroid/os/Message;
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 486
    .local v4, "time":J
    iget-object v7, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 487
    iget-object v7, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    add-long/2addr v8, v4

    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_a

    .line 491
    .end local v4    # "time":J
    :cond_4f
    iget-object v7, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 492
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 495
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {p0, v1}, getPidFromPackageName(Ljava/lang/String;)I

    move-result v2

    .line 497
    invoke-virtual {p0, v1}, getUidFromPackageName(Ljava/lang/String;)I

    move-result v6

    goto :goto_17
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 512
    return-void
.end method

.method public onProcessStateChanged(III)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    return-void
.end method
