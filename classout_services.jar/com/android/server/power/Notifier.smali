.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_CHANGED:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mInteractive:Z

.field private mInteractiveChangeReason:I

.field private mInteractiveChanging:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private mPersona:Landroid/os/PersonaManager;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

.field private final mScreenBrightnessBoostIntent:Landroid/content/Intent;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

.field private final mSubScreenOffIntent:Landroid/content/Intent;

.field private final mSubScreenOnIntent:Landroid/content/Intent;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V
    .registers 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x50000000

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 127
    iput-boolean v1, p0, mInteractive:Z

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, mPersona:Landroid/os/PersonaManager;

    .line 669
    new-instance v0, Lcom/android/server/power/Notifier$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    .line 690
    new-instance v0, Lcom/android/server/power/Notifier$7;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 713
    new-instance v0, Lcom/android/server/power/Notifier$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$8;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 155
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 156
    iput-object p3, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 157
    iput-object p4, p0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 158
    iput-object p5, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 159
    iput-object p6, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    .line 160
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 161
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 162
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 163
    const-class v0, Lcom/android/internal/os/SelfHealingServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SelfHealingServiceInternal;

    iput-object v0, p0, mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    .line 165
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mScreenOnIntent:Landroid/content/Intent;

    .line 167
    iget-object v0, p0, mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mScreenOffIntent:Landroid/content/Intent;

    .line 170
    iget-object v0, p0, mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mScreenBrightnessBoostIntent:Landroid/content/Intent;

    .line 174
    iget-object v0, p0, mScreenBrightnessBoostIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SUBSCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mSubScreenOnIntent:Landroid/content/Intent;

    .line 182
    iget-object v0, p0, mSubScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SUBSCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mSubScreenOffIntent:Landroid/content/Intent;

    .line 185
    iget-object v0, p0, mSubScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    :try_start_b3
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_b9} :catch_c7

    .line 195
    :goto_b9
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersona:Landroid/os/PersonaManager;

    .line 197
    return-void

    .line 192
    :catch_c7
    move-exception v0

    goto :goto_b9
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-object v0, p0, mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-object v0, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/Notifier;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/Notifier;)Landroid/hardware/input/InputManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-object v0, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/Notifier;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-object v0, p0, mSubScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-object v0, p0, mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-object v0, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-wide v0, p0, mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    invoke-direct {p0}, sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    invoke-direct {p0}, sendUserActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    invoke-direct {p0}, playWirelessChargingStartedSound()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    invoke-direct {p0}, sendBrightnessBoostChangedBroadcast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/Notifier;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 85
    iget-object v0, p0, mSubScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    .prologue
    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, mBroadcastInProgress:Z

    .line 604
    iget-object v0, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 605
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .registers 5
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 330
    const v2, 0xffff

    and-int/2addr v2, p1

    sparse-switch v2, :sswitch_data_18

    move v0, v1

    .line 354
    :cond_a
    :goto_a
    :sswitch_a
    return v0

    .line 336
    :sswitch_b
    const/4 v0, 0x1

    goto :goto_a

    .line 339
    :sswitch_d
    iget-boolean v2, p0, mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v2, :cond_a

    move v0, v1

    .line 340
    goto :goto_a

    .line 345
    :sswitch_13
    const/16 v0, 0x12

    goto :goto_a

    :sswitch_16
    move v0, v1

    .line 351
    goto :goto_a

    .line 330
    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_a
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x20 -> :sswitch_d
        0x40 -> :sswitch_16
        0x80 -> :sswitch_13
    .end sparse-switch
.end method

