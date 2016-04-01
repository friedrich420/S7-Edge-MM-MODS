.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field private blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mForceBlankDisplayStateRunnable:Ljava/lang/Runnable;

.field private final mForceUnblankDisplayStateRunnable:Ljava/lang/Runnable;

.field private mRequestingBrightness:I

.field private mRequestingID:I

.field private mRequestingState:I

.field private mRequestingSubBrightness:I

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 3

    .prologue
    .line 2717
    iput-object p1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    .line 2723
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 2974
    new-instance v0, Lcom/android/server/display/DisplayManagerService$LocalService$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$LocalService$2;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;)V

    iput-object v0, p0, mForceUnblankDisplayStateRunnable:Ljava/lang/Runnable;

    .line 2984
    new-instance v0, Lcom/android/server/display/DisplayManagerService$LocalService$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$LocalService$3;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;)V

    iput-object v0, p0, mForceBlankDisplayStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .prologue
    .line 2717
    invoke-direct {p0, p1}, <init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/display/DisplayManagerService$LocalService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService;

    .prologue
    .line 2717
    iget v0, p0, mRequestingID:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService;
    .param p1, "x1"    # I

    .prologue
    .line 2717
    iput p1, p0, mRequestingID:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/display/DisplayManagerService$LocalService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService;

    .prologue
    .line 2717
    iget v0, p0, mRequestingState:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService;
    .param p1, "x1"    # I

    .prologue
    .line 2717
    iput p1, p0, mRequestingState:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService;
    .param p1, "x1"    # I

    .prologue
    .line 2717
    invoke-direct {p0, p1}, getDisplayBitById(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/display/DisplayManagerService$LocalService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService;

    .prologue
    .line 2717
    iget v0, p0, mRequestingBrightness:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/display/DisplayManagerService$LocalService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService;
    .param p1, "x1"    # I

    .prologue
    .line 2717
    iput p1, p0, mRequestingBrightness:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/display/DisplayManagerService$LocalService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService;

    .prologue
    .line 2717
    iget-object v0, p0, blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method private getDisplayBitById(I)I
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 2909
    const/4 v0, 0x0

    .line 2910
    .local v0, "displayBit":I
    if-nez p1, :cond_5

    .line 2911
    const/4 v0, 0x1

    .line 2919
    :cond_4
    :goto_4
    return v0

    .line 2912
    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 2913
    const/4 v0, 0x2

    goto :goto_4

    .line 2914
    :cond_a
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 2915
    const/4 v0, 0x3

    goto :goto_4
.end method

.method private isValidDisplayId(I)Z
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 2923
    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    .line 2927
    :cond_8
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private sendForceDisplayStateLocked(I)V
    .registers 4
    .param p1, "forceState"    # I

    .prologue
    .line 2964
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 2965
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mHandlerPmsDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mForceUnblankDisplayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2972
    :cond_e
    :goto_e
    return-void

    .line 2968
    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 2969
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mHandlerPmsDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mForceBlankDisplayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method


# virtual methods
.method public addScaledPidFromWindowManager(ILjava/lang/String;)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2879
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->addScaledPid(ILjava/lang/String;)V

    .line 2880
    return-void
.end method

.method public blankAllDisplaysFromPowerManager()V
    .registers 3

    .prologue
    .line 2950
    const-string v0, "DisplayManagerService"

    const-string v1, "ALPM : blankAllDisplaysFromPowerManager"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockPMS:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4100(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2952
    const/4 v0, 0x1

    :try_start_f
    invoke-direct {p0, v0}, sendForceDisplayStateLocked(I)V

    .line 2953
    monitor-exit v1

    .line 2954
    return-void

    .line 2953
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getCurrentScreenBrightnessBeforeFinal()I
    .registers 2

    .prologue
    .line 2826
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$5100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getCurrentScreenBrightnessBeforeFinal()I

    move-result v0

    return v0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 8
    .param p1, "displayId"    # I

    .prologue
    .line 2837
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    # invokes: Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(IIILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->access$1800(Lcom/android/server/display/DisplayManagerService;IIILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .registers 12
    .param p1, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 2729
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 2730
    :try_start_7
    new-instance v5, Lcom/android/server/display/DisplayManagerService$LocalService$1;

    invoke-direct {v5, p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 2812
    .local v5, "blanker":Lcom/android/server/display/DisplayBlanker;
    iget-object v7, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    new-instance v0, Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V

    # setter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v7, v0}, Lcom/android/server/display/DisplayManagerService;->access$5102(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;

    .line 2814
    monitor-exit v6

    .line 2815
    return-void

    .line 2814
    .end local v5    # "blanker":Lcom/android/server/display/DisplayBlanker;
    :catchall_21
    move-exception v0

    monitor-exit v6
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public isForceUnblankDisplay()Z
    .registers 3

    .prologue
    .line 2935
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockPMS:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4100(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2936
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mIsForceUnblankDisplay:Z
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$5800(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2937
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .registers 2

    .prologue
    .line 2831
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$5100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v0

    return v0
.end method

.method public performTraversalInTransactionFromWindowManager()V
    .registers 2

    .prologue
    .line 2873
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionFromWindowManagerInternal()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$5500(Lcom/android/server/display/DisplayManagerService;)V

    .line 2874
    return-void
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 2844
    if-nez p1, :cond_b

    .line 2845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2848
    :cond_b
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$5200(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 2849
    return-void
.end method

.method public removeScaledPidFromWindowManager(I)V
    .registers 3
    .param p1, "pid"    # I

    .prologue
    .line 2884
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->removeScaledPid(I)V

    .line 2885
    return-void
.end method

.method public removeScaledPidsFromWindowManager()V
    .registers 2

    .prologue
    .line 2889
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->removeScaledPids()V

    .line 2890
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 2820
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$5100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v0

    return v0
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 2863
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 2864
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DualScreenTransition] setDisplayInfoOverrideFromWindowManager *** d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :cond_37
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$5400(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    .line 2869
    return-void
.end method

.method public setDisplayOffsets(III)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 2902
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$5700(Lcom/android/server/display/DisplayManagerService;III)V

    .line 2903
    return-void
.end method

.method public setDisplayProperties(IZFIZ)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedMode"    # I
    .param p5, "inTraversal"    # Z

    .prologue
    .line 2896
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->access$5600(Lcom/android/server/display/DisplayManagerService;IZFIZ)V

    .line 2898
    return-void
.end method

.method public setInputMethodDisplayEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "inputMethodTargetDisplayId"    # I

    .prologue
    .line 2959
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setInputMethodDisplayEnabled(ZI)V

    .line 2960
    return-void
.end method

.method public unblankAllDisplaysFromPowerManager()V
    .registers 3

    .prologue
    .line 2942
    const-string v0, "DisplayManagerService"

    const-string v1, "ALPM : unblankAllDisplaysFromPowerManager"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockPMS:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4100(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2944
    const/4 v0, 0x2

    :try_start_f
    invoke-direct {p0, v0}, sendForceDisplayStateLocked(I)V

    .line 2945
    monitor-exit v1

    .line 2946
    return-void

    .line 2945
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v0
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 2853
    if-nez p1, :cond_b

    .line 2854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2857
    :cond_b
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$5300(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 2858
    return-void
.end method
