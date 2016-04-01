.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$5;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static HAS_DUAL_MOTORS:I = 0x0

.field private static LEVEL_TO_MAGNITUDE:[I = null

.field private static final SAFE_DEBUG:Z

.field private static final SET_FREQUNCY_PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static USE_SET_MAX_MAGNITUE:Z = false

.field private static final VIB_DEBUG:Z = true

.field private static mIsEnableIntensity:Z

.field private static final mTypeURIs:[Ljava/lang/String;


# instance fields
.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitude:I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultMagnitude:I

.field private final mH:Landroid/os/Handler;

.field private mHMTMount:Z

.field private mHasVibrator:Z

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastEndWakeLock:Ljava/lang/String;

.field private mLastStartWakeLock:Ljava/lang/String;

.field private mLowPowerMode:Z

.field private mNotiMagnitude:I

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field private mTempToken:Landroid/os/IBinder;

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitude:I

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mvibePatternA:[J

.field private mvibePatternB:[J

.field private mvibePatternC:[J

.field private mvibePatternD:[J

.field private mvibePatternE:[J

.field private mvibePatternF:[J

.field private mvibePatternG:[J

.field private mvibePatternH:[J

.field private mvibePatternI:[J

.field private mvibePatternJ:[J

.field private mvibePatternK:[J

.field private mvibePatternL:[J

.field private mvibePatternM:[J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_3c

    move v0, v1

    :goto_9
    sput-boolean v0, SAFE_DEBUG:Z

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v3, v0, v1

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v3, v0, v2

    sput-object v0, mTypeURIs:[Ljava/lang/String;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, LEVEL_TO_MAGNITUDE:[I

    .line 103
    sput v1, HAS_DUAL_MOTORS:I

    .line 104
    sput-boolean v1, mIsEnableIntensity:Z

    .line 105
    const-string v0, "Max"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ConfigVibService"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, USE_SET_MAX_MAGNITUE:Z

    return-void

    :cond_3c
    move v0, v2

    .line 91
    goto :goto_9

    .line 102
    :array_3e
    .array-data 4
        0x0
        0x7d0
        0xfa0
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 336
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 106
    iput-boolean v5, p0, mHasVibrator:Z

    .line 122
    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    aget v3, v3, v6

    iput v3, p0, mTouchMagnitude:I

    .line 123
    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    aget v3, v3, v6

    iput v3, p0, mCallMagnitude:I

    .line 124
    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    aget v3, v3, v6

    iput v3, p0, mNotiMagnitude:I

    .line 125
    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    aget v3, v3, v6

    iput v3, p0, mDefaultMagnitude:I

    .line 132
    iput-boolean v5, p0, mHMTMount:Z

    .line 142
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    iput-object v3, p0, mTmpWorkSource:Landroid/os/WorkSource;

    .line 143
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, mH:Landroid/os/Handler;

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 160
    iput v4, p0, mCurVibUid:I

    .line 730
    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, p0, mVibrationRunnable:Ljava/lang/Runnable;

    .line 1085
    new-instance v3, Lcom/android/server/VibratorService$4;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1349
    iput v4, p0, mTempMagnitude:I

    .line 339
    invoke-static {}, vibratorOff()V

    .line 341
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 342
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 344
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v3, "VibratorService"

    invoke-virtual {v2, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 345
    iget-object v3, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 347
    const-string v3, "appops"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    iput-object v3, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 348
    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 351
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, mPreviousVibrationsLimit:I

    .line 354
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, mVibrations:Ljava/util/LinkedList;

    .line 355
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, mPreviousVibrations:Ljava/util/LinkedList;

    .line 357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v3, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v3, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v3, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107006c

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternA:[J

    .line 376
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107006d

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternB:[J

    .line 378
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107006e

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternC:[J

    .line 380
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107006f

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternD:[J

    .line 382
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070070

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternE:[J

    .line 384
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070071

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternF:[J

    .line 386
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070072

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternG:[J

    .line 388
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070073

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternH:[J

    .line 390
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070074

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternI:[J

    .line 392
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070075

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternJ:[J

    .line 394
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070076

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternK:[J

    .line 396
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070077

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternL:[J

    .line 398
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070078

    invoke-static {v3, v4}, getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, mvibePatternM:[J

    .line 401
    invoke-static {}, vibratorIntensityExists()Z

    move-result v3

    sput-boolean v3, mIsEnableIntensity:Z

    .line 402
    sget-boolean v3, mIsEnableIntensity:Z

    if-eqz v3, :cond_1db

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 411
    new-instance v3, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v3, p0, mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 412
    new-instance v3, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v3, p0, mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 413
    new-instance v3, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v3, p0, mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 415
    iget-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, mTypeURIs:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 416
    .local v1, "magnitudeLevel":I
    if-le v1, v6, :cond_1dc

    .end local v1    # "magnitudeLevel":I
    :goto_1ae
    iput v1, p0, mTouchMagnitude:I

    .line 418
    iget-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, mTypeURIs:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 419
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v6, :cond_1e1

    .end local v1    # "magnitudeLevel":I
    :goto_1bc
    iput v1, p0, mCallMagnitude:I

    .line 421
    iget-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, mTypeURIs:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 422
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v6, :cond_1e6

    .end local v1    # "magnitudeLevel":I
    :goto_1cb
    iput v1, p0, mNotiMagnitude:I

    .line 424
    sget-boolean v3, USE_SET_MAX_MAGNITUE:Z

    if-nez v3, :cond_1d5

    .line 425
    iget v3, p0, mNotiMagnitude:I

    iput v3, p0, mDefaultMagnitude:I

    .line 428
    :cond_1d5
    iget v3, p0, mDefaultMagnitude:I

    int-to-long v4, v3

    invoke-static {v4, v5}, vibratorIntensity(J)V

    .line 430
    :cond_1db
    return-void

    .line 416
    .restart local v1    # "magnitudeLevel":I
    :cond_1dc
    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    aget v1, v3, v1

    goto :goto_1ae

    .line 419
    :cond_1e1
    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    aget v1, v3, v1

    goto :goto_1bc

    .line 422
    :cond_1e6
    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    aget v1, v3, v1

    goto :goto_1cb
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 83
    sget-boolean v0, SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, mLastStartWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget v0, p0, mDefaultMagnitude:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, mDefaultMagnitude:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;JIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, doVibratorOn(JIII)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, mLastEndWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 83
    invoke-direct {p0, p1}, unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/VibratorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, mHMTMount:Z

    return p1
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 83
    sget-object v0, mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2600()Z
    .registers 1

    .prologue
    .line 83
    sget-boolean v0, mIsEnableIntensity:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, mTouchMagnitude:I

    return p1
.end method

.method static synthetic access$2800()[I
    .registers 1

    .prologue
    .line 83
    sget-object v0, LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, mCallMagnitude:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    invoke-direct {p0}, doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget v0, p0, mNotiMagnitude:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, mNotiMagnitude:I

    return p1
.end method

.method static synthetic access$3100()Z
    .registers 1

    .prologue
    .line 83
    sget-boolean v0, USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    invoke-direct {p0}, startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    invoke-direct {p0}, updateInputDeviceVibrators()V

    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 13
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 698
    iget-object v0, p0, mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_f

    .line 699
    iget-object v0, p0, mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 701
    :cond_f
    iget-object v0, p0, mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/VibratorService$VibrationInfo;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mStartTime:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v6

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JJ[JIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 703
    return-void
.end method

.method private doCancelVibrateLocked()V
    .registers 4

    .prologue
    .line 742
    iget-object v0, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_15

    .line 743
    iget-object v1, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 744
    :try_start_7
    iget-object v0, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 745
    iget-object v0, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 746
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_23

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 749
    :cond_15
    invoke-direct {p0}, doVibratorOff()V

    .line 750
    iget-object v0, p0, mH:Landroid/os/Handler;

    iget-object v1, p0, mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 751
    invoke-direct {p0}, reportFinishVibrationLocked()V

    .line 752
    return-void

    .line 746
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private doVibratorExists()Z
    .registers 2

    .prologue
    .line 916
    invoke-static {}, vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 6

    .prologue
    .line 972
    iget-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 976
    :try_start_3
    iget v2, p0, mCurVibUid:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_36

    if-ltz v2, :cond_11

    .line 978
    :try_start_7
    iget-object v2, p0, mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v4, p0, mCurVibUid:I

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_39
    .catchall {:try_start_7 .. :try_end_e} :catchall_36

    .line 981
    :goto_e
    const/4 v2, -0x1

    :try_start_f
    iput v2, p0, mCurVibUid:I

    .line 983
    :cond_11
    iget-object v2, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 984
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_2a

    .line 985
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v1, :cond_34

    .line 986
    iget-object v2, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 985
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 989
    .end local v0    # "i":I
    :cond_2a
    const-string v2, "VibratorService"

    const-string v4, "Turning vibrator off"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-static {}, vibratorOff()V

    .line 992
    :cond_34
    monitor-exit v3

    .line 993
    return-void

    .line 992
    .end local v1    # "vibratorCount":I
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_36

    throw v2

    .line 979
    :catch_39
    move-exception v2

    goto :goto_e
.end method

.method private doVibratorOn(JII)V
    .registers 12
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .prologue
    .line 920
    iget-object v4, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 925
    :try_start_3
    iget-object v3, p0, mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 926
    iput p3, p0, mCurVibUid:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_58
    .catchall {:try_start_3 .. :try_end_a} :catchall_55

    .line 929
    :goto_a
    :try_start_a
    iget-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 930
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_30

    .line 931
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 933
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v2, :cond_53

    .line 934
    iget-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 937
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_30
    const-string v3, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratorOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {p1, p2}, vibratorOn(J)V

    .line 940
    :cond_53
    monitor-exit v4

    .line 941
    return-void

    .line 940
    .end local v2    # "vibratorCount":I
    :catchall_55
    move-exception v3

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_a .. :try_end_57} :catchall_55

    throw v3

    .line 927
    :catch_58
    move-exception v3

    goto :goto_a
.end method

.method private doVibratorOn(JIII)V
    .registers 15
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I
    .param p5, "magnitude"    # I

    .prologue
    .line 945
    iget-object v4, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 950
    :try_start_3
    iget-object v3, p0, mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 951
    iput p3, p0, mCurVibUid:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_6a
    .catchall {:try_start_3 .. :try_end_a} :catchall_67

    .line 954
    :goto_a
    :try_start_a
    iget-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 955
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_30

    .line 956
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 958
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v2, :cond_65

    .line 959
    iget-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 962
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_30
    const-string v3, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratorOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", magnitude :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    sget-boolean v3, mIsEnableIntensity:Z

    if-eqz v3, :cond_62

    .line 964
    int-to-long v6, p5

    invoke-static {v6, v7}, vibratorIntensity(J)V

    .line 966
    :cond_62
    invoke-static {p1, p2}, vibratorOn(J)V

    .line 968
    :cond_65
    monitor-exit v4

    .line 969
    return-void

    .line 968
    .end local v2    # "vibratorCount":I
    :catchall_67
    move-exception v3

    monitor-exit v4
    :try_end_69
    .catchall {:try_start_a .. :try_end_69} :catchall_67

    throw v3

    .line 952
    :catch_6a
    move-exception v3

    goto :goto_a
.end method

.method private getCommonPattern(I)[J
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 1259
    packed-switch p1, :pswitch_data_32

    .line 1320
    :pswitch_3
    const/4 v2, 0x2

    new-array v0, v2, [J

    fill-array-data v0, :array_70

    .line 1321
    .local v0, "pattern":[J
    move-object v1, v0

    .line 1324
    .end local v0    # "pattern":[J
    .local v1, "vibePattern":[J
    :goto_a
    return-object v1

    .line 1271
    .end local v1    # "vibePattern":[J
    :pswitch_b
    iget-object v1, p0, mvibePatternA:[J

    .line 1272
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1275
    .end local v1    # "vibePattern":[J
    :pswitch_e
    iget-object v1, p0, mvibePatternB:[J

    .line 1276
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1280
    .end local v1    # "vibePattern":[J
    :pswitch_11
    iget-object v1, p0, mvibePatternC:[J

    .line 1281
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1283
    .end local v1    # "vibePattern":[J
    :pswitch_14
    iget-object v1, p0, mvibePatternD:[J

    .line 1284
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1286
    .end local v1    # "vibePattern":[J
    :pswitch_17
    iget-object v1, p0, mvibePatternE:[J

    .line 1287
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1291
    .end local v1    # "vibePattern":[J
    :pswitch_1a
    iget-object v1, p0, mvibePatternF:[J

    .line 1292
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1294
    .end local v1    # "vibePattern":[J
    :pswitch_1d
    iget-object v1, p0, mvibePatternG:[J

    .line 1295
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1298
    .end local v1    # "vibePattern":[J
    :pswitch_20
    iget-object v1, p0, mvibePatternH:[J

    .line 1299
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1302
    .end local v1    # "vibePattern":[J
    :pswitch_23
    iget-object v1, p0, mvibePatternI:[J

    .line 1303
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1306
    .end local v1    # "vibePattern":[J
    :pswitch_26
    iget-object v1, p0, mvibePatternJ:[J

    .line 1307
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1311
    .end local v1    # "vibePattern":[J
    :pswitch_29
    iget-object v1, p0, mvibePatternK:[J

    .line 1312
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1314
    .end local v1    # "vibePattern":[J
    :pswitch_2c
    iget-object v1, p0, mvibePatternL:[J

    .line 1315
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1317
    .end local v1    # "vibePattern":[J
    :pswitch_2f
    iget-object v1, p0, mvibePatternM:[J

    .line 1318
    .restart local v1    # "vibePattern":[J
    goto :goto_a

    .line 1259
    :pswitch_data_32
    .packed-switch 0xc359
        :pswitch_b
        :pswitch_11
        :pswitch_11
        :pswitch_20
        :pswitch_29
        :pswitch_e
        :pswitch_3
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1a
        :pswitch_1a
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
    .end packed-switch

    .line 1320
    :array_70
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 8
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 1246
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1247
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 1248
    const/4 v2, 0x0

    .line 1254
    :cond_7
    return-object v2

    .line 1250
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 1251
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 1252
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 1251
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private getMinMagnitude()I
    .registers 5

    .prologue
    .line 1388
    const/16 v1, 0x7d0

    .line 1390
    .local v1, "magnitude":I
    :try_start_2
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    const/4 v3, 0x1

    aget v1, v2, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    .line 1394
    :goto_7
    return v1

    .line 1391
    :catch_8
    move-exception v0

    .line 1392
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Min magnitude should be 2000"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private isAll0([J)Z
    .registers 8
    .param p1, "pattern"    # [J

    .prologue
    .line 627
    array-length v0, p1

    .line 628
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 629
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 630
    const/4 v2, 0x0

    .line 633
    :goto_d
    return v2

    .line 628
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 633
    :cond_11
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 818
    iget-object v2, p0, mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 819
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 820
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 821
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 822
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 823
    invoke-direct {p0, v1}, unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 833
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_1f
    return-object v1

    .line 829
    :cond_20
    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_34

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_34

    .line 830
    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 831
    iget-object v1, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_1f

    .line 833
    :cond_34
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private reportFinishVibrationLocked()V
    .registers 6

    .prologue
    .line 805
    iget-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1f

    .line 807
    :try_start_4
    iget-object v0, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_20

    .line 812
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 814
    :cond_1f
    return-void

    .line 810
    :catch_20
    move-exception v0

    goto :goto_1c
.end method

.method private startNextVibrationLocked()V
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 757
    invoke-direct {p0}, reportFinishVibrationLocked()V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 763
    :goto_e
    return-void

    .line 761
    :cond_f
    iget-object v0, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 762
    iget-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_e
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 9
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 777
    :try_start_0
    iget-object v1, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/4 v2, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 779
    .local v0, "mode":I
    if-nez v0, :cond_2a

    .line 780
    iget-object v1, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 783
    :cond_2a
    if-eqz v0, :cond_74

    .line 784
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 785
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_4b
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_6b

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Infinite: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_6b
    iget-object v1, p0, mH:Landroid/os/Handler;

    iget-object v2, p0, mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_72} :catch_73

    .line 802
    .end local v0    # "mode":I
    :goto_72
    return-void

    .line 791
    :catch_73
    move-exception v1

    .line 793
    :cond_74
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a7

    .line 794
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-eqz v1, :cond_a4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    :goto_94
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, doVibratorOn(JIII)V

    .line 795
    iget-object v1, p0, mH:Landroid/os/Handler;

    iget-object v2, p0, mVibrationRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_72

    .line 794
    :cond_a4
    iget v6, p0, mDefaultMagnitude:I

    goto :goto_94

    .line 799
    :cond_a7
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v1, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 800
    iget-object v1, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_72
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 837
    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_e

    .line 841
    :try_start_6
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 846
    :cond_e
    :goto_e
    return-void

    .line 842
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private updateInputDeviceVibrators()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 849
    iget-object v6, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 850
    :try_start_5
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 852
    iget-object v7, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_79

    .line 853
    const/4 v8, 0x0

    :try_start_c
    iput-boolean v8, p0, mVibrateInputDevicesSetting:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_76

    .line 855
    :try_start_e
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "vibrate_input_devices"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_67

    :goto_1e
    iput-boolean v4, p0, mVibrateInputDevicesSetting:Z
    :try_end_20
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e .. :try_end_20} :catch_82
    .catchall {:try_start_e .. :try_end_20} :catchall_76

    .line 861
    :goto_20
    :try_start_20
    iget-object v4, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v4

    iput-boolean v4, p0, mLowPowerMode:Z

    .line 863
    iget-boolean v4, p0, mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_69

    .line 864
    iget-boolean v4, p0, mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_3a

    .line 865
    const/4 v4, 0x1

    iput-boolean v4, p0, mInputDeviceListenerRegistered:Z

    .line 866
    iget-object v4, p0, mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 875
    :cond_3a
    :goto_3a
    iget-object v4, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 876
    iget-boolean v4, p0, mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_7c

    .line 877
    iget-object v4, p0, mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 878
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    array-length v4, v2

    if-ge v1, v4, :cond_7c

    .line 879
    iget-object v4, p0, mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 880
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 881
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 882
    iget-object v4, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_67
    move v4, v5

    .line 855
    goto :goto_1e

    .line 869
    :cond_69
    iget-boolean v4, p0, mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3a

    .line 870
    const/4 v4, 0x0

    iput-boolean v4, p0, mInputDeviceListenerRegistered:Z

    .line 871
    iget-object v4, p0, mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_3a

    .line 886
    :catchall_76
    move-exception v4

    monitor-exit v7
    :try_end_78
    .catchall {:try_start_20 .. :try_end_78} :catchall_76

    :try_start_78
    throw v4

    .line 889
    :catchall_79
    move-exception v4

    monitor-exit v6
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_79

    throw v4

    .line 886
    :cond_7c
    :try_start_7c
    monitor-exit v7
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_76

    .line 888
    :try_start_7d
    invoke-direct {p0}, startNextVibrationLocked()V

    .line 889
    monitor-exit v6
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_79

    .line 890
    return-void

    .line 858
    :catch_82
    move-exception v4

    goto :goto_20
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 520
    :cond_6
    :goto_6
    return-void

    .line 515
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 518
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method private vibrate(ILjava/lang/String;JILandroid/os/IBinder;I)V
    .registers 23
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 577
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 579
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    :cond_12
    iget-boolean v2, p0, mHMTMount:Z

    if-eqz v2, :cond_1f

    .line 584
    const-string v2, "VibratorService"

    const-string/jumbo v4, "vibrate() : HMTMount is TRUE. "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :goto_1e
    return-void

    .line 588
    :cond_1f
    invoke-direct/range {p0 .. p1}, verifyIncomingUid(I)V

    .line 592
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_36

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_58

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 597
    :cond_36
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 607
    :cond_58
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", magnitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;I)V

    .line 612
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 614
    .local v12, "ident":J
    :try_start_ad
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_c9

    .line 615
    :try_start_b0
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 616
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 617
    iput-object v3, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 618
    invoke-direct {p0, v3}, addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 619
    invoke-direct {p0, v3}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 620
    monitor-exit v4
    :try_end_c1
    .catchall {:try_start_b0 .. :try_end_c1} :catchall_c6

    .line 622
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e

    .line 620
    :catchall_c6
    move-exception v2

    :try_start_c7
    monitor-exit v4
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    :try_start_c8
    throw v2
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c9

    .line 622
    :catchall_c9
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorIntensity(J)V
.end method

.method static native vibratorIntensityExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 707
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 714
    .local v0, "identity":J
    :try_start_d
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 715
    :try_start_10
    invoke-direct {p0, p1}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 716
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_1e

    .line 720
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 721
    invoke-direct {p0}, startNextVibrationLocked()V

    .line 723
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    return-void

    .line 723
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 726
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1594
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump vibrator service from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    :goto_32
    return-void

    .line 1602
    :cond_33
    const-string v2, "Previous vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    iget-object v3, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1604
    :try_start_3b
    iget-object v2, p0, mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1605
    .local v1, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    .line 1608
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_3b .. :try_end_5c} :catchall_5a

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5d
    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5a

    .line 1609
    const-string v2, "Current Info:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLowPowerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mLowPowerMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTouchMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mTouchMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCallMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCallMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mNotiMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mNotiMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDefaultMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mDefaultMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mHMTMount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mHMTMount:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mHasVibrator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mHasVibrator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIsEnableInt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, mIsEnableIntensity:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  USE_SET_MAX_MAGNITUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, USE_SET_MAX_MAGNITUE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1398
    invoke-static {p1}, Landroid/os/Vibrator$MagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$MagnitudeTypes;

    move-result-object v0

    .line 1399
    .local v0, "magnitudeType":Landroid/os/Vibrator$MagnitudeTypes;
    sget-object v1, Lcom/android/server/VibratorService$5;->$SwitchMap$android$os$Vibrator$MagnitudeTypes:[I

    invoke-virtual {v0}, Landroid/os/Vibrator$MagnitudeTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 1411
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 1401
    :pswitch_11
    iget v1, p0, mTouchMagnitude:I

    goto :goto_10

    .line 1403
    :pswitch_14
    iget v1, p0, mNotiMagnitude:I

    goto :goto_10

    .line 1405
    :pswitch_17
    iget v1, p0, mCallMagnitude:I

    goto :goto_10

    .line 1407
    :pswitch_1a
    invoke-virtual {p0}, getMaxMagnitude()I

    move-result v1

    goto :goto_10

    .line 1409
    :pswitch_1f
    invoke-direct {p0}, getMinMagnitude()I

    move-result v1

    goto :goto_10

    .line 1399
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method

.method public getMaxMagnitude()I
    .registers 5

    .prologue
    .line 1378
    const/16 v1, 0x2710

    .line 1380
    .local v1, "magnitude":I
    :try_start_2
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 1384
    :goto_b
    return v1

    .line 1381
    :catch_c
    move-exception v0

    .line 1382
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Default magnitude = 10000"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public hasVibrator()Z
    .registers 5

    .prologue
    .line 486
    invoke-direct {p0}, doVibratorExists()Z

    move-result v0

    iput-boolean v0, p0, mHasVibrator:Z

    .line 487
    sget-boolean v0, SAFE_DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasVibrator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mHasVibrator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEnableIntensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mIsEnableIntensity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_31
    iget-object v1, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    .line 491
    :try_start_34
    iget-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_9f

    .line 492
    const-string v0, "VibratorService"

    const-string v2, "***** Current vibration info *****"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->printInfo()V

    .line 495
    iget-object v0, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 496
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVibrations.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last package that started the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mLastStartWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last package that ended the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mLastEndWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_34 .. :try_end_a0} :catchall_a3

    .line 503
    iget-boolean v0, p0, mHasVibrator:Z

    return v0

    .line 501
    :catchall_a3
    move-exception v0

    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v0
.end method

.method public isEnableIntensity()Z
    .registers 4

    .prologue
    .line 507
    sget-boolean v0, SAFE_DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableIntensity() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mIsEnableIntensity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1f
    sget-boolean v0, mIsEnableIntensity:Z

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 894
    invoke-direct {p0}, updateInputDeviceVibrators()V

    .line 895
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 899
    invoke-direct {p0}, updateInputDeviceVibrators()V

    .line 900
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 904
    invoke-direct {p0}, updateInputDeviceVibrators()V

    .line 905
    return-void
.end method

.method public readFromFile(J)I
    .registers 14
    .param p1, "offset"    # J

    .prologue
    const/4 v7, -0x1

    .line 1548
    const/4 v4, 0x0

    .line 1549
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    const-string v8, "/dev/block/param"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_18

    .line 1552
    const-string v8, "VibratorService"

    const-string v9, "It\'s not Factory Binary"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1589
    :goto_17
    return v6

    .line 1556
    :cond_18
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_27

    .line 1557
    const-string v8, "VibratorService"

    const-string v9, "/dev/block/param is not found"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1558
    goto :goto_17

    .line 1560
    :cond_27
    const/4 v6, -0x1

    .line 1564
    .local v6, "value":I
    :try_start_28
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    const-string v9, "/dev/block/param"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_37} :catch_7e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_37} :catch_84

    .line 1570
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_37
    invoke-virtual {v5, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1572
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1573
    .local v0, "byteData":[B
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1575
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 1577
    const-string v8, "VibratorService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get frequency : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_7c} :catch_92

    move-object v4, v5

    .line 1589
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_17

    .line 1565
    .end local v0    # "byteData":[B
    :catch_7e
    move-exception v1

    .line 1566
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_84

    move v6, v7

    .line 1567
    goto :goto_17

    .line 1579
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_84
    move-exception v1

    .line 1580
    .local v1, "e":Ljava/io/IOException;
    :goto_85
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1582
    :try_start_88
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8d

    :goto_8b
    move v6, v7

    .line 1586
    goto :goto_17

    .line 1583
    :catch_8d
    move-exception v2

    .line 1584
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b

    .line 1579
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_92
    move-exception v1

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_85
.end method

.method reloadContentObserver()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x5

    .line 1415
    sget-boolean v1, mIsEnableIntensity:Z

    if-eqz v1, :cond_4a

    .line 1416
    iget-object v1, p0, mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1417
    iget-object v1, p0, mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1418
    iget-object v1, p0, mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1421
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, mTypeURIs:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1422
    .local v0, "magnitudeLevel":I
    if-le v0, v4, :cond_4b

    .end local v0    # "magnitudeLevel":I
    :goto_22
    iput v0, p0, mTouchMagnitude:I

    .line 1424
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, mTypeURIs:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1425
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v4, :cond_50

    .end local v0    # "magnitudeLevel":I
    :goto_31
    iput v0, p0, mCallMagnitude:I

    .line 1427
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, mTypeURIs:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1428
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v4, :cond_55

    .end local v0    # "magnitudeLevel":I
    :goto_40
    iput v0, p0, mNotiMagnitude:I

    .line 1430
    sget-boolean v1, USE_SET_MAX_MAGNITUE:Z

    if-nez v1, :cond_4a

    .line 1431
    iget v1, p0, mNotiMagnitude:I

    iput v1, p0, mDefaultMagnitude:I

    .line 1434
    :cond_4a
    return-void

    .line 1422
    .restart local v0    # "magnitudeLevel":I
    :cond_4b
    sget-object v1, LEVEL_TO_MAGNITUDE:[I

    aget v0, v1, v0

    goto :goto_22

    .line 1425
    :cond_50
    sget-object v1, LEVEL_TO_MAGNITUDE:[I

    aget v0, v1, v0

    goto :goto_31

    .line 1428
    :cond_55
    sget-object v1, LEVEL_TO_MAGNITUDE:[I

    aget v0, v1, v0

    goto :goto_40
.end method

.method public resetMagnitude()V
    .registers 3

    .prologue
    .line 1365
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1367
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_12
    iget v0, p0, mTempMagnitude:I

    if-gez v0, :cond_17

    .line 1375
    :goto_16
    return-void

    .line 1373
    :cond_17
    iget v0, p0, mTempMagnitude:I

    iput v0, p0, mTouchMagnitude:I

    .line 1374
    const/4 v0, -0x1

    iput v0, p0, mTempMagnitude:I

    goto :goto_16
.end method

.method public setMagnitude(I)V
    .registers 4
    .param p1, "magnitude"    # I

    .prologue
    .line 1351
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1353
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_12
    if-gez p1, :cond_1c

    .line 1356
    const/4 p1, 0x0

    .line 1360
    :cond_15
    :goto_15
    iget v0, p0, mTouchMagnitude:I

    iput v0, p0, mTempMagnitude:I

    .line 1361
    iput p1, p0, mTouchMagnitude:I

    .line 1362
    return-void

    .line 1357
    :cond_1c
    const/16 v0, 0x2710

    if-le p1, v0, :cond_15

    .line 1358
    const/16 p1, 0x2710

    goto :goto_15
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 433
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, mIm:Landroid/hardware/input/InputManager;

    .line 434
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v1, p0, mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 436
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 437
    iget-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/VibratorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 445
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 449
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 457
    invoke-direct {p0}, updateInputDeviceVibrators()V

    .line 471
    return-void
.end method

.method public vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 525
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 527
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_12
    iget-boolean v2, p0, mHMTMount:Z

    if-eqz v2, :cond_1f

    .line 532
    const-string v2, "VibratorService"

    const-string/jumbo v4, "vibrate() : HMTMount is TRUE. "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_1e
    return-void

    .line 536
    :cond_1f
    invoke-direct/range {p0 .. p1}, verifyIncomingUid(I)V

    .line 540
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_36

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_58

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 545
    :cond_36
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 555
    :cond_58
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 560
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 562
    .local v12, "ident":J
    :try_start_9f
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_bb

    .line 563
    :try_start_a2
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 564
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 565
    iput-object v3, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 566
    invoke-direct {p0, v3}, addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 567
    invoke-direct {p0, v3}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 568
    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_a2 .. :try_end_b3} :catchall_b8

    .line 570
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e

    .line 568
    :catchall_b8
    move-exception v2

    :try_start_b9
    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    :try_start_ba
    throw v2
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_bb

    .line 570
    :catchall_bb
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public vibrateCommonPatternMagnitude(ILjava/lang/String;IILandroid/os/IBinder;II)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I
    .param p7, "usageHint"    # I

    .prologue
    .line 1328
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1330
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1334
    :cond_12
    iget-boolean v0, p0, mHMTMount:Z

    if-eqz v0, :cond_1f

    .line 1335
    const-string v0, "VibratorService"

    const-string/jumbo v1, "vibrateCommonPatternMagnitude() : HMTMount is TRUE. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_1e
    return-void

    .line 1339
    :cond_1f
    invoke-direct {p0, p3}, getCommonPattern(I)[J

    move-result-object v3

    .line 1340
    .local v3, "vibePattern":[J
    array-length v0, v3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    .line 1341
    const/4 v0, 0x0

    aget-wide v0, v3, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_4f

    .line 1342
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_4f
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p7

    move-object v6, p5

    move v7, p6

    .line 1346
    invoke-virtual/range {v0 .. v7}, vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;I)V

    goto :goto_1e
.end method

.method public vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;I)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 1147
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1149
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_12
    iget-boolean v0, p0, mHMTMount:Z

    if-eqz v0, :cond_1f

    .line 1154
    const-string v0, "VibratorService"

    const-string/jumbo v1, "vibrateMagnitude() : HMTMount is TRUE. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_1e
    return-void

    .line 1158
    :cond_1f
    const/4 v0, -0x1

    if-ne p7, v0, :cond_26

    .line 1159
    invoke-virtual/range {p0 .. p6}, vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_1e

    .line 1161
    :cond_26
    invoke-direct/range {p0 .. p7}, vibrate(ILjava/lang/String;JILandroid/os/IBinder;I)V

    goto :goto_1e
.end method

.method public vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 639
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 641
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 645
    :cond_12
    iget-boolean v3, p0, mHMTMount:Z

    if-eqz v3, :cond_1f

    .line 646
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePattern() : HMTMount is TRUE. "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_1e
    return-void

    .line 650
    :cond_1f
    invoke-direct {p0, p1}, verifyIncomingUid(I)V

    .line 652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 664
    .local v12, "identity":J
    if-eqz p3, :cond_3e

    :try_start_28
    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_3e

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, isAll0([J)Z

    move-result v3

    if-nez v3, :cond_3e

    move-object/from16 v0, p3

    array-length v3, v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_84

    move/from16 v0, p4

    if-ge v0, v3, :cond_3e

    if-nez p6, :cond_42

    .line 693
    :cond_3e
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 670
    :cond_42
    :try_start_42
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_84

    .line 672
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v3, 0x0

    :try_start_54
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_76
    .catchall {:try_start_54 .. :try_end_59} :catchall_84

    .line 677
    :try_start_59
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_84

    .line 678
    :try_start_5c
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 679
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 680
    if-ltz p4, :cond_7b

    .line 681
    iget-object v3, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 682
    invoke-direct {p0}, startNextVibrationLocked()V

    .line 689
    :goto_6e
    invoke-direct {p0, v2}, addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 690
    monitor-exit v4
    :try_end_72
    .catchall {:try_start_5c .. :try_end_72} :catchall_81

    .line 693
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 673
    :catch_76
    move-exception v10

    .line 693
    .local v10, "e":Landroid/os/RemoteException;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 686
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_7b
    :try_start_7b
    iput-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 687
    invoke-direct {p0, v2}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_6e

    .line 690
    :catchall_81
    move-exception v3

    monitor-exit v4
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_81

    :try_start_83
    throw v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    .line 693
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_84
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;I)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 1167
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 1169
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1173
    :cond_12
    iget-boolean v3, p0, mHMTMount:Z

    if-eqz v3, :cond_1f

    .line 1174
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePatternMagnitude() : HMTMount is TRUE. "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_1e
    return-void

    .line 1178
    :cond_1f
    invoke-direct {p0, p1}, verifyIncomingUid(I)V

    .line 1180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1192
    .local v12, "identity":J
    if-eqz p3, :cond_3e

    :try_start_28
    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_3e

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, isAll0([J)Z

    move-result v3

    if-nez v3, :cond_3e

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, p4

    if-ge v0, v3, :cond_3e

    if-nez p6, :cond_4a

    .line 1195
    :cond_3e
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_cd

    .line 1241
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 1200
    :cond_4a
    const/4 v3, -0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_b7

    .line 1202
    :try_start_4f
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratePatternMagnitude - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_93
    .catchall {:try_start_4f .. :try_end_93} :catchall_cd

    .line 1220
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_93
    const/4 v3, 0x0

    :try_start_94
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_99} :catch_126
    .catchall {:try_start_94 .. :try_end_99} :catchall_cd

    .line 1225
    :try_start_99
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_cd

    .line 1226
    :try_start_9c
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1227
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 1228
    if-ltz p4, :cond_12c

    .line 1229
    iget-object v3, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1230
    invoke-direct {p0}, startNextVibrationLocked()V

    .line 1237
    :goto_ae
    invoke-direct {p0, v2}, addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1238
    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_9c .. :try_end_b2} :catchall_133

    .line 1241
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e

    .line 1206
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_b7
    if-nez p7, :cond_d2

    .line 1207
    :try_start_b9
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_cd

    .line 1208
    :try_start_bc
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1209
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 1210
    monitor-exit v4
    :try_end_c5
    .catchall {:try_start_bc .. :try_end_c5} :catchall_ca

    .line 1241
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e

    .line 1210
    :catchall_ca
    move-exception v3

    :try_start_cb
    monitor-exit v4
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    :try_start_cc
    throw v3
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cd

    .line 1241
    :catchall_cd
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1214
    :cond_d2
    :try_start_d2
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratePatternMagnitude - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;I)V
    :try_end_124
    .catchall {:try_start_d2 .. :try_end_124} :catchall_cd

    .restart local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    goto/16 :goto_93

    .line 1221
    :catch_126
    move-exception v11

    .line 1241
    .local v11, "e":Landroid/os/RemoteException;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e

    .line 1234
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_12c
    :try_start_12c
    iput-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1235
    invoke-direct {p0, v2}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto/16 :goto_ae

    .line 1238
    :catchall_133
    move-exception v3

    monitor-exit v4
    :try_end_135
    .catchall {:try_start_12c .. :try_end_135} :catchall_133

    :try_start_135
    throw v3
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_cd
.end method

.method public writeToFile(JI)Z
    .registers 15
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1496
    const/4 v4, 0x0

    .line 1497
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    const-string v8, "/dev/block/param"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1499
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_18

    .line 1500
    const-string v7, "VibratorService"

    const-string v8, "It\'s not Factory Binary"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :goto_17
    return v6

    .line 1504
    :cond_18
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_26

    .line 1505
    const-string v7, "VibratorService"

    const-string v8, "/dev/block/param is not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1511
    :cond_26
    :try_start_26
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    const-string v9, "/dev/block/param"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_35} :catch_77
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_35} :catch_7c

    .line 1517
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_35
    invoke-virtual {v5, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1519
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1520
    .local v0, "byteData":[B
    const/4 v8, 0x0

    and-int/lit16 v9, p3, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1521
    const/4 v8, 0x1

    shr-int/lit8 v9, p3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1522
    const/4 v8, 0x2

    shr-int/lit8 v9, p3, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1523
    const/4 v8, 0x3

    shr-int/lit8 v9, p3, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1525
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1526
    const/4 v8, 0x1

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1527
    const/4 v8, 0x2

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1528
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1530
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_74} :catch_89

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    move v6, v7

    .line 1541
    goto :goto_17

    .line 1512
    .end local v0    # "byteData":[B
    :catch_77
    move-exception v1

    .line 1513
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_78
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_17

    .line 1531
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_7c
    move-exception v1

    .line 1532
    .local v1, "e":Ljava/io/IOException;
    :goto_7d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1534
    :try_start_80
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_17

    .line 1535
    :catch_84
    move-exception v2

    .line 1536
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 1531
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_89
    move-exception v1

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_7d
.end method