.method private handleEarlyInteractiveChange()V
    .registers 5

    .prologue
    .line 424
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 425
    :try_start_3
    iget-boolean v1, p0, mInteractive:Z

    if-eqz v1, :cond_1c

    .line 427
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$2;

    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 436
    const/4 v1, 0x1

    iput v1, p0, mPendingInteractiveState:I

    .line 437
    const/4 v1, 0x1

    iput-boolean v1, p0, mPendingWakeUpBroadcast:Z

    .line 438
    invoke-direct {p0}, updatePendingBroadcastLocked()V

    .line 450
    :goto_1a
    monitor-exit v2

    .line 451
    return-void

    .line 442
    :cond_1c
    iget v1, p0, mInteractiveChangeReason:I

    invoke-static {v1}, translateOffReason(I)I

    move-result v0

    .line 443
    .local v0, "why":I
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$3;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 450
    .end local v0    # "why":I
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private handleLateInteractiveChange()V
    .registers 5

    .prologue
    .line 459
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 460
    :try_start_3
    iget-boolean v1, p0, mInteractive:Z

    if-eqz v1, :cond_13

    .line 462
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$4;

    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 499
    :goto_11
    monitor-exit v2

    .line 500
    return-void

    .line 476
    :cond_13
    iget-boolean v1, p0, mUserActivityPending:Z

    if-eqz v1, :cond_20

    .line 477
    const/4 v1, 0x0

    iput-boolean v1, p0, mUserActivityPending:Z

    .line 478
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 482
    :cond_20
    iget v1, p0, mInteractiveChangeReason:I

    invoke-static {v1}, translateOffReason(I)I

    move-result v0

    .line 483
    .local v0, "why":I
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$5;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 495
    const/4 v1, 0x2

    iput v1, p0, mPendingInteractiveState:I

    .line 496
    const/4 v1, 0x1

    iput-boolean v1, p0, mPendingGoToSleepBroadcast:Z

    .line 497
    invoke-direct {p0}, updatePendingBroadcastLocked()V

    goto :goto_11

    .line 499
    .end local v0    # "why":I
    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V
    .registers 14
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 776
    iget-object v0, p0, mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_c

    .line 777
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Wrong! Notifier.onWakeLockForKnox() mPersona == null."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_b
    :goto_b
    return-void

    .line 783
    :cond_c
    if-nez p6, :cond_3f

    .line 789
    :goto_e
    :try_start_e
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_b

    .line 790
    iget-object v0, p0, mPersona:Landroid/os/PersonaManager;

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/PersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_b

    .line 792
    :catch_21
    move-exception v6

    .line 793
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong! Notifier.onWakeLockForKnox() Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 783
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3f
    const/4 v0, 0x0

    :try_start_40
    invoke-virtual {p6, v0}, Landroid/os/WorkSource;->get(I)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_21

    move-result p4

    goto :goto_e
.end method

