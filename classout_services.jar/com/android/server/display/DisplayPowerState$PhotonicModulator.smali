.class final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_STATE:I = 0x1


# instance fields
.field private mActualBacklight:I

.field private mActualState:I

.field private mBacklightChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingRequestDisplayState:Z

.field private mPendingState:I

.field private mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

.field private mStateChangeInProgress:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 450
    iput-object p1, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    .line 451
    const-string v0, "PhotonicModulator"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 438
    iput v2, p0, mPendingState:I

    .line 439
    iput v1, p0, mPendingBacklight:I

    .line 440
    iput v2, p0, mActualState:I

    .line 441
    iput v1, p0, mActualBacklight:I

    .line 447
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 601
    new-instance v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;-><init>(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)V

    iput-object v0, p0, mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    .line 453
    # getter for: Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;
    invoke-static {p1}, Lcom/android/server/display/DisplayPowerState;->access$1200(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v0

    iget-object v1, p0, mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayBlanker;->registerRequestDisplayStateDoneListener(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 432
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, mPendingRequestDisplayState:Z

    return p1
.end method

.method private getFinalMarkerPosition(I)I
    .registers 5
    .param p1, "backlight"    # I

    .prologue
    const/16 v1, 0xff

    .line 582
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    iget v2, v2, Lcom/android/server/display/DisplayPowerState;->mFinalBrightnessDiff:I

    sub-int v0, p1, v2

    .line 584
    .local v0, "finalMarkerPosition":I
    if-gtz v0, :cond_c

    const/4 v0, 0x0

    .line 586
    .end local v0    # "finalMarkerPosition":I
    :cond_b
    :goto_b
    return v0

    .line 585
    .restart local v0    # "finalMarkerPosition":I
    :cond_c
    if-lt v0, v1, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method private setBrightness(I)V
    .registers 5
    .param p1, "backlight"    # I

    .prologue
    .line 593
    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBacklight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$1800(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 597
    :goto_9
    return-void

    .line 594
    :catch_a
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DisplayPowerState"

    const-string v2, "Faild to set brightness"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 492
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 494
    const-string v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mPendingState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mPendingBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mActualState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mActualBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStateChangeInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, mStateChangeInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBacklightChangeInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, mBacklightChangeInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    monitor-exit v1

    .line 502
    return-void

    .line 501
    :catchall_a5
    move-exception v0

    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_3 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 507
    iget-object v6, p0, mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v7, "LCD_Task is start"

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 515
    :cond_b
    :goto_b
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 516
    :try_start_e
    iget v2, p0, mPendingState:I

    .line 517
    .local v2, "state":I
    iget v7, p0, mActualState:I

    if-eq v2, v7, :cond_39

    move v3, v4

    .line 518
    .local v3, "stateChanged":Z
    :goto_15
    iget v0, p0, mPendingBacklight:I

    .line 519
    .local v0, "backlight":I
    iget v7, p0, mActualBacklight:I

    if-eq v0, v7, :cond_3b

    move v1, v4

    .line 520
    .local v1, "backlightChanged":Z
    :goto_1c
    if-nez v3, :cond_26

    .line 522
    iget-object v7, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # invokes: Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerState;->access$1500(Lcom/android/server/display/DisplayPowerState;)V

    .line 523
    const/4 v7, 0x0

    iput-boolean v7, p0, mStateChangeInProgress:Z

    .line 525
    :cond_26
    if-nez v1, :cond_2b

    .line 526
    const/4 v7, 0x0

    iput-boolean v7, p0, mBacklightChangeInProgress:Z
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_36

    .line 528
    :cond_2b
    if-nez v3, :cond_3d

    if-nez v1, :cond_3d

    .line 530
    :try_start_2f
    iget-object v7, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_34} :catch_114
    .catchall {:try_start_2f .. :try_end_34} :catchall_36

    .line 532
    :goto_34
    :try_start_34
    monitor-exit v6

    goto :goto_b

    .line 541
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v2    # "state":I
    .end local v3    # "stateChanged":Z
    :catchall_36
    move-exception v4

    monitor-exit v6
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v4

    .restart local v2    # "state":I
    :cond_39
    move v3, v5

    .line 517
    goto :goto_15

    .restart local v0    # "backlight":I
    .restart local v3    # "stateChanged":Z
    :cond_3b
    move v1, v5

    .line 519
    goto :goto_1c

    .line 535
    .restart local v1    # "backlightChanged":Z
    :cond_3d
    if-eqz v3, :cond_42

    .line 536
    const/4 v7, 0x1

    :try_start_40
    iput-boolean v7, p0, mPendingRequestDisplayState:Z

    .line 539
    :cond_42
    iput v2, p0, mActualState:I

    .line 540
    iput v0, p0, mActualBacklight:I

    .line 541
    monitor-exit v6
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_36

    .line 544
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v6

    if-eqz v6, :cond_be

    .line 545
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating screen state: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_73
    :goto_73
    if-eqz v1, :cond_78

    .line 558
    invoke-direct {p0, v0}, setBrightness(I)V

    .line 563
    :cond_78
    # getter for: Lcom/android/server/display/DisplayPowerState;->mGlobalScreenStateHint:I
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$1600()I

    move-result v6

    if-eqz v6, :cond_103

    .line 564
    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1200(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v6

    invoke-interface {v6, v2, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    .line 572
    :goto_87
    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    iget-boolean v6, v6, Lcom/android/server/display/DisplayPowerState;->mUseMarkTracker:Z

    if-eqz v6, :cond_b

    .line 573
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tracking!!: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v0}, getFinalMarkerPosition(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1700(Lcom/android/server/display/DisplayPowerState;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "brightness_pms_marker_screen"

    invoke-direct {p0, v0}, getFinalMarkerPosition(I)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_b

    .line 550
    :cond_be
    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBrightByColorFadeExit:Z
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1300(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 551
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating screen state ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDisplayId:I
    invoke-static {v8}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight (by ColorFade)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # setter for: Lcom/android/server/display/DisplayPowerState;->mBrightByColorFadeExit:Z
    invoke-static {v6, v5}, Lcom/android/server/display/DisplayPowerState;->access$1302(Lcom/android/server/display/DisplayPowerState;Z)Z

    goto/16 :goto_73

    .line 566
    :cond_103
    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1200(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDisplayId:I
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)I

    move-result v7

    invoke-interface {v6, v7, v2, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(III)V

    goto/16 :goto_87

    .line 531
    :catch_114
    move-exception v7

    goto/16 :goto_34
.end method

.method public setState(II)Z
    .registers 12
    .param p1, "state"    # I
    .param p2, "backlight"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 457
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 458
    :try_start_5
    iget v6, p0, mPendingState:I

    if-eq p1, v6, :cond_66

    move v2, v3

    .line 459
    .local v2, "stateChanged":Z
    :goto_a
    iget v6, p0, mPendingBacklight:I

    if-eq p2, v6, :cond_68

    move v0, v3

    .line 460
    .local v0, "backlightChanged":Z
    :goto_f
    if-nez v2, :cond_13

    if-eqz v0, :cond_5c

    .line 461
    :cond_13
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 462
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting new screen state: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_3f
    :goto_3f
    iput p1, p0, mPendingState:I

    .line 473
    iput p2, p0, mPendingBacklight:I

    .line 475
    iget-boolean v6, p0, mStateChangeInProgress:Z

    if-nez v6, :cond_4b

    iget-boolean v6, p0, mBacklightChangeInProgress:Z

    if-eqz v6, :cond_ac

    :cond_4b
    move v1, v3

    .line 476
    .local v1, "changeInProgress":Z
    :goto_4c
    iput-boolean v2, p0, mStateChangeInProgress:Z

    .line 477
    iput-boolean v0, p0, mBacklightChangeInProgress:Z

    .line 479
    if-nez v1, :cond_5c

    .line 481
    iget-object v6, p0, mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 483
    iget-object v6, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 486
    .end local v1    # "changeInProgress":Z
    :cond_5c
    iget-boolean v6, p0, mStateChangeInProgress:Z

    if-nez v6, :cond_ae

    iget-boolean v6, p0, mPendingRequestDisplayState:Z

    if-nez v6, :cond_ae

    :goto_64
    monitor-exit v5

    return v3

    .end local v0    # "backlightChanged":Z
    .end local v2    # "stateChanged":Z
    :cond_66
    move v2, v4

    .line 458
    goto :goto_a

    .restart local v2    # "stateChanged":Z
    :cond_68
    move v0, v4

    .line 459
    goto :goto_f

    .line 466
    .restart local v0    # "backlightChanged":Z
    :cond_6a
    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mBrightByColorFadeExit:Z
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->access$1300(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 467
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting new screen state: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mDisplayId:I
    invoke-static {v8}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight (By colorFade)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 488
    .end local v0    # "backlightChanged":Z
    .end local v2    # "stateChanged":Z
    :catchall_a9
    move-exception v3

    monitor-exit v5
    :try_end_ab
    .catchall {:try_start_5 .. :try_end_ab} :catchall_a9

    throw v3

    .restart local v0    # "backlightChanged":Z
    .restart local v2    # "stateChanged":Z
    :cond_ac
    move v1, v4

    .line 475
    goto :goto_4c

    :cond_ae
    move v3, v4

    .line 486
    goto :goto_64
.end method
