.class final Lcom/android/server/am/ActivityManagerService$LocalService;
.super Landroid/app/ActivityManagerInternal;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 28517
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ActivityManagerService$1;

    .prologue
    .line 28517
    invoke-direct {p0, p1}, <init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 28546
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28548
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 28549
    :try_start_6
    new-instance v0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;

    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 28550
    .local v0, "token":Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28561
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 28562
    monitor-exit v2

    return-object v0

    .line 28563
    .end local v0    # "token":Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getHomeActivityForUser(I)Landroid/content/ComponentName;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 28568
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 28569
    :try_start_3
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(II)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 28570
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    :goto_f
    monitor-exit v2

    return-object v1

    :cond_11
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto :goto_f

    .line 28571
    .end local v0    # "homeActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public handleSContextChanged(II)V
    .registers 3
    .param p1, "sensorType"    # I
    .param p2, "sensorValue"    # I

    .prologue
    .line 28528
    return-void
.end method

.method public onMultipleScreenStateChanged(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    .line 28534
    return-void
.end method

.method public onScreenStateChanged(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .prologue
    .line 28525
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .registers 3
    .param p1, "wakefulness"    # I

    .prologue
    .line 28519
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->onWakefulnessChanged(I)V

    .line 28520
    return-void
.end method

.method public startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I
    .registers 14
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "abiOverride"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "crashHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 28540
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    move-result v0

    return v0
.end method