.method private playWirelessChargingStartedSound()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 723
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "charging_sounds_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4f

    move v0, v4

    .line 725
    .local v0, "enabled":Z
    :goto_10
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wireless_charging_started_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, "soundPath":Ljava/lang/String;
    if-eqz v0, :cond_49

    if-eqz v2, :cond_49

    .line 728
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 729
    .local v3, "soundUri":Landroid/net/Uri;
    if-eqz v3, :cond_49

    .line 730
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 731
    .local v1, "sfx":Landroid/media/Ringtone;
    if-eqz v1, :cond_49

    .line 732
    invoke-virtual {v1, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 733
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 738
    .end local v1    # "sfx":Landroid/media/Ringtone;
    .end local v3    # "soundUri":Landroid/net/Uri;
    :cond_49
    iget-object v4, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 739
    return-void

    .line 723
    .end local v0    # "enabled":Z
    .end local v2    # "soundPath":Ljava/lang/String;
    :cond_4f
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private sendBrightnessBoostChangedBroadcast()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 665
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mScreenBrightnessBoostIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v6, 0x0

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 667
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 704
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 705
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 711
    :goto_18
    return-void

    .line 708
    :cond_19
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 709
    invoke-direct {p0}, sendNextBroadcast()V

    goto :goto_18
.end method

.method private sendNextBroadcast()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 620
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 621
    :try_start_5
    iget v1, p0, mBroadcastedInteractiveState:I

    if-nez v1, :cond_23

    .line 623
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingWakeUpBroadcast:Z

    .line 624
    const/4 v1, 0x1

    iput v1, p0, mBroadcastedInteractiveState:I

    .line 647
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, mBroadcastStartTime:J

    .line 648
    iget v0, p0, mBroadcastedInteractiveState:I

    .line 649
    .local v0, "powerState":I
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_3a

    .line 651
    const/16 v1, 0xaa5

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 653
    if-ne v0, v3, :cond_5a

    .line 654
    invoke-direct {p0}, sendWakeUpBroadcast()V

    .line 658
    .end local v0    # "powerState":I
    :goto_22
    return-void

    .line 625
    :cond_23
    :try_start_23
    iget v1, p0, mBroadcastedInteractiveState:I

    if-ne v1, v3, :cond_42

    .line 627
    iget-boolean v1, p0, mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_33

    iget v1, p0, mPendingInteractiveState:I

    if-ne v1, v4, :cond_3d

    .line 629
    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingGoToSleepBroadcast:Z

    .line 630
    const/4 v1, 0x2

    iput v1, p0, mBroadcastedInteractiveState:I

    goto :goto_f

    .line 649
    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3a

    throw v1

    .line 632
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, finishPendingBroadcastLocked()V

    .line 633
    monitor-exit v2

    goto :goto_22

    .line 637
    :cond_42
    iget-boolean v1, p0, mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_4e

    iget-boolean v1, p0, mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_4e

    iget v1, p0, mPendingInteractiveState:I

    if-ne v1, v3, :cond_55

    .line 639
    :cond_4e
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingWakeUpBroadcast:Z

    .line 640
    const/4 v1, 0x1

    iput v1, p0, mBroadcastedInteractiveState:I

    goto :goto_f

    .line 642
    :cond_55
    invoke-direct {p0}, finishPendingBroadcastLocked()V

    .line 643
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_3a

    goto :goto_22

    .line 656
    .restart local v0    # "powerState":I
    :cond_5a
    invoke-direct {p0}, sendGoToSleepBroadcast()V

    goto :goto_22
.end method

.method private sendUserActivity()V
    .registers 3

    .prologue
    .line 608
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_3
    iget-boolean v0, p0, mUserActivityPending:Z

    if-nez v0, :cond_9

    .line 610
    monitor-exit v1

    .line 616
    :goto_8
    return-void

    .line 612
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, mUserActivityPending:Z

    .line 613
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 615
    iget-object v0, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto :goto_8

    .line 613
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .registers 10

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 681
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 682
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 688
    :goto_19
    return-void

    .line 685
    :cond_1a
    const/16 v0, 0xaa7

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 686
    invoke-direct {p0}, sendNextBroadcast()V

    goto :goto_19
.end method

.method private static translateOffReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .prologue
    .line 503
    sparse-switch p0, :sswitch_data_c

    .line 513
    const/4 v0, 0x2

    :goto_4
    return v0

    .line 505
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 507
    :sswitch_7
    const/4 v0, 0x3

    goto :goto_4

    .line 510
    :sswitch_9
    const/4 v0, 0x4

    goto :goto_4

    .line 503
    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_7
        0x7 -> :sswitch_9
    .end sparse-switch
.end method

.method private updatePendingBroadcastLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 590
    iget-boolean v1, p0, mBroadcastInProgress:Z

    if-nez v1, :cond_2d

    iget v1, p0, mPendingInteractiveState:I

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_17

    iget v1, p0, mPendingInteractiveState:I

    iget v2, p0, mBroadcastedInteractiveState:I

    if-eq v1, v2, :cond_2d

    .line 594
    :cond_17
    iput-boolean v3, p0, mBroadcastInProgress:Z

    .line 595
    iget-object v1, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 596
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 597
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 598
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 600
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2d
    return-void
.end method


# virtual methods
.method public onMultipleScreenStateChanging(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    .line 819
    iget-object v0, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Lcom/android/server/power/Notifier$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/Notifier$10;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 826
    return-void
.end method

.method public onScreenBrightnessBoostChanged()V
    .registers 4

    .prologue
    .line 525
    iget-object v1, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 526
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 527
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 528
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 529
    return-void
.end method

.method public onSubScreenStateChanged(III)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "reason"    # I

    .prologue
    .line 800
    iget-object v0, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Lcom/android/server/power/Notifier$9;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/power/Notifier$9;-><init>(Lcom/android/server/power/Notifier;III)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 816
    return-void
.end method

.method public onTspLpmNeed(IZ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 829
    const-string v0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTspLpmNeed : id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerInternal;->setTspLpmMode(IZ)V

    .line 831
    return-void
.end method

.method public onUserActivity(II)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .prologue
    .line 540
    :try_start_0
    iget-object v1, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_24

    .line 545
    :goto_5
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 546
    :try_start_8
    iget-boolean v1, p0, mUserActivityPending:Z

    if-nez v1, :cond_1f

    .line 547
    const/4 v1, 0x1

    iput-boolean v1, p0, mUserActivityPending:Z

    .line 548
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 549
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 550
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1f
    monitor-exit v2

    .line 553
    return-void

    .line 552
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1

    .line 541
    :catch_24
    move-exception v1

    goto :goto_5
.end method

.method public onWakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 26
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPid"    # I
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 211
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    .line 212
    .local v7, "monitorType":I
    if-ltz v7, :cond_28

    .line 214
    const/16 v2, 0x3e8

    move/from16 v0, p5

    if-ne v0, v2, :cond_54

    const/high16 v2, 0x40000000    # 2.0f

    and-int v2, v2, p2

    if-eqz v2, :cond_54

    const/4 v8, 0x1

    .line 216
    .local v8, "unimportantForLogging":Z
    :goto_17
    if-eqz p7, :cond_56

    .line 217
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p7

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_7b

    .line 232
    .end local v8    # "unimportantForLogging":Z
    :cond_28
    :goto_28
    move-object/from16 v0, p0

    iget-object v2, v0, mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    if-eqz v2, :cond_43

    .line 233
    move-object/from16 v0, p0

    iget-object v9, v0, mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/os/SelfHealingServiceInternal;->wakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V

    .line 239
    :cond_43
    const/4 v10, 0x1

    move-object/from16 v9, p0

    move/from16 v11, p2

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    invoke-direct/range {v9 .. v15}, onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 241
    return-void

    .line 214
    :cond_54
    const/4 v8, 0x0

    goto :goto_17

    .line 220
    .restart local v8    # "unimportantForLogging":Z
    :cond_56
    :try_start_56
    move-object/from16 v0, p0

    iget-object v2, v0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v0, p0

    iget-object v3, v0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x28

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_7a} :catch_7b

    goto :goto_28

    .line 226
    :catch_7b
    move-exception v2

    goto :goto_28
.end method

.method public onWakeLockChanging(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 40
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPid"    # I
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;
    .param p9, "newFlags"    # I
    .param p10, "newTag"    # Ljava/lang/String;
    .param p11, "newPackageName"    # Ljava/lang/String;
    .param p12, "newOwnerUid"    # I
    .param p13, "newOwnerPid"    # I
    .param p14, "newWorkSource"    # Landroid/os/WorkSource;
    .param p15, "newHistoryTag"    # Ljava/lang/String;

    .prologue
    .line 251
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getBatteryStatsWakeLockMonitorType(I)I

    move-result v8

    .line 252
    .local v8, "monitorType":I
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v1}, getBatteryStatsWakeLockMonitorType(I)I

    move-result v13

    .line 253
    .local v13, "newMonitorType":I
    if-eqz p7, :cond_74

    if-eqz p14, :cond_74

    if-ltz v8, :cond_74

    if-ltz v13, :cond_74

    .line 262
    const/16 v3, 0x3e8

    move/from16 v0, p12

    if-ne v0, v3, :cond_72

    const/high16 v3, 0x40000000    # 2.0f

    and-int v3, v3, p9

    if-eqz v3, :cond_72

    const/4 v14, 0x1

    .line 265
    .local v14, "unimportantForLogging":Z
    :goto_25
    :try_start_25
    move-object/from16 v0, p0

    iget-object v3, v0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v4, p7

    move/from16 v5, p6

    move-object/from16 v6, p3

    move-object/from16 v7, p8

    move-object/from16 v9, p14

    move/from16 v10, p13

    move-object/from16 v11, p10

    move-object/from16 v12, p15

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3c} :catch_8d

    .line 272
    :goto_3c
    const/16 v16, 0x0

    move-object/from16 v15, p0

    move/from16 v17, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, p6

    move-object/from16 v21, p7

    invoke-direct/range {v15 .. v21}, onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 273
    const/16 v16, 0x1

    move-object/from16 v15, p0

    move/from16 v17, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, p6

    move-object/from16 v21, p14

    invoke-direct/range {v15 .. v21}, onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    if-eqz v3, :cond_71

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    move-object/from16 v0, p1

    move/from16 v1, p9

    move-object/from16 v2, p14

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/os/SelfHealingServiceInternal;->wakeLockChanged(Landroid/os/IBinder;ILandroid/os/WorkSource;)V

    .line 286
    .end local v14    # "unimportantForLogging":Z
    :cond_71
    :goto_71
    return-void

    .line 262
    :cond_72
    const/4 v14, 0x0

    goto :goto_25

    .line 282
    :cond_74
    invoke-virtual/range {p0 .. p8}, onWakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move-object/from16 v22, p14

    move-object/from16 v23, p15

    .line 283
    invoke-virtual/range {v15 .. v23}, onWakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    goto :goto_71

    .line 268
    .restart local v14    # "unimportantForLogging":Z
    :catch_8d
    move-exception v3

    goto :goto_3c
.end method

.method public onWakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 25
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPid"    # I
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 300
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    .line 301
    .local v7, "monitorType":I
    if-ltz v7, :cond_1b

    .line 303
    if-eqz p7, :cond_47

    .line 304
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p7

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_6c

    .line 318
    :cond_1b
    :goto_1b
    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v8 .. v14}, onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    if-eqz v2, :cond_46

    .line 323
    move-object/from16 v0, p0

    iget-object v8, v0, mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/SelfHealingServiceInternal;->wakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V

    .line 327
    :cond_46
    return-void

    .line 307
    :cond_47
    :try_start_47
    move-object/from16 v0, p0

    iget-object v2, v0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v0, p0

    iget-object v3, v0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x28

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_6b} :catch_6c

    goto :goto_1b

    .line 312
    :catch_6c
    move-exception v2

    goto :goto_1b
