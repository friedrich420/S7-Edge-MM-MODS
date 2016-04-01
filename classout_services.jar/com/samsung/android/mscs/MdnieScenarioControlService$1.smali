.class Lcom/samsung/android/mscs/MdnieScenarioControlService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mscs/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 2

    .prologue
    .line 427
    iput-object p1, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPid(I)Ljava/lang/String;
    .registers 5
    .param p1, "pid"    # I

    .prologue
    .line 430
    iget-object v2, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;

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

    .line 431
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_e

    .line 432
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 435
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
    .line 439
    iget-object v2, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;

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

    .line 440
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz p1, :cond_e

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 441
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 444
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
    .line 448
    iget-object v2, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;

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

    .line 449
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz p1, :cond_e

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 450
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 453
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_26
    return v2

    :cond_27
    const/4 v2, -0x1

    goto :goto_26
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 16
    .param p1, "pid_"    # I
    .param p2, "uid_"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 458
    iget-object v8, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    if-nez v8, :cond_9

    .line 493
    :cond_8
    :goto_8
    return-void

    .line 462
    :cond_9
    const/4 v2, 0x0

    .line 463
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 465
    .local v0, "className":Ljava/lang/String;
    move v3, p1

    .line 466
    .local v3, "pid":I
    move v5, p2

    .line 468
    .local v5, "uid":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_31

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 470
    .local v6, "time":J
    iget-object v8, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 471
    iget-object v8, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I
    invoke-static {v10}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v6

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_8

    .line 474
    .end local v6    # "time":J
    :cond_31
    iget-object v8, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 478
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 479
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-virtual {p0, v2}, getPidFromPackageName(Ljava/lang/String;)I

    move-result v3

    .line 481
    invoke-virtual {p0, v2}, getUidFromPackageName(Ljava/lang/String;)I

    move-result v5

    .line 482
    const-string v8, "MdnieScenarioControlService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    className : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 486
    iget-object v8, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 487
    .local v1, "msg":Landroid/os/Message;
    const/4 v8, 0x0

    iput v8, v1, Landroid/os/Message;->what:I

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 490
    iput v5, v1, Landroid/os/Message;->arg2:I

    .line 491
    iget-object v8, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v8}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 497
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
    .line 501
    return-void
.end method