.end method

.method public onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "opUid"    # I

    .prologue
    .line 565
    :try_start_0
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    .line 566
    if-eqz p3, :cond_e

    .line 567
    iget-object v0, p0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x3d

    invoke-interface {v0, v1, p4, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 573
    :cond_e
    :goto_e
    return-void

    .line 569
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public onWakefulnessChangeFinished()V
    .registers 2

    .prologue
    .line 413
    iget-boolean v0, p0, mInteractiveChanging:Z

    if-eqz v0, :cond_a

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, mInteractiveChanging:Z

    .line 415
    invoke-direct {p0}, handleLateInteractiveChange()V

    .line 417
    :cond_a
    return-void
.end method

.method public onWakefulnessChangeStarted(II)V
    .registers 6
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 365
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 373
    .local v0, "interactive":Z
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 382
    iget-boolean v1, p0, mInteractive:Z

    if-eq v1, v0, :cond_32

    .line 384
    iget-boolean v1, p0, mInteractiveChanging:Z

    if-eqz v1, :cond_19

    .line 385
    invoke-direct {p0}, handleLateInteractiveChange()V

    .line 389
    :cond_19
    iget-object v1, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 390
    iget-object v1, p0, mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 394
    :try_start_23
    iget-object v1, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_33

    .line 398
    :goto_28
    iput-boolean v0, p0, mInteractive:Z

    .line 399
    iput p2, p0, mInteractiveChangeReason:I

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, mInteractiveChanging:Z

    .line 401
    invoke-direct {p0}, handleEarlyInteractiveChange()V

    .line 403
    :cond_32
    return-void

    .line 395
    :catch_33
    move-exception v1

    goto :goto_28
.end method

.method public onWirelessChargingStarted()V
    .registers 4

    .prologue
    .line 583
    iget-object v1, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 584
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 585
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 586
    iget-object v1, p0, mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 587
    return-void
.end method
