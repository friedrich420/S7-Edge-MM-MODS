.class public Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String; = "ADPD"

.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field public static final EOH_STOP_BY_SCREEN_OFF:I = 0x0

.field public static final EXTRA_ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String; = "PowerKey DoubleClick"

.field public static final EXTRA_VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "HomeKey Click"

.field public static final EXTRA_VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "RecentKey Click"

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final MENU_LONG_POLICY_LAUNCH_SFINDER:Ljava/lang/String; = "SFINDER"

.field static final QUICKACCESS_BLACKUI_COMPONENT:Ljava/lang/String; = "com.sec.android.app.GlanceView"

.field static final QUICKACCESS_BLACKUI_LAUNCH_ACTION:Ljava/lang/String; = "com.android.settings.LaunchGlanceView"

.field static final QUICKACCESS_BLACKUI_RECEIVER:Ljava/lang/String; = "com.sec.android.app.GlanceView.GlanceReceiver"

.field static final SAFE_DEBUG:Z

.field static final SAMSUNGPAY_LAUNCH_ACTION:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field static final SCREENCAPTURE_BOTH:I = 0x3

.field static final SCREENCAPTURE_KEY:I = 0x1

.field static final SCREENCAPTURE_MAIN:I = 0x1

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_PALM:I = 0x2

.field static final SCREENCAPTURE_SUB:I = 0x2

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field public static final START_AOD_BOOT:I = 0x1

.field public static final START_AOD_SCREEN_OFF:I = 0x3

.field public static final START_AOD_SCREEN_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field public static final VOICE_CALL_HOMEKEY_ANSWER:Ljava/lang/String; = "VCHA"

.field public static final VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "VCHK"

.field public static final VOICE_CALL_POWERKEY_ENDCALL:Ljava/lang/String; = "VCPE"

.field public static final VOICE_CALL_POWERKEY_SIELNCE:Ljava/lang/String; = "VCPS"

.field public static final VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "VCRK"

.field public static final VOICE_CALL_VOLUMEKEY_SILENCE:Ljava/lang/String; = "VCVS"

.field static final localLOGV:Z

.field private static mCameraId:Ljava/lang/String;

.field private static mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static mCurrentUser:I

.field static mFocusedWindowPkgName:Ljava/lang/String;

.field private static mIsTablet:Z


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field final QUICKACCESS_CAMERA:I

.field final QUICKACCESS_CHANGE_AOD_MODE:I

.field final QUICKACCESS_SAMSUNGPAY:I

.field final QUICKACCESS_STATUS:I

.field final QUICKACCESS_SUBSCREEN_WAKEUP:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field private bIsTorchOn:Z

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field public mAodStartState:I

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableDoublTapOnHomeCommand:Z

.field mAvailableVoiceCommand:Z

.field private mBackKeyConsumed:Z

.field mBlackMemoIntent:Landroid/content/Intent;

.field mBlockKeyForDrivingMode:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCapturedDisplay:I

.field mCapturedOrigin:I

.field private final mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

.field mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field private mContextLoggingThread:Ljava/lang/Thread;

.field private mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field mCoverNoteEnabled:Z

.field mDoubleTapHomeUser:I

.field mDoubleTapOnHomeBehavior:I

.field mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field private mFolderCloseSound:Ljava/lang/String;

.field private mFolderOpenSound:Ljava/lang/String;

.field private mFolderSoundEnable:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field private mHasFakeMenuKeyBack:Z

.field private mHasFakeMenuKeyRecent:Z

.field mHasFlashAnnotateComponent:Z

.field private mHasPermanentMenuKey:Z

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field private final mIsLiveDemo:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field private mIsSupportManualScreenPinning:Z

.field mIsUseAccessControl:Z

.field private mIsWakeupPrevention:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLowPowerMode:Z

.field private mMenuConsumed:Z

.field private mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field mNetworkSelectionLongPress:Z

.field mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerDoubleBehavior:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mProKioskReEnableVolumeUpKey:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRecentConsumed:Z

.field private final mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

.field mRingtone:Landroid/media/Ringtone;

.field private mRotationBooster:Landroid/os/DVFSHelper;

.field private final mRotationForQuickAccess:Ljava/lang/Runnable;

.field private mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field final mScreenshotLock:Ljava/lang/Object;

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTripleTapOnHomeBehavior:I

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field private mUserKeyConsumed:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/Vibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field private mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

.field private mWakeupPreventionPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_a

    move v0, v1

    :cond_a
    sput-boolean v0, SAFE_DEBUG:Z

    .line 311
    sput-boolean v1, mIsTablet:Z

    .line 313
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v2, "phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, mIsTablet:Z

    .line 366
    const-string v0, "UNKNOWN"

    sput-object v0, mFocusedWindowPkgName:Ljava/lang/String;

    .line 429
    sput-object v3, mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2472
    sput v1, mCurrentUser:I

    .line 2978
    sput-object v3, mCpuBooster:Landroid/os/DVFSHelper;

    .line 2980
    const/16 v0, 0x3e8

    sput v0, BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mServiceAquireLock:Ljava/lang/Object;

    .line 235
    iput-object v3, p0, mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    .line 248
    iput-boolean v2, p0, mBootCompleted:Z

    .line 249
    iput v1, p0, mPenState:I

    .line 252
    iput v2, p0, mDoubleTapOnHomeBehavior:I

    .line 253
    iput v2, p0, mDoubleTapHomeUser:I

    .line 254
    iput-boolean v2, p0, mAvailableDoublTapOnHomeCommand:Z

    .line 255
    iput-boolean v2, p0, mAvailableVoiceCommand:Z

    .line 259
    iput v2, p0, mTripleTapOnHomeBehavior:I

    .line 263
    iput-boolean v2, p0, mPowerDoubleBehavior:Z

    .line 271
    iput v2, p0, mSweepDirection:I

    .line 277
    iput v2, p0, mCapturedDisplay:I

    .line 282
    iput v2, p0, mCapturedOrigin:I

    .line 284
    iput-boolean v2, p0, mPerformEditAfterScreenCapture:Z

    .line 285
    iput-boolean v2, p0, mHasFlashAnnotateComponent:Z

    .line 289
    iput-boolean v2, p0, mIsSafetyAssuranceEnabled:Z

    .line 293
    iput-boolean v2, p0, mIsUseAccessControl:Z

    .line 294
    iput-boolean v2, p0, mIsEnabledAccessControl:Z

    .line 298
    iput-boolean v2, p0, mIsKidsModeEnabled:Z

    .line 302
    iput-boolean v2, p0, mIsEasyModeEnabled:Z

    .line 306
    iput-boolean v2, p0, mHasDaynotePackage:Z

    .line 310
    iput-boolean v2, p0, mIsDockHomeEnabled:Z

    .line 318
    iput-boolean v2, p0, mIsCheckDrivingMode:Z

    .line 319
    iput-boolean v2, p0, mBlockKeyForDrivingMode:Z

    .line 323
    iput-boolean v2, p0, mSideSyncSourcePresentationActived:Z

    .line 327
    iput-boolean v2, p0, mPenNotifyVibrationChecked:Z

    .line 331
    iput-boolean v2, p0, mCoverNoteEnabled:Z

    .line 335
    iput-boolean v2, p0, mNetworkSelectionLongPress:Z

    .line 340
    iput-boolean v2, p0, mTorchlightOn:Z

    .line 341
    iput-boolean v2, p0, mTorchlightEnabled:Z

    .line 345
    iput-object v3, p0, mRingtone:Landroid/media/Ringtone;

    .line 350
    iput-boolean v4, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 354
    iput v1, p0, mUvsOrientation:I

    .line 355
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, EnableLinuxCOMMONAPI4:Ljava/lang/String;

    .line 356
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    .line 357
    const-string v0, "LGT"

    iput-object v0, p0, UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    .line 375
    iput-boolean v2, p0, mIsRingingOrOffhook:Z

    .line 383
    iput-boolean v2, p0, mFolderSoundEnable:Z

    .line 384
    const-string v0, "UNKNOWN"

    iput-object v0, p0, mFolderOpenSound:Ljava/lang/String;

    .line 385
    const-string v0, "UNKNOWN"

    iput-object v0, p0, mFolderCloseSound:Ljava/lang/String;

    .line 390
    iput-boolean v2, p0, mHasFakeMenuKeyRecent:Z

    .line 391
    iput-boolean v2, p0, mHasFakeMenuKeyBack:Z

    .line 393
    iput v4, p0, QUICKACCESS_STATUS:I

    .line 394
    const/4 v0, 0x2

    iput v0, p0, QUICKACCESS_CAMERA:I

    .line 395
    const/4 v0, 0x4

    iput v0, p0, QUICKACCESS_SAMSUNGPAY:I

    .line 397
    const/4 v0, 0x7

    iput v0, p0, QUICKACCESS_SUBSCREEN_WAKEUP:I

    .line 400
    const/16 v0, 0x8

    iput v0, p0, QUICKACCESS_CHANGE_AOD_MODE:I

    .line 422
    iput-boolean v2, p0, mIsWakeupPrevention:Z

    .line 423
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mWakeupPreventionPackages:Ljava/util/HashSet;

    .line 426
    iput-boolean v2, p0, mLowPowerMode:Z

    .line 431
    iput-boolean v2, p0, bIsTorchOn:Z

    .line 434
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mSweepReceiver:Landroid/content/BroadcastReceiver;

    .line 489
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 515
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 533
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    .line 2166
    iput-boolean v2, p0, mMenuConsumed:Z

    .line 2206
    iput-boolean v2, p0, mRecentConsumed:Z

    .line 2267
    iput-boolean v2, p0, mBackKeyConsumed:Z

    .line 2278
    iput-boolean v2, p0, mUserKeyConsumed:Z

    .line 2288
    iput-object v3, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2306
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mScreenshotLock:Ljava/lang/Object;

    .line 2307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mServiceConnectionMap:Ljava/util/Map;

    .line 2308
    const/4 v0, 0x3

    iput v0, p0, MAX_SCREENSHOT_CONNECTION:I

    .line 2467
    iput-object v3, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2470
    iput-object v3, p0, mBlockedHwKeys:Ljava/util/Map;

    .line 2476
    iput-object v3, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 2477
    iput-object v3, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 2478
    iput-boolean v2, p0, mProKioskReEnableVolumeUpKey:Z

    .line 2954
    iput-object v3, p0, mRotationBooster:Landroid/os/DVFSHelper;

    .line 2979
    iput-object v3, p0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3109
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    .line 3140
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 3148
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mTurnOffTorchlight:Ljava/lang/Runnable;

    .line 3155
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mRotationForQuickAccess:Ljava/lang/Runnable;

    .line 3636
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$16;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mUvsReceiver:Landroid/content/BroadcastReceiver;

    .line 3709
    iput-object v3, p0, mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .line 4075
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsLiveDemo:Z

    .line 4122
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    .line 4150
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    .line 4299
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 4339
    iput-object v3, p0, mContextLoggingThread:Ljava/lang/Thread;

    .line 4403
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

    .line 4477
    iput v2, p0, mAodStartState:I

    .line 4521
    return-void
.end method

.method private TorchModeFlashSet(I)V
    .registers 10
    .param p1, "torchTime"    # I

    .prologue
    const/4 v7, 0x0

    .line 3162
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_1d

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 3164
    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3166
    .local v2, "out":Ljava/io/FileWriter;
    if-lez p1, :cond_4f

    .line 3167
    const/4 v4, 0x1

    iput-boolean v4, p0, mTorchlightOn:Z

    .line 3168
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3169
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3170
    const-string v1, "1"

    .line 3180
    :goto_39
    :try_start_39
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_5b
    .catchall {:try_start_39 .. :try_end_40} :catchall_6c

    .line 3181
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_7a
    .catchall {:try_start_41 .. :try_end_48} :catchall_77

    .line 3186
    if-eqz v3, :cond_4d

    .line 3188
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_73

    :cond_4d
    :goto_4d
    move-object v2, v3

    .line 3193
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_4e
    :goto_4e
    return-void

    .line 3172
    :cond_4f
    iput-boolean v7, p0, mTorchlightOn:Z

    .line 3173
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3174
    const-string v1, "0"

    goto :goto_39

    .line 3182
    :catch_5b
    move-exception v0

    .line 3183
    .local v0, "e":Ljava/io/IOException;
    :goto_5c
    :try_start_5c
    const-string v4, "SamsungWindowManager"

    const-string/jumbo v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_6c

    .line 3186
    if-eqz v2, :cond_4e

    .line 3188
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_4e

    .line 3189
    :catch_6a
    move-exception v4

    goto :goto_4e

    .line 3186
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6c
    move-exception v4

    :goto_6d
    if-eqz v2, :cond_72

    .line 3188
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_75

    .line 3190
    :cond_72
    :goto_72
    throw v4

    .line 3189
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_73
    move-exception v4

    goto :goto_4d

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_75
    move-exception v5

    goto :goto_72

    .line 3186
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_77
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_6d

    .line 3182
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_7a
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_5c
.end method

.method static synthetic access$002(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 204
    iput-object p1, p0, mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 204
    iget-boolean v0, p0, mIsRingingOrOffhook:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 204
    sget-object v0, mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, bIsTorchOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1}, updateWacomOffset(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1}, TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 204
    iget-object v0, p0, EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 204
    iget v0, p0, mUvsOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1}, setUvsOrieatation(I)V

    return-void
.end method

.method private checkLaunchSetting()I
    .registers 5

    .prologue
    .line 4321
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4322
    .local v0, "state":I
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    return v0
.end method

.method private getCameraId()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 4286
    sget-object v8, mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 4287
    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v6, :cond_38

    aget-object v4, v0, v3

    .line 4288
    .local v4, "id":Ljava/lang/String;
    sget-object v8, mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 4289
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 4290
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 4291
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_35

    if-eqz v7, :cond_35

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_35

    .line 4296
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :goto_34
    return-object v4

    .line 4287
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4296
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_38
    const/4 v4, 0x0

    goto :goto_34
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 3267
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 3268
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3271
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .prologue
    .line 3853
    const-string/jumbo v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3855
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_14

    .line 3856
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    :cond_14
    return-object v0
.end method

.method private handleTorchKey()V
    .registers 5

    .prologue
    .line 4249
    sget-object v1, mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v1, :cond_7

    .line 4250
    invoke-direct {p0}, initCameraManager()V

    .line 4254
    :cond_7
    :try_start_7
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Torch light bIsTorchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, bIsTorchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    sget-object v1, mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 4256
    sget-object v2, mCameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object v3, mCameraId:Ljava/lang/String;

    iget-boolean v1, p0, bIsTorchOn:Z

    if-nez v1, :cond_32

    const/4 v1, 0x1

    :goto_2e
    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_31} :catch_34

    .line 4262
    :cond_31
    :goto_31
    return-void

    .line 4256
    :cond_32
    const/4 v1, 0x0

    goto :goto_2e

    .line 4258
    :catch_34
    move-exception v0

    .line 4259
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t initialize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private handleUserKey(Z)Z
    .registers 15
    .param p1, "longPress"    # Z

    .prologue
    .line 4178
    const/4 v9, 0x0

    .line 4179
    .local v9, "ret":Z
    const/4 v7, 0x0

    .line 4180
    .local v7, "package_index":I
    const/4 v6, 0x0

    .line 4181
    .local v6, "launch_app":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4182
    .local v8, "package_name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4184
    .local v1, "activity_name":Ljava/lang/String;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .line 4185
    .local v3, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportBatteryConversingMode()Z

    move-result v5

    .line 4187
    .local v5, "isSupportBCM":Z
    if-eqz p1, :cond_f3

    .line 4188
    if-eqz v5, :cond_66

    .line 4189
    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v4

    .line 4190
    .local v4, "emMode":I
    sget-boolean v10, SAFE_DEBUG:Z

    if-eqz v10, :cond_34

    const-string v10, "SamsungWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "now mode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    :cond_34
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4193
    .local v0, "BCM_intent":Landroid/content/Intent;
    const-string/jumbo v10, "flag"

    const/16 v11, 0x800

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4194
    const/high16 v10, 0x10000000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4196
    const/4 v10, -0x1

    if-ne v4, v10, :cond_5b

    .line 4197
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4201
    :cond_52
    :goto_52
    iget-object v10, p0, mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4202
    const/4 v10, 0x1

    .line 4244
    .end local v0    # "BCM_intent":Landroid/content/Intent;
    .end local v4    # "emMode":I
    :goto_5a
    return v10

    .line 4198
    .restart local v0    # "BCM_intent":Landroid/content/Intent;
    .restart local v4    # "emMode":I
    :cond_5b
    const/4 v10, 0x2

    if-ne v4, v10, :cond_52

    .line 4199
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_52

    .line 4204
    .end local v0    # "BCM_intent":Landroid/content/Intent;
    .end local v4    # "emMode":I
    :cond_66
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "long_press_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4215
    :goto_73
    if-eqz v6, :cond_8b

    .line 4216
    const/16 v10, 0x2f

    const/4 v11, 0x0

    :try_start_78
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 4217
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 4218
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_78 .. :try_end_8a} :catch_11a

    move-result-object v1

    .line 4226
    :cond_8b
    :goto_8b
    sget-boolean v10, SAFE_DEBUG:Z

    if-eqz v10, :cond_bb

    const-string v10, "SamsungWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", cls="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " longPress = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    :cond_bb
    const-string/jumbo v10, "torch"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12b

    const-string/jumbo v10, "torch"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12b

    .line 4229
    const-string/jumbo v10, "service.camera.running"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 4230
    iget-object v10, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    if-eqz v10, :cond_126

    .line 4231
    invoke-direct {p0}, checkLaunchSetting()I

    move-result v10

    if-eqz v10, :cond_f0

    .line 4232
    invoke-direct {p0}, handleTorchKey()V

    .line 4233
    const/4 v9, 0x1

    :cond_f0
    :goto_f0
    move v10, v9

    .line 4244
    goto/16 :goto_5a

    .line 4207
    :cond_f3
    if-eqz v5, :cond_10b

    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10b

    .line 4208
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "short_press_app_battery_conserve"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_73

    .line 4210
    :cond_10b
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "short_press_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_73

    .line 4220
    :catch_11a
    move-exception v2

    .line 4221
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "SamsungWindowManager"

    const-string v11, "Invalid user key app defined"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    const/4 v8, 0x0

    .line 4223
    const/4 v1, 0x0

    goto/16 :goto_8b

    .line 4236
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_126
    invoke-direct {p0}, handleTorchKey()V

    .line 4237
    const/4 v9, 0x1

    goto :goto_f0

    .line 4240
    :cond_12b
    if-nez v5, :cond_f0

    .line 4241
    iget-object v10, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    goto :goto_f0
.end method

.method private initCameraManager()V
    .registers 6

    .prologue
    .line 4266
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    sput-object v2, mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 4267
    sget-object v2, mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v2, :cond_34

    .line 4268
    const/4 v0, 0x0

    .line 4270
    .local v0, "cameraId":Ljava/lang/String;
    :try_start_11
    invoke-direct {p0}, getCameraId()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_25
    .catchall {:try_start_11 .. :try_end_14} :catchall_30

    move-result-object v0

    .line 4274
    sput-object v0, mCameraId:Ljava/lang/String;

    .line 4277
    :goto_17
    sget-object v2, mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 4278
    sget-object v2, mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 4283
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_24
    :goto_24
    return-void

    .line 4271
    .restart local v0    # "cameraId":Ljava/lang/String;
    :catch_25
    move-exception v1

    .line 4272
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_26
    const-string v2, "SamsungWindowManager"

    const-string v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_30

    .line 4274
    sput-object v0, mCameraId:Ljava/lang/String;

    goto :goto_17

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_30
    move-exception v2

    sput-object v0, mCameraId:Ljava/lang/String;

    throw v2

    .line 4281
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_34
    const-string v2, "SamsungWindowManager"

    const-string v3, "camera service is not availabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private injectionKeyEvent(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 2290
    iget-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2291
    iget-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2293
    :cond_11
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2302
    iget-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2303
    return-void
.end method

.method private isBackKeyConsumed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2269
    iget-boolean v1, p0, mBackKeyConsumed:Z

    if-eqz v1, :cond_8

    .line 2270
    iput-boolean v0, p0, mBackKeyConsumed:Z

    .line 2271
    const/4 v0, 0x1

    .line 2273
    :cond_8
    return v0
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3397
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3398
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3401
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3403
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3404
    .local v3, "preferredActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3405
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 3407
    const-string v7, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_4f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4f

    move v4, v5

    :goto_3b
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    if-eqz v3, :cond_51

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_51

    :goto_4e
    return v5

    :cond_4f
    move v4, v6

    .line 3407
    goto :goto_3b

    :cond_51
    move v5, v6

    .line 3408
    goto :goto_4e
.end method

.method public static isEncryptionMode()Z
    .registers 3

    .prologue
    .line 4042
    const/4 v0, 0x0

    .line 4043
    .local v0, "ret":Z
    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string/jumbo v1, "encrypted"

    const-string/jumbo v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4045
    const/4 v0, 0x1

    .line 4047
    :cond_22
    return v0
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .registers 8
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 3247
    const/4 v0, 0x1

    .line 3250
    .local v0, "allowed":Z
    :try_start_1
    const-string/jumbo v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v2

    .line 3252
    .local v2, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v2, :cond_13

    .line 3253
    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14

    move-result v0

    .line 3259
    .end local v2    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_13
    :goto_13
    return v0

    .line 3255
    :catch_14
    move-exception v1

    .line 3256
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private isKioskLocked()Z
    .registers 9

    .prologue
    .line 4052
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 4053
    .local v3, "mPm":Landroid/os/PersonaManager;
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 4054
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 4055
    .local v5, "personaids":[I
    if-eqz v5, :cond_56

    .line 4056
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1c
    if-ge v1, v2, :cond_56

    aget v4, v0, v1

    .line 4057
    .local v4, "personaid":I
    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_4a

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_4a

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 4061
    :cond_4a
    const-string v6, "SamsungWindowManager"

    const-string v7, "Kiosk exists and it is locked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    const/4 v6, 0x1

    .line 4067
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "personaid":I
    .end local v5    # "personaids":[I
    :goto_52
    return v6

    .line 4056
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "personaid":I
    .restart local v5    # "personaids":[I
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 4067
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "personaid":I
    .end local v5    # "personaids":[I
    :cond_56
    const/4 v6, 0x0

    goto :goto_52
.end method

.method private isKnoxCreatingOnTop()Z
    .registers 8

    .prologue
    .line 3304
    const/4 v2, 0x0

    .line 3305
    .local v2, "isKnoxCreatingOnTop":Z
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 3306
    .local v3, "mPm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v1

    .line 3308
    .local v1, "ids":[I
    if-eqz v1, :cond_54

    array-length v4, v1

    if-lez v4, :cond_54

    .line 3309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v4, v1

    if-ge v0, v4, :cond_54

    .line 3310
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_3f

    .line 3311
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v0

    invoke-virtual {v3, v6}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_3f
    aget v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-direct {p0}, isKnoxSetupWizardTopActivity()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 3314
    const/4 v2, 0x1

    .line 3320
    .end local v0    # "i":I
    :cond_54
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_71

    .line 3321
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxCreatingOnTop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_71
    return v2

    .line 3309
    .restart local v0    # "i":I
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private isKnoxKeyguardShowing()Z
    .registers 4

    .prologue
    .line 3294
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 3295
    .local v0, "mPm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3296
    const-string v1, "SamsungWindowManager"

    const-string v2, "KnoxKeyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    const/4 v1, 0x1

    .line 3299
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private isKnoxSetupWizardTopActivity()Z
    .registers 6

    .prologue
    .line 3327
    const/4 v1, 0x0

    .line 3328
    .local v1, "isKnoxSetupWizardTopActivity":Z
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    const-string v3, "com.sec.knox.knoxsetupwizardclient.SetupWizardKnoxNameSettingActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    .local v0, "KnoxSetupWizard":Landroid/content/ComponentName;
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3332
    const/4 v1, 0x1

    .line 3335
    :cond_17
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_53

    .line 3336
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKnoxSetupWizardTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :cond_53
    return v1
.end method

.method private isScreenCaptureEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2482
    const/4 v0, 0x1

    .line 2484
    .local v0, "isScreenCaptureEnabled":Z
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v3

    if-nez v3, :cond_21

    .line 2485
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    const/4 v0, 0x0

    .line 2498
    :goto_20
    return v2

    .line 2491
    :cond_21
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 2492
    .local v1, "pService":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->isKnoxMultiWindowExist()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2493
    const-string v3, "SamsungWindowManager"

    const-string v4, "KnoxMultiwindowExists. isScreenCaptureEnabled() returns false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x1040b7e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_20

    :cond_50
    move v2, v0

    .line 2498
    goto :goto_20
.end method

.method private isUserKeyConsumed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2280
    iget-boolean v1, p0, mUserKeyConsumed:Z

    if-eqz v1, :cond_8

    .line 2281
    iput-boolean v0, p0, mUserKeyConsumed:Z

    .line 2282
    const/4 v0, 0x1

    .line 2284
    :cond_8
    return v0
.end method

.method private isWatchRunning()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4136
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4137
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4138
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_46

    .line 4139
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4140
    .local v2, "taskName":Ljava/lang/String;
    const-string v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isWatchRunning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    const-string v5, "com.sec.android.app.premiumwatch"

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 4146
    .end local v2    # "taskName":Ljava/lang/String;
    :goto_45
    return v3

    :cond_46
    move v3, v4

    goto :goto_45
.end method

.method private playSound(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2868
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2869
    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2871
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1d

    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2873
    :try_start_15
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 2874
    const/4 v4, 0x0

    iput-object v4, p0, mRingtone:Landroid/media/Ringtone;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_3a

    .line 2880
    :cond_1d
    :goto_1d
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, mRingtone:Landroid/media/Ringtone;

    .line 2881
    if-eqz v0, :cond_5c

    .line 2882
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2884
    .local v2, "masterStreamVolume":I
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_54

    .line 2885
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2886
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 2895
    .end local v2    # "masterStreamVolume":I
    :goto_39
    return-void

    .line 2875
    :catch_3a
    move-exception v1

    .line 2876
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2889
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_54
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 2893
    .end local v2    # "masterStreamVolume":I
    :cond_5c
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private playSoundEffect()V
    .registers 4

    .prologue
    .line 2552
    invoke-virtual {p0}, getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2553
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_21

    .line 2554
    iget-object v1, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2555
    const/16 v1, 0x66

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 2563
    :goto_17
    return-void

    .line 2558
    :cond_18
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2561
    :cond_21
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private setUvsOrieatation(I)V
    .registers 3
    .param p1, "request"    # I

    .prologue
    .line 3624
    iget v0, p0, mUvsOrientation:I

    if-eq v0, p1, :cond_13

    .line 3625
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    const/16 v0, 0x9

    if-ne p1, v0, :cond_14

    .line 3629
    :cond_11
    iput p1, p0, mUvsOrientation:I

    .line 3634
    :cond_13
    :goto_13
    return-void

    .line 3631
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, mUvsOrientation:I

    goto :goto_13
.end method

.method private startCustomApp()Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3356
    :try_start_2
    iget-object v9, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-nez v9, :cond_f

    .line 3357
    const-string v8, "SamsungWindowManager"

    const-string/jumbo v9, "mKnoxCustomSystemManager null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    :cond_e
    :goto_e
    return v7

    .line 3361
    :cond_f
    iget-object v9, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressMode()I

    move-result v3

    .line 3362
    .local v3, "mode":I
    if-eqz v3, :cond_e

    .line 3367
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3368
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3369
    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3371
    .local v6, "taskName":Ljava/lang/String;
    if-ne v3, v8, :cond_6f

    invoke-direct {p0, v6}, isDefaultLauncher(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 3373
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Foreground taskName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_53} :catch_54

    goto :goto_e

    .line 3389
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "mode":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "taskName":Ljava/lang/String;
    :catch_54
    move-exception v2

    .line 3390
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startCustomApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3376
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "mode":I
    .restart local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "taskName":Ljava/lang/String;
    :cond_6f
    :try_start_6f
    iget-object v9, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    .line 3378
    .local v1, "appToStart":Ljava/lang/String;
    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_85

    .line 3379
    :cond_7d
    const-string v8, "SamsungWindowManager"

    const-string v9, "appToStart null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3382
    :cond_85
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "starting custom app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 3385
    .local v4, "regularIntent":Landroid/content/Intent;
    if-eqz v4, :cond_af

    .line 3386
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_af} :catch_54

    :cond_af
    move v7, v8

    .line 3393
    goto/16 :goto_e
.end method

.method private startSGA(Ljava/lang/String;)V
    .registers 7
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    .line 3949
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3950
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 3951
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3953
    if-eqz v1, :cond_22

    .line 3955
    :try_start_d
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_14} :catch_15

    .line 3962
    :cond_14
    :goto_14
    return-void

    .line 3956
    :catch_15
    move-exception v0

    .line 3957
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3960
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_22
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private stopScreenManager()Z
    .registers 8

    .prologue
    .line 4389
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4390
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 4391
    .local v4, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v5, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4392
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.dualscreencontrolpanel"

    const-string v6, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4394
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4395
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4396
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 4397
    const/4 v5, 0x1

    .line 4400
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_46
    return v5

    :cond_47
    const/4 v5, 0x0

    goto :goto_46
.end method

.method private toggleScreenManager()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4377
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 4386
    :cond_10
    :goto_10
    return-void

    .line 4380
    :cond_11
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    .line 4381
    .local v1, "taskInfoMain":Lcom/samsung/android/dualscreen/TaskInfo;
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v0

    .line 4382
    .local v0, "TaskInfoSub":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v2

    if-nez v2, :cond_10

    .line 4383
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4384
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method private updateWacomOffset(I)V
    .registers 7
    .param p1, "rotation"    # I

    .prologue
    .line 2934
    const/4 v1, 0x0

    .line 2936
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2b
    .catchall {:try_start_1 .. :try_end_d} :catchall_3a

    .line 2937
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_f
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_49
    .catchall {:try_start_f .. :try_end_12} :catchall_46

    .line 2944
    if-eqz v2, :cond_17

    .line 2945
    :try_start_14
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    :cond_17
    move-object v1, v2

    .line 2951
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_18
    :goto_18
    return-void

    .line 2947
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_19
    move-exception v0

    .line 2948
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 2950
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_18

    .line 2938
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v3

    .line 2944
    :goto_20
    if-eqz v1, :cond_18

    .line 2945
    :try_start_22
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 2947
    :catch_26
    move-exception v0

    .line 2948
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2940
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 2941
    .local v0, "e":Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    .line 2944
    if-eqz v1, :cond_18

    .line 2945
    :try_start_31
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_18

    .line 2947
    :catch_35
    move-exception v0

    .line 2948
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2943
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v3

    .line 2944
    :goto_3b
    if-eqz v1, :cond_40

    .line 2945
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 2949
    :cond_40
    :goto_40
    throw v3

    .line 2947
    :catch_41
    move-exception v0

    .line 2948
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 2943
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_46
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3b

    .line 2940
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_49
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2c

    .line 2938
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_4c
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_20
.end method

.method private updateWakeupPreventionPackages(Ljava/lang/String;)V
    .registers 8
    .param p1, "wakeupPreventionPackages"    # Ljava/lang/String;

    .prologue
    .line 4555
    iget-object v3, p0, mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 4556
    if-eqz p1, :cond_3a

    .line 4557
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWakeupPreventionPackages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4560
    .local v2, "wakeupPreventionPackagesList":[Ljava/lang/String;
    if-eqz v2, :cond_3a

    array-length v3, v2

    if-lez v3, :cond_3a

    .line 4561
    array-length v0, v2

    .line 4562
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_3a

    .line 4563
    iget-object v3, p0, mWakeupPreventionPackages:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4562
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 4567
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "wakeupPreventionPackagesList":[Ljava/lang/String;
    :cond_3a
    return-void
.end method


# virtual methods
.method public broadcastHardKeyIntent(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3430
    iget-object v3, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_3a

    iget-object v3, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getHardKeyIntentState()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3432
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3b

    const/4 v0, 0x1

    .line 3433
    .local v0, "down":Z
    :goto_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3434
    .local v2, "keyCode":I
    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3a

    .line 3436
    sparse-switch v2, :sswitch_data_50

    .line 3455
    .end local v0    # "down":Z
    .end local v2    # "keyCode":I
    :cond_3a
    :goto_3a
    return-void

    .line 3432
    :cond_3b
    const/4 v0, 0x0

    goto :goto_1b

    .line 3445
    .restart local v0    # "down":Z
    .restart local v2    # "keyCode":I
    :sswitch_3d
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.action.HARD_KEY_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3446
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.intent.extra.KEY_CODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3447
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3a

    .line 3436
    nop

    :sswitch_data_50
    .sparse-switch
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_3d
        0x18 -> :sswitch_3d
        0x19 -> :sswitch_3d
        0x1a -> :sswitch_3d
        0x52 -> :sswitch_3d
        0xbb -> :sswitch_3d
    .end sparse-switch
.end method

.method public callAccessibilityScreenCurtain()V
    .registers 5

    .prologue
    .line 2060
    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2061
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    const-string v2, "ADPD"

    const-string v3, "PowerKey DoubleClick"

    invoke-virtual {p0, v2, v3}, insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2065
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_1e
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22

    .line 2072
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :goto_21
    return-void

    .line 2066
    .restart local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :catch_22
    move-exception v0

    .line 2067
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21

    .line 2070
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_27
    const-string v2, "SamsungWindowManager"

    const-string/jumbo v3, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public callAccessibilityTalkbackMode()V
    .registers 5

    .prologue
    .line 2050
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2053
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_11
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 2057
    :goto_14
    return-void

    .line 2054
    :catch_15
    move-exception v0

    .line 2055
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    .line 3981
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "SamsungWindowManager"

    const-string/jumbo v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3983
    :cond_c
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3984
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3985
    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3987
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_25} :catch_26

    .line 3993
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_25
    return-void

    .line 3988
    :catch_26
    move-exception v0

    .line 3990
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_32

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    :cond_32
    invoke-virtual {p0}, downloadForSamsungApps()V

    goto :goto_25
.end method

.method public downloadForSamsungApps()V
    .registers 6

    .prologue
    .line 3965
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    :cond_c
    const-string/jumbo v2, "http://apps.samsung.com/mw/apk_en.as"

    .line 3968
    .local v2, "url":Ljava/lang/String;
    :try_start_f
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3970
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3971
    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3973
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_2c} :catch_2d

    .line 3978
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2c
    return-void

    .line 3974
    :catch_2d
    move-exception v0

    .line 3976
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3205
    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3206
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3207
    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3208
    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3210
    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3211
    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3212
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3213
    const-string v0, " mAvailableDoublTapOnHomeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mAvailableDoublTapOnHomeCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3214
    const-string/jumbo v0, "mDoubleTapHomeUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDoubleTapHomeUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3215
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mComponentNameOfDoubleTapOnHomeCommandIntent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3217
    const-string v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3218
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasFakeMenuKeyRecent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHasFakeMenuKeyRecent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3219
    const-string v0, " mHasFakeMenuKeyBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHasFakeMenuKeyBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3224
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsWakeupPrevention="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsWakeupPrevention:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3225
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeupPreventionPackages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3227
    iget-object v0, p0, mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/sec/CombinationKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3228
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    .line 3229
    return-void
.end method

.method public endCallByGamekey()Z
    .registers 7

    .prologue
    .line 3889
    const/4 v1, 0x0

    .line 3891
    .local v1, "hungUp":Z
    invoke-virtual {p0}, getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 3892
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3893
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    .line 3897
    :cond_11
    invoke-static {}, getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v3

    .line 3899
    .local v3, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v3, :cond_22

    :try_start_17
    invoke-virtual {p0}, isVoIPRinging()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3900
    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_23

    move-result v4

    or-int/2addr v1, v4

    .line 3905
    :cond_22
    :goto_22
    return v1

    .line 3902
    :catch_23
    move-exception v0

    .line 3903
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_22

    const-string v4, "SamsungWindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public getAodStartState()I
    .registers 2

    .prologue
    .line 4480
    iget v0, p0, mAodStartState:I

    return v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 4

    .prologue
    .line 3038
    iget-object v1, p0, mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3039
    :try_start_3
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    .line 3040
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    .line 3043
    :cond_13
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    .line 3044
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .registers 2

    .prologue
    .line 3416
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 3028
    iget-object v1, p0, mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3029
    :try_start_3
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_14

    .line 3030
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 3033
    :cond_14
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 3034
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .registers 3

    .prologue
    .line 3024
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 1919
    iget-object v0, p0, mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/sec/CombinationKeyManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUvsOrientation()I
    .registers 2

    .prologue
    .line 3620
    iget v0, p0, mUvsOrientation:I

    return v0
.end method

.method public goingToSleep(I)V
    .registers 3
    .param p1, "why"    # I

    .prologue
    .line 745
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_11

    .line 747
    iget-object v0, p0, mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 750
    :cond_11
    return-void
.end method

.method public handleLongPressOnHome()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 2103
    invoke-virtual {p0}, isScreenOffOnLongPressHome()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2104
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in KNOX"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_12
    :goto_12
    return v2

    .line 2107
    :cond_13
    iget-object v3, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_2b

    iget-object v3, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2108
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in ProKiosk Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2115
    :cond_2b
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2116
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2123
    :cond_39
    invoke-virtual {p0}, getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 2124
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2125
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in Ringing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2128
    :cond_51
    invoke-virtual {p0}, isVoIPRinging()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2129
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in VoIPRinging"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2135
    :cond_63
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 2136
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 2137
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in emergency & upsm mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2143
    :cond_79
    invoke-virtual {p0}, isKidsModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 2144
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in kidsmode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2150
    :cond_87
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, isEnableAccessControl(I)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 2151
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress blocked by Interaction control"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 2156
    :cond_97
    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_a8

    .line 2157
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in UserSetup not complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 2161
    :cond_a8
    const/4 v2, 0x0

    goto/16 :goto_12
.end method

.method public handleLongPressOnMenu()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2169
    iget-boolean v2, p0, mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_39

    .line 2170
    iget-boolean v2, p0, mHasPermanentMenuKey:Z

    if-eqz v2, :cond_39

    .line 2171
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2173
    :try_start_1a
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_25

    const-string v2, "SamsungWindowManager"

    const-string v3, "Menu longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    :cond_25
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2175
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 2176
    const/4 v2, 0x1

    iput-boolean v2, p0, mMenuConsumed:Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2f} :catch_30

    .line 2194
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_2f
    :goto_2f
    return-void

    .line 2177
    :catch_30
    move-exception v1

    .line 2178
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 2187
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_39
    iget-object v2, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v2, :cond_45

    iget-object v2, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2192
    :cond_45
    iput-boolean v4, p0, mMenuConsumed:Z

    .line 2193
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_2f
.end method

.method public handleLongPressOnRecent()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2218
    invoke-virtual {p0}, isRecentAppStart()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2219
    iput-boolean v3, p0, mRecentConsumed:Z

    .line 2255
    :cond_9
    :goto_9
    return-void

    .line 2225
    :cond_a
    iget-boolean v2, p0, mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_3e

    .line 2226
    iget-boolean v2, p0, mHasPermanentMenuKey:Z

    if-nez v2, :cond_3e

    .line 2227
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2229
    :try_start_22
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_2d

    const-string v2, "SamsungWindowManager"

    const-string v3, "Recent longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    :cond_2d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2231
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_34} :catch_35

    goto :goto_9

    .line 2232
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :catch_35
    move-exception v1

    .line 2233
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2241
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3e
    iput-boolean v3, p0, mRecentConsumed:Z

    .line 2244
    iget-object v2, p0, mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    if-eqz v2, :cond_4c

    iget-object v2, p0, mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->handleLongPressOnRecent()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2251
    :cond_4c
    iget-boolean v2, p0, mHasFakeMenuKeyRecent:Z

    if-eqz v2, :cond_9

    .line 2253
    const/16 v2, 0x52

    invoke-direct {p0, v2}, injectionKeyEvent(I)V

    goto :goto_9
.end method

.method public handleLongPressOnStar()V
    .registers 6

    .prologue
    .line 4015
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4017
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4018
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4019
    const-string v2, "com.sec.android.applicationshortcut"

    const-string v3, "com.sec.android.applicationshortcut.MainviewActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4020
    if-eqz v1, :cond_3d

    .line 4021
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch applicationshortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    :try_start_36
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_36 .. :try_end_3d} :catch_3e

    .line 4028
    :cond_3d
    :goto_3d
    return-void

    .line 4024
    :catch_3e
    move-exception v0

    .line 4025
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch applicationshortcut."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method

.method public handleQuickAccess(IFF)V
    .registers 12
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 4083
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4084
    .local v0, "intent":Landroid/content/Intent;
    new-array v1, v7, [F

    const/4 v3, 0x0

    aput p2, v1, v3

    aput p3, v1, v5

    .line 4085
    .local v1, "location":[F
    const/4 v2, 0x0

    .line 4087
    .local v2, "premission":Ljava/lang/String;
    if-ne p1, v6, :cond_52

    .line 4088
    const-string v3, "com.samsung.android.spay.quickpay"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4089
    new-instance v2, Ljava/lang/String;

    .end local v2    # "premission":Ljava/lang/String;
    const-string v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4115
    .restart local v2    # "premission":Ljava/lang/String;
    :goto_1e
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4117
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_4a

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendbroadcast intent :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " premission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_4a
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4119
    return-void

    .line 4091
    :cond_52
    const/4 v3, 0x7

    if-ne p1, v3, :cond_91

    .line 4092
    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 4093
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_69

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "main screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    :cond_69
    iget-object v3, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->setMultipleScreenStateOverride(II)V

    .line 4099
    :goto_6e
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mRotationForQuickAccess:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4100
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mRotationForQuickAccess:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e

    .line 4096
    :cond_7f
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_8b

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "sub screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    :cond_8b
    iget-object v3, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v7, v6}, Landroid/os/PowerManager;->setMultipleScreenStateOverride(II)V

    goto :goto_6e

    .line 4103
    :cond_91
    const/16 v3, 0x8

    if-ne p1, v3, :cond_a8

    .line 4104
    const-string v3, "com.samsung.android.app.aodservice.CHANGE_AOD_MODE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4105
    const-string/jumbo v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4106
    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_1e

    .line 4110
    :cond_a8
    const-string v3, "com.android.settings.LaunchGlanceView"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4112
    const-string/jumbo v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4113
    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_1e
.end method

.method public handleWakingUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 754
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_12

    .line 756
    iget-object v0, p0, mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 760
    :cond_12
    iget-boolean v0, p0, mTorchlightOn:Z

    if-eqz v0, :cond_19

    .line 761
    invoke-virtual {p0, v1, v1, v1}, processTorchlight(IZZ)V

    .line 764
    :cond_19
    return-void
.end method

.method public hasCustomDoubleTapHomeCommand()Z
    .registers 2

    .prologue
    .line 1955
    iget-object v0, p0, mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hideRecentApps(Z)Z
    .registers 3
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 3239
    invoke-virtual {p0}, isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3240
    const/4 v0, 0x1

    .line 3242
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public ignorePowerKeyInEncrypting()Z
    .registers 7

    .prologue
    .line 3675
    const-string/jumbo v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3676
    .local v2, "state":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3f

    .line 3677
    const/4 v1, 0x0

    .line 3679
    .local v1, "progress":I
    :try_start_e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_21

    move-result v1

    .line 3683
    :goto_12
    if-lez v1, :cond_3f

    const/16 v3, 0x64

    if-ge v1, v3, :cond_3f

    .line 3684
    const-string v3, "SamsungWindowManager"

    const-string v4, "Ignore Power Off Key!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    const/4 v3, 0x1

    .line 3688
    .end local v1    # "progress":I
    :goto_20
    return v3

    .line 3680
    .restart local v1    # "progress":I
    :catch_21
    move-exception v0

    .line 3681
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 3688
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "progress":I
    :cond_3f
    const/4 v3, 0x0

    goto :goto_20
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 555
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 556
    iput-object p2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 557
    iput-object p3, p0, mWindowManager:Landroid/view/IWindowManager;

    .line 558
    iput-object p4, p0, mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 559
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 560
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, mVibrator:Landroid/os/Vibrator;

    .line 561
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 563
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v1, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/policy/sec/CombinationKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    .line 565
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 567
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 571
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 572
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    const-string v0, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v0, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v0, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.permission.PALM_MOTION"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 579
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 580
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 584
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 585
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 591
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 595
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v0, "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 596
    .local v6, "kioskFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 600
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 601
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    iput-object v0, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    .line 605
    iget-object v0, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    iget-object v0, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    iget-object v0, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 608
    iget-object v0, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isQuickLaunchMode"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mVoiceCommandIntent:Landroid/content/Intent;

    .line 611
    iget-object v0, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    iget-object v0, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    iget-object v0, p0, mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, mAvailableVoiceCommand:Z

    .line 615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mPenInsertedIntent:Landroid/content/Intent;

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mAlwaysIntent:Landroid/content/Intent;

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mFlipFolderOpenedIntent:Landroid/content/Intent;

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mFingerPrintIntent:Landroid/content/Intent;

    .line 620
    iget-object v0, p0, mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.secretmode.service"

    const-string v4, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mBlackMemoIntent:Landroid/content/Intent;

    .line 623
    iget-object v0, p0, mBlackMemoIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.snote"

    const-string v4, "com.samsung.android.snote.control.ui.quickmemo.service.InstantMemo_Service"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 625
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mAlwaysComponet:Landroid/content/ComponentName;

    .line 627
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotate"

    const-string v2, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mFlashAnnotateComponent:Landroid/content/ComponentName;

    .line 629
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    .line 632
    iget-object v0, p0, mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, mHasFlashAnnotateComponent:Z

    .line 635
    const-string v0, "com.sec.android.daynote"

    invoke-virtual {p0, v0}, isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mHasDaynotePackage:Z

    .line 639
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 644
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    iget-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_1a1

    .line 646
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 651
    :cond_1a1
    const-string v0, "LGT"

    iget-object v1, p0, EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 652
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 653
    .local v7, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.SET_ORIENTATION"

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 659
    .end local v7    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_1be
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 667
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1d2

    .line 668
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 673
    :cond_1d2
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 674
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.android.intent.action.PAUSE_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v0, "com.sec.android.intent.action.STOP_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;)V

    move-object v5, v0

    :cond_1fa
    iput-object v5, p0, mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .line 681
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 684
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    .line 685
    iget-object v0, p0, mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    .line 687
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    .line 688
    iget-object v0, p0, mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;->observe()V

    .line 691
    invoke-direct {p0}, initCameraManager()V

    .line 693
    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 4342
    iget-object v0, p0, mContextLoggingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4343
    iget-object v0, p0, mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4346
    :cond_11
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, mContextLoggingThread:Ljava/lang/Thread;

    .line 4371
    iget-object v0, p0, mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4372
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .registers 34
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v19

    .line 1127
    .local v19, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .line 1128
    .local v18, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    .line 1129
    .local v23, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 1130
    .local v13, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_62

    const/4 v10, 0x1

    .line 1131
    .local v10, "down":Z
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 1135
    .local v6, "canceled":Z
    const/16 v28, 0x19

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_31

    const/16 v28, 0x18

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_64

    :cond_31
    if-eqz v23, :cond_64

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v28

    if-eqz v28, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v28

    if-eqz v28, :cond_64

    .line 1141
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_5f

    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "knox: volume key is blocked"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_5f
    const/16 v28, 0x1

    .line 1694
    :goto_61
    return v28

    .line 1130
    .end local v6    # "canceled":Z
    .end local v10    # "down":Z
    :cond_62
    const/4 v10, 0x0

    goto :goto_1d

    .line 1150
    .restart local v6    # "canceled":Z
    .restart local v10    # "down":Z
    :cond_64
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_f4

    move-object/from16 v0, p0

    iget-object v0, v0, mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f4

    move-object/from16 v0, p0

    iget-object v0, v0, mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_f4

    .line 1152
    const/4 v15, 0x1

    .line 1153
    .local v15, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_e7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    if-nez v28, :cond_e7

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_da

    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v28

    if-eqz v28, :cond_da

    .line 1156
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v15

    .line 1157
    const/16 v28, 0x18

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_ca

    move-object/from16 v0, p0

    iget-boolean v0, v0, mProKioskReEnableVolumeUpKey:Z

    move/from16 v28, v0

    if-eqz v28, :cond_ca

    .line 1158
    const/4 v15, 0x1

    .line 1159
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mProKioskReEnableVolumeUpKey:Z

    .line 1170
    :cond_ca
    :goto_ca
    if-nez v15, :cond_f4

    .line 1171
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_d7

    const-string v28, "SamsungWindowManager"

    const-string v29, "MDM: key is blocked"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_d7
    const/16 v28, 0x1

    goto :goto_61

    .line 1162
    :cond_da
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_ca

    .line 1168
    :cond_e7
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_ca

    .line 1177
    .end local v15    # "isAllowed":Z
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_108

    .line 1178
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1182
    :cond_108
    invoke-virtual/range {p0 .. p0}, isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_124

    invoke-virtual/range {p0 .. p1}, isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_124

    .line 1183
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_120

    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "interceptKeyTi : Key was blocked by sidesync."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_120
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1188
    :cond_124
    const/16 v28, 0x3

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_2c3

    .line 1190
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    if-eqz v28, :cond_1ac

    .line 1191
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 1192
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 1193
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v20

    .line 1194
    .local v20, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v20, :cond_188

    .line 1195
    const/4 v15, 0x1

    .line 1196
    .restart local v15    # "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_17d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    if-nez v28, :cond_17d

    .line 1197
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    .line 1201
    :goto_16f
    if-nez v15, :cond_188

    .line 1202
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "home key disabled by edm"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1199
    :cond_17d
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    goto :goto_16f

    .line 1206
    .end local v15    # "isAllowed":Z
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v28

    if-gtz v28, :cond_1a0

    move-object/from16 v0, p0

    iget-object v0, v0, mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v28

    if-eqz v28, :cond_1ac

    .line 1208
    :cond_1a0
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1215
    .end local v20    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_1ac
    invoke-direct/range {p0 .. p0}, isKnoxKeyguardShowing()Z

    move-result v28

    if-eqz v28, :cond_1e4

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v28

    if-eqz v28, :cond_1e4

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    if-nez v28, :cond_1e4

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    new-instance v29, Landroid/content/Intent;

    const-string v30, "com.samsung.knox.kss.KnoxKeyguardHomeButton"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v30, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1219
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1226
    :cond_1e4
    invoke-virtual/range {p0 .. p0}, isHMTSupportAndConnected()Z

    move-result v28

    if-eqz v28, :cond_21b

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "vrmode_developer_mode"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_218

    const/16 v27, 0x1

    .line 1228
    .local v27, "vrDevelopMode":Z
    :goto_201
    if-nez v27, :cond_21b

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v28

    if-nez v28, :cond_21b

    .line 1229
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_214

    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is blocked by VR"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_214
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1227
    .end local v27    # "vrDevelopMode":Z
    :cond_218
    const/16 v27, 0x0

    goto :goto_201

    .line 1235
    :cond_21b
    invoke-virtual/range {p0 .. p0}, isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_236

    .line 1236
    invoke-virtual/range {p0 .. p1}, sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_236

    .line 1237
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_232

    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is send to SideSync"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_232
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1244
    :cond_236
    invoke-virtual/range {p0 .. p0}, isMirrorLinkEnabled()Z

    move-result v28

    if-eqz v28, :cond_248

    .line 1245
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "isMirrorLinkEnabled() true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1250
    :cond_248
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBlockKeyForDrivingMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_25b

    .line 1251
    const-string v28, "SamsungWindowManager"

    const-string v29, "carmode true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1257
    :cond_25b
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_272

    .line 1258
    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is blocked by policy"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1262
    :cond_272
    invoke-direct/range {p0 .. p0}, isKioskLocked()Z

    move-result v28

    if-eqz v28, :cond_287

    .line 1263
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_283

    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is blocked by Kiosk"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_283
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1267
    :cond_287
    if-nez v10, :cond_2b0

    .line 1269
    invoke-virtual/range {p0 .. p0}, isVoIPRinging()Z

    move-result v28

    if-eqz v28, :cond_2b0

    .line 1270
    invoke-virtual/range {p0 .. p0}, isAnyKeyMode()Z

    move-result v28

    if-eqz v28, :cond_2b0

    .line 1272
    :try_start_295
    invoke-static {}, getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v26

    .line 1273
    .local v26, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v26, :cond_2a9

    .line 1274
    invoke-interface/range {v26 .. v26}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    .line 1275
    const-string v28, "SamsungWindowManager"

    const-string v29, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1278
    :cond_2a9
    const-string v28, "SamsungWindowManager"

    const-string v29, "Unable to find IVoIPInterface interface"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b0
    .catch Landroid/os/RemoteException; {:try_start_295 .. :try_end_2b0} :catch_2b6

    .line 1289
    .end local v26    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_2b0
    :goto_2b0
    if-nez v10, :cond_2b2

    .line 1694
    :cond_2b2
    :goto_2b2
    const/16 v28, 0x0

    goto/16 :goto_61

    .line 1280
    :catch_2b6
    move-exception v12

    .line 1281
    .local v12, "ex":Landroid/os/RemoteException;
    const-string v28, "SamsungWindowManager"

    const-string v29, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b0

    .line 1298
    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_2c3
    const/16 v28, 0x52

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_350

    .line 1300
    if-eqz v10, :cond_2b2

    .line 1302
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSupportManualScreenPinning:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2f9

    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasPermanentMenuKey:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2f9

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v28

    if-eqz v28, :cond_2f9

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v28

    if-eqz v28, :cond_2f9

    .line 1303
    const/16 v28, 0x0

    goto/16 :goto_61

    .line 1305
    :cond_2f9
    invoke-virtual/range {p0 .. p0}, isSFinderLaunchable()Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1306
    const/16 v28, 0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b2

    if-nez v6, :cond_2b2

    .line 1309
    const/16 v22, 0x0

    .line 1311
    .local v22, "multiWindowDisabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v28

    if-eqz v28, :cond_333

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    .line 1314
    .local v21, "lpApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v21, :cond_333

    .line 1315
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_333

    .line 1316
    const/16 v22, 0x1

    .line 1321
    .end local v21    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    :cond_333
    if-nez v22, :cond_2b2

    .line 1323
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1324
    invoke-virtual/range {p0 .. p0}, launchSFinderIfPossible()Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1325
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1335
    .end local v22    # "multiWindowDisabled":Z
    :cond_350
    const/16 v28, 0xbb

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_360

    const/16 v28, 0x3e9

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_434

    .line 1337
    :cond_360
    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_383

    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v28

    if-eqz v28, :cond_383

    .line 1338
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_37f

    const-string v28, "SamsungWindowManager"

    const-string v29, "Recent key is blocked in ProKiosk mode"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_37f
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1343
    :cond_383
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    if-eqz v28, :cond_3c9

    .line 1344
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 1345
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v28

    if-gtz v28, :cond_3bd

    move-object/from16 v0, p0

    iget-object v0, v0, mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v28

    if-eqz v28, :cond_3c9

    .line 1348
    :cond_3bd
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1354
    :cond_3c9
    invoke-direct/range {p0 .. p0}, isKnoxKeyguardShowing()Z

    move-result v28

    if-nez v28, :cond_3d5

    invoke-direct/range {p0 .. p0}, isKnoxCreatingOnTop()Z

    move-result v28

    if-eqz v28, :cond_3d9

    .line 1355
    :cond_3d5
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1360
    :cond_3d9
    invoke-virtual/range {p0 .. p0}, isMirrorLinkEnabled()Z

    move-result v28

    if-eqz v28, :cond_3eb

    .line 1361
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "isMirrorLinkEnabled() true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1366
    :cond_3eb
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBlockKeyForDrivingMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3fe

    .line 1367
    const-string v28, "SamsungWindowManager"

    const-string v29, "carmode true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1373
    :cond_3fe
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_419

    .line 1374
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_415

    const-string v28, "SamsungWindowManager"

    const-string v29, "Recent key is blocked by policy"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_415
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1378
    :cond_419
    invoke-direct/range {p0 .. p0}, isKioskLocked()Z

    move-result v28

    if-eqz v28, :cond_42e

    .line 1379
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_42a

    const-string v28, "SamsungWindowManager"

    const-string v29, "Recent key is blocked by Kiosk"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_42a
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1384
    :cond_42e
    if-eqz v10, :cond_2b2

    if-nez v23, :cond_2b2

    goto/16 :goto_2b2

    .line 1392
    :cond_434
    const/16 v28, 0x4

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_444

    const/16 v28, 0x6f

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_49b

    .line 1402
    :cond_444
    move-object/from16 v0, p0

    iget-object v0, v0, mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v29

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-virtual {v0, v10, v1, v6, v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I

    move-result v28

    if-gez v28, :cond_464

    .line 1404
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1409
    :cond_464
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasFakeMenuKeyBack:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b2

    .line 1410
    if-nez v10, :cond_478

    .line 1411
    invoke-direct/range {p0 .. p0}, isBackKeyConsumed()Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1412
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1414
    :cond_478
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBackKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_2b2

    const/16 v28, 0xa

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b2

    .line 1415
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBackKeyConsumed:Z

    .line 1417
    const/16 v28, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, injectionKeyEvent(I)V

    goto/16 :goto_2b2

    .line 1422
    :cond_49b
    const/16 v28, 0x415

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_4d1

    .line 1423
    if-eqz v10, :cond_4cd

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1425
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFingerPrintPending:Z

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x3e8

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1428
    :cond_4cd
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1429
    :cond_4d1
    const/16 v28, 0x416

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_501

    .line 1430
    if-nez v10, :cond_4fd

    move-object/from16 v0, p0

    iget-boolean v0, v0, mFingerPrintPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4fd

    .line 1431
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFingerPrintPending:Z

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1433
    invoke-virtual/range {p0 .. p0}, launchFingerPrint()V

    .line 1435
    :cond_4fd
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1439
    :cond_501
    const/16 v28, 0x3f9

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_718

    .line 1440
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_6c1

    .line 1441
    const-string/jumbo v28, "service.media.dmb"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1442
    .local v7, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "dmb_antenna_auto_start"

    const/16 v30, 0x0

    const/16 v31, -0x2

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_65f

    const/16 v16, 0x1

    .line 1444
    .local v16, "isDmbAutoStarton":Z
    :goto_535
    const/4 v5, 0x0

    .line 1445
    .local v5, "b_dmb_running":Z
    const/16 v17, 0x0

    .line 1446
    .local v17, "isSecureKeyguard":Z
    if-eqz v7, :cond_54b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_54b

    .line 1447
    const-string v28, "1"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_663

    .line 1448
    const/4 v5, 0x1

    .line 1454
    :cond_54b
    :goto_54b
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_567

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v17

    .line 1456
    :cond_567
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isSecureKeyguard="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isDmbAutoStarton="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    if-nez v10, :cond_5f4

    if-nez v23, :cond_5f4

    .line 1462
    :try_start_5a1
    const-string v4, "/efs/FactoryApp/tdmb_det_count"

    .line 1463
    .local v4, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1464
    .local v25, "strDMBCount":Ljava/lang/String;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "TDMB_DET_COUNT : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    if-eqz v25, :cond_670

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_670

    .line 1467
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    const-wide/16 v30, 0x1

    add-long v8, v28, v30

    .line 1468
    .local v8, "dmb_det_count":J
    const-wide/32 v28, 0xf423f

    cmp-long v28, v8, v28

    if-lez v28, :cond_5eb

    .line 1469
    const-wide/16 v8, 0x1

    .line 1471
    :cond_5eb
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f4
    .catch Ljava/io/IOException; {:try_start_5a1 .. :try_end_5f4} :catch_679
    .catch Ljava/lang/NumberFormatException; {:try_start_5a1 .. :try_end_5f4} :catch_696

    .line 1482
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v8    # "dmb_det_count":J
    .end local v25    # "strDMBCount":Ljava/lang/String;
    :cond_5f4
    :goto_5f4
    if-nez v10, :cond_2b2

    if-nez v23, :cond_2b2

    if-nez v5, :cond_2b2

    if-nez v17, :cond_2b2

    if-eqz v16, :cond_2b2

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v28

    if-nez v28, :cond_2b2

    .line 1485
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    new-instance v28, Landroid/content/ComponentName;

    const-string v29, "com.sec.android.app.dmb"

    const-string v30, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v28 .. v30}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 1489
    .local v14, "intent":Landroid/content/Intent;
    const-string v28, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    const/high16 v28, 0x10000000

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1492
    :try_start_632
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_63d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_632 .. :try_end_63d} :catch_6b3

    .line 1497
    :goto_63d
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    if-eqz v28, :cond_65b

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$8;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1504
    :cond_65b
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1442
    .end local v5    # "b_dmb_running":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isDmbAutoStarton":Z
    .end local v17    # "isSecureKeyguard":Z
    :cond_65f
    const/16 v16, 0x0

    goto/16 :goto_535

    .line 1449
    .restart local v5    # "b_dmb_running":Z
    .restart local v16    # "isDmbAutoStarton":Z
    .restart local v17    # "isSecureKeyguard":Z
    :cond_663
    const-string v28, "0"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_54b

    .line 1450
    const/4 v5, 0x0

    goto/16 :goto_54b

    .line 1473
    .restart local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v25    # "strDMBCount":Ljava/lang/String;
    :cond_670
    :try_start_670
    const-string v28, "0"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_677
    .catch Ljava/io/IOException; {:try_start_670 .. :try_end_677} :catch_679
    .catch Ljava/lang/NumberFormatException; {:try_start_670 .. :try_end_677} :catch_696

    goto/16 :goto_5f4

    .line 1475
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v25    # "strDMBCount":Ljava/lang/String;
    :catch_679
    move-exception v11

    .line 1476
    .local v11, "e":Ljava/io/IOException;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "IOException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f4

    .line 1477
    .end local v11    # "e":Ljava/io/IOException;
    :catch_696
    move-exception v11

    .line 1478
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NumberFormatException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f4

    .line 1493
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_6b3
    move-exception v11

    .line 1494
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    const-string v28, "SamsungWindowManager"

    const-string v29, "No activity to launch DMB."

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63d

    .line 1508
    .end local v5    # "b_dmb_running":Z
    .end local v7    # "dmb_running":Ljava/lang/String;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isDmbAutoStarton":Z
    .end local v17    # "isSecureKeyguard":Z
    :cond_6c1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1510
    const/16 v17, 0x0

    .line 1511
    .restart local v17    # "isSecureKeyguard":Z
    const-string v28, "SamsungWindowManager"

    const-string v29, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6ec

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v17

    .line 1515
    :cond_6ec
    if-nez v10, :cond_2b2

    if-nez v23, :cond_2b2

    if-nez v17, :cond_2b2

    .line 1516
    const-string v28, "SamsungWindowManager"

    const-string v29, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1518
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1520
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1523
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "isSecureKeyguard":Z
    :cond_718
    const/16 v28, 0x3fa

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_78e

    .line 1524
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_760

    .line 1525
    if-nez v10, :cond_2b2

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v28

    if-nez v28, :cond_2b2

    .line 1526
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1528
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1531
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1535
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_760
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1536
    if-nez v10, :cond_2b2

    .line 1537
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1539
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1541
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1549
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_78e
    const/16 v28, 0x3eb

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_7b3

    .line 1550
    if-eqz v10, :cond_2b2

    if-nez v19, :cond_2b2

    if-nez v23, :cond_2b2

    .line 1552
    :try_start_79c
    invoke-virtual/range {p0 .. p0}, getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v24

    .line 1553
    .local v24, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v24, :cond_7a5

    .line 1554
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_7a5
    .catch Landroid/os/RemoteException; {:try_start_79c .. :try_end_7a5} :catch_7a9

    .line 1560
    .end local v24    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_7a5
    :goto_7a5
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1556
    :catch_7a9
    move-exception v12

    .line 1558
    .restart local v12    # "ex":Landroid/os/RemoteException;
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_7a5

    .line 1563
    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_7b3
    const/16 v28, 0x428

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_7c4

    .line 1564
    if-nez v10, :cond_7c0

    .line 1565
    invoke-virtual/range {p0 .. p0}, launchSFinderIfPossible()Z

    .line 1567
    :cond_7c0
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1569
    :cond_7c4
    const/16 v28, 0x3ec

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_7fe

    .line 1570
    if-nez v10, :cond_2b2

    invoke-virtual/range {p0 .. p0}, isDeviceProvisioned()Z

    move-result v28

    if-eqz v28, :cond_2b2

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v28

    if-eqz v28, :cond_2b2

    invoke-direct/range {p0 .. p0}, isScreenCaptureEnabled()Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$9;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2b2

    .line 1580
    :cond_7fe
    const/16 v28, 0x425

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_85a

    .line 1581
    if-nez v10, :cond_83e

    invoke-virtual/range {p0 .. p0}, isDeviceProvisioned()Z

    move-result v28

    if-eqz v28, :cond_83e

    if-nez v19, :cond_83e

    .line 1582
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_MULTI_WINDOW key input"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_842

    move-object/from16 v0, p0

    iget-object v0, v0, mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_842

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->handleLongPressOnRecent()Z

    move-result v28

    if-nez v28, :cond_83e

    .line 1585
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_MULTI_WINDOW key is blocked"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_83e
    :goto_83e
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1587
    :cond_842
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v28

    if-nez v28, :cond_83e

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->toggleMultiWindowTray()Z

    goto :goto_83e

    .line 1595
    :cond_85a
    const/16 v28, 0x41a

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_2b2

    .line 1613
    const/16 v28, 0x1a

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_87a

    .line 1614
    invoke-virtual/range {p0 .. p0}, isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1615
    invoke-virtual/range {p0 .. p1}, sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1616
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1622
    :cond_87a
    const/16 v28, 0x3f7

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_8d2

    .line 1623
    if-eqz v10, :cond_8ad

    .line 1624
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1625
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_895

    const-string v28, "SamsungWindowManager"

    const-string v29, "User key longpress - Do longpress"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_895
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mUserKeyConsumed:Z

    .line 1628
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, handleUserKey(Z)Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1629
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1633
    :cond_8ad
    invoke-direct/range {p0 .. p0}, isUserKeyConsumed()Z

    move-result v28

    if-eqz v28, :cond_8c2

    .line 1634
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_8be

    const-string v28, "SamsungWindowManager"

    const-string v29, "User key up after long press - ignore up key"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_8be
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1637
    :cond_8c2
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, handleUserKey(Z)Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1638
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1644
    :cond_8d2
    const/16 v28, 0x417

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_96c

    .line 1645
    const-string v28, "SamsungWindowManager"

    const-string v29, "KeyEvent.KEYCODE_NETWORK_SEL"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v28

    if-nez v28, :cond_8f3

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_8fc

    .line 1647
    :cond_8f3
    const-string v28, "SamsungWindowManager"

    const-string v29, "Network selection key - no action in factory mode"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b2

    .line 1649
    :cond_8fc
    if-nez v19, :cond_930

    .line 1650
    if-eqz v10, :cond_934

    and-int/lit16 v0, v13, 0x80

    move/from16 v28, v0

    if-eqz v28, :cond_934

    .line 1651
    const-string v28, "SamsungWindowManager"

    const-string v29, "Network selection long press action"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1653
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "ACTION_NETWORK_LONGPRESS_KEY"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1656
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNetworkSelectionLongPress:Z

    .line 1668
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_930
    :goto_930
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1657
    :cond_934
    if-nez v10, :cond_930

    if-nez v23, :cond_930

    .line 1658
    move-object/from16 v0, p0

    iget-boolean v0, v0, mNetworkSelectionLongPress:Z

    move/from16 v28, v0

    if-nez v28, :cond_963

    .line 1659
    const-string v28, "SamsungWindowManager"

    const-string v29, "Network selection short press action"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1661
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "ACTION_NETWORK_KEY"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_930

    .line 1664
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_963
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNetworkSelectionLongPress:Z

    goto :goto_930

    .line 1670
    :cond_96c
    const/16 v28, 0x40c

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_9b4

    .line 1671
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v28

    if-nez v28, :cond_986

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_98f

    .line 1672
    :cond_986
    const-string v28, "SamsungWindowManager"

    const-string v29, "Data key - no action in factory mode"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b2

    .line 1674
    :cond_98f
    if-nez v10, :cond_2b2

    if-nez v23, :cond_2b2

    .line 1675
    const-string v28, "SamsungWindowManager"

    const-string v29, "3G key action"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    new-instance v14, Landroid/content/Intent;

    const-string v28, "android.settings.DATA_NETWORK_KEY_PRESSED"

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1677
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2b2

    .line 1682
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_9b4
    const/16 v28, 0x1b

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_9e3

    .line 1683
    invoke-virtual/range {p0 .. p0}, isSimLocked()Z

    move-result v28

    if-nez v28, :cond_9d4

    invoke-virtual/range {p0 .. p0}, isCarrierLocked()Z

    move-result v28

    if-nez v28, :cond_9d4

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1684
    :cond_9d4
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_9df

    const-string v28, "SamsungWindowManager"

    const-string v29, "Key was blocked by sim or carrier status"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_9df
    const/16 v28, 0x1

    goto/16 :goto_61

    .line 1688
    :cond_9e3
    const/16 v28, 0x431

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b2

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_2b2

    .line 1690
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_a02

    const-string v28, "SamsungWindowManager"

    const-string v29, "Key was blocked by carrier status"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_a02
    const/16 v28, 0x1

    goto/16 :goto_61
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .registers 31
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1707
    const/high16 v24, 0x20000000

    and-int v24, v24, p2

    if-eqz v24, :cond_3f

    const/16 v18, 0x1

    .line 1708
    .local v18, "interactive":Z
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_42

    const/4 v11, 0x1

    .line 1709
    .local v11, "down":Z
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v20

    .line 1711
    .local v20, "keyCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/PhoneWindowManager;->getLockTaskMode()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_44

    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_35

    const/16 v24, 0xbb

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_44

    .line 1713
    :cond_35
    const-string v24, "SamsungWindowManager"

    const-string v25, "Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const/16 v24, 0x1

    .line 1914
    :goto_3e
    return v24

    .line 1707
    .end local v11    # "down":Z
    .end local v18    # "interactive":Z
    .end local v20    # "keyCode":I
    :cond_3f
    const/16 v18, 0x0

    goto :goto_8

    .line 1708
    .restart local v18    # "interactive":Z
    :cond_42
    const/4 v11, 0x0

    goto :goto_f

    .line 1720
    .restart local v11    # "down":Z
    .restart local v20    # "keyCode":I
    :cond_44
    invoke-virtual/range {p0 .. p1}, broadcastHardKeyIntent(Landroid/view/KeyEvent;)V

    .line 1726
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_cd

    move-object/from16 v0, p0

    iget-object v0, v0, mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v24, v0

    if-eqz v24, :cond_cd

    move-object/from16 v0, p0

    iget-object v0, v0, mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_cd

    .line 1728
    const/16 v19, 0x1

    .line 1729
    .local v19, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_c0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    if-nez v24, :cond_c0

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b3

    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v24

    if-eqz v24, :cond_b3

    .line 1732
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v19

    .line 1733
    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_a7

    move-object/from16 v0, p0

    iget-boolean v0, v0, mProKioskReEnableVolumeUpKey:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a7

    .line 1734
    const/16 v19, 0x1

    .line 1745
    :cond_a7
    :goto_a7
    if-nez v19, :cond_cd

    .line 1746
    const-string v24, "SamsungWindowManager"

    const-string v25, "MDM: key is blocked"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const/16 v24, 0x1

    goto :goto_3e

    .line 1737
    :cond_b3
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_a7

    .line 1743
    :cond_c0
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_a7

    .line 1753
    .end local v19    # "isAllowed":Z
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 1756
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, processTorchlight(IZZ)V

    .line 1759
    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_107

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, isEnableAccessControl(I)Z

    move-result v24

    if-eqz v24, :cond_107

    .line 1760
    sget-boolean v24, SAFE_DEBUG:Z

    if-eqz v24, :cond_103

    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_103
    const/16 v24, 0x1

    goto/16 :goto_3e

    .line 1765
    :cond_107
    const/16 v24, 0x1a

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_12b

    .line 1767
    invoke-virtual/range {p0 .. p0}, isMirrorLinkEnabled()Z

    move-result v24

    if-eqz v24, :cond_121

    .line 1768
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "isMirrorLinkEnabled() true"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/16 v24, 0x1

    goto/16 :goto_3e

    .line 1773
    :cond_121
    invoke-virtual/range {p0 .. p0}, isHMTSupportAndConnected()Z

    move-result v24

    if-eqz v24, :cond_215

    .line 1774
    const/16 v24, 0x1

    goto/16 :goto_3e

    .line 1779
    :cond_12b
    const/16 v24, 0x427

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_17f

    .line 1780
    if-nez v11, :cond_17b

    .line 1781
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch voice LPSD"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v24

    if-eqz v24, :cond_152

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1785
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x1388

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1786
    const-string v5, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    .line 1787
    .local v5, "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1788
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1790
    .end local v5    # "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_17b
    const/16 v24, 0x1

    goto/16 :goto_3e

    .line 1794
    :cond_17f
    const/16 v24, 0x426

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_215

    .line 1795
    if-nez v11, :cond_1be

    .line 1796
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v24

    if-nez v24, :cond_19b

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_1c2

    .line 1797
    :cond_19b
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1798
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v24, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v26, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1818
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_1be
    :goto_1be
    const/16 v24, 0x1

    goto/16 :goto_3e

    .line 1802
    :cond_1c2
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsCheckDrivingMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1f2

    .line 1804
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch drivelink"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1806
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v24, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1be

    .line 1811
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_1f2
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch voice command"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-string v4, "com.samsung.alwaysmicon.alwaysmiconservice.ACTION_VOICE_WAKEUP"

    .line 1813
    .local v4, "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1814
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1be

    .line 1823
    .end local v4    # "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_215
    invoke-virtual/range {p0 .. p0}, isSideSyncPresentationRunning()Z

    move-result v24

    if-eqz v24, :cond_22d

    invoke-virtual/range {p0 .. p1}, isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v24

    if-eqz v24, :cond_22d

    .line 1824
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "interceptKeyTq : Key was blocked by sidesync."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/16 v24, 0x1

    goto/16 :goto_3e

    .line 1830
    :cond_22d
    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_49b

    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v24

    if-eqz v24, :cond_49b

    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v24

    if-eqz v24, :cond_49b

    .line 1832
    if-eqz v11, :cond_49b

    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_25f

    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_49b

    .line 1833
    :cond_25f
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: Volume Key app switching starting"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v7

    .line 1835
    .local v7, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_278

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_28a

    .line 1836
    :cond_278
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: no apps in list"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_27f
    :goto_27f
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: Volume Key app switching done"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const/16 v24, 0x1

    goto/16 :goto_3e

    .line 1838
    :cond_28a
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " apps in list"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "activity"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 1840
    .local v6, "activityManager":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 1843
    .local v22, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1844
    .local v10, "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_2cd
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_326

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1845
    .local v8, "appListItem":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1846
    .local v9, "appStartIntent":Landroid/content/Intent;
    if-eqz v9, :cond_305

    .line 1847
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " available"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2cd

    .line 1850
    :cond_305
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not available"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cd

    .line 1853
    .end local v8    # "appListItem":Ljava/lang/String;
    .end local v9    # "appStartIntent":Landroid/content/Intent;
    :cond_326
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_335

    .line 1854
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: no available apps"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27f

    .line 1858
    :cond_335
    const v24, 0x7fffffff

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v23

    .line 1859
    .local v23, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1860
    .local v13, "foregroundApp":Ljava/lang/String;
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v14, -0x1

    .line 1863
    .local v14, "foregroundAppIndex":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_376
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_3b6

    .line 1864
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3b3

    .line 1865
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " found at index "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    move v14, v15

    .line 1863
    :cond_3b3
    add-int/lit8 v15, v15, 0x1

    goto :goto_376

    .line 1869
    :cond_3b6
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_3dc

    .line 1870
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not found in list; use first"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_3dc
    move-object/from16 v21, v13

    .line 1874
    .local v21, "newApp":Ljava/lang/String;
    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_42b

    .line 1875
    if-lez v14, :cond_41c

    .line 1876
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 1889
    .restart local v21    # "newApp":Ljava/lang/String;
    :cond_3f2
    :goto_3f2
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_453

    .line 1890
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " already in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27f

    .line 1878
    :cond_41c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_3f2

    .line 1880
    :cond_42b
    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_3f2

    .line 1881
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v14, v0, :cond_448

    .line 1882
    add-int/lit8 v24, v14, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_3f2

    .line 1884
    :cond_448
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_3f2

    .line 1892
    :cond_453
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1893
    .restart local v9    # "appStartIntent":Landroid/content/Intent;
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: switching to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    if-eqz v9, :cond_27f

    .line 1895
    const/high16 v24, 0x10400000

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1898
    :try_start_480
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_48b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_480 .. :try_end_48b} :catch_48d

    goto/16 :goto_27f

    .line 1899
    :catch_48d
    move-exception v12

    .line 1900
    .local v12, "e":Landroid/content/ActivityNotFoundException;
    const-string v24, "SamsungWindowManager"

    const-string v25, "No activity to launch Knox Custom switching."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27f

    .line 1914
    .end local v6    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "appStartIntent":Landroid/content/Intent;
    .end local v10    # "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "foregroundApp":Ljava/lang/String;
    .end local v14    # "foregroundAppIndex":I
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "newApp":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_49b
    const/16 v24, 0x0

    goto/16 :goto_3e
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3053
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3054
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_16

    .line 3055
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3057
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 3058
    const/4 v2, 0x1

    .line 3061
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public isAnyKeyMode()Z
    .registers 5

    .prologue
    .line 3877
    const/4 v0, 0x0

    .line 3878
    .local v0, "isAnyKeyMode":Z
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_13

    .line 3879
    const/4 v0, 0x0

    .line 3883
    :goto_12
    return v0

    .line 3881
    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public isAppLockRunning()Z
    .registers 7

    .prologue
    .line 4457
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4458
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 4459
    .local v1, "isAppLockRunning":Z
    if-eqz v0, :cond_30

    .line 4460
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 4461
    .local v2, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 4462
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4463
    .local v3, "topPackageName":Ljava/lang/String;
    const-string v4, "com.samsung.android.applock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 4464
    const/4 v1, 0x1

    .line 4468
    .end local v2    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topPackageName":Ljava/lang/String;
    :cond_30
    return v1
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3578
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3579
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 3580
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_23

    move v0, v3

    .line 3581
    .local v0, "down":Z
    :goto_11
    iget-boolean v5, p0, mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_25

    const/4 v5, 0x3

    if-eq v2, v5, :cond_25

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_25

    .line 3588
    :goto_22
    return v3

    .end local v0    # "down":Z
    :cond_23
    move v0, v4

    .line 3580
    goto :goto_11

    .restart local v0    # "down":Z
    :cond_25
    move v3, v4

    .line 3588
    goto :goto_22
.end method

.method public isBlockedPowerKeyByKeyTest(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3693
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v0

    if-nez v0, :cond_44

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3700
    :cond_44
    sget-boolean v0, SAFE_DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "SamsungWindowManager"

    const-string v1, "Skip power key behavior by FactoryTest application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    :cond_4f
    const/4 v0, 0x1

    .line 3703
    :goto_50
    return v0

    :cond_51
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public isCarrierLocked()Z
    .registers 2

    .prologue
    .line 4036
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v0

    return v0
.end method

.method public isCombinationKeyTriggered()Z
    .registers 2

    .prologue
    .line 1923
    iget-object v0, p0, mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/CombinationKeyManager;->isCombinationKeyTriggered()Z

    move-result v0

    return v0
.end method

.method public isComponentAvailable(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 3065
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3067
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 3069
    const/4 v2, 0x1

    .line 3074
    :cond_12
    :goto_12
    return v2

    .line 3073
    :catch_13
    move-exception v0

    .line 3074
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method public isCurrentUserSetupComplete()Z
    .registers 2

    .prologue
    .line 1091
    sget v0, mCurrentUser:I

    if-eqz v0, :cond_c

    iget-object v0, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3048
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isDockHomeEnabled(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1103
    const/4 v0, 0x1

    .line 1104
    .local v0, "resDeskHomeEnabled":Z
    sget-boolean v1, mIsTablet:Z

    if-nez v1, :cond_19

    .line 1106
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1107
    iget-boolean v0, p0, mIsDockHomeEnabled:Z

    .line 1111
    :cond_19
    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1929
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1930
    const-string v1, "SamsungWindowManager"

    const-string v2, "Home Double Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_e
    :goto_e
    return v0

    :cond_f
    iget v1, p0, mDoubleTapOnHomeBehavior:I

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    goto :goto_e
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .registers 2

    .prologue
    .line 2046
    iget-boolean v0, p0, mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .registers 2

    .prologue
    .line 1099
    iget-boolean v0, p0, mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl(I)Z
    .registers 10
    .param p1, "event"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1065
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_power_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1067
    .local v1, "mAccessPower":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_volume_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1069
    .local v2, "mAccessVolume":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_keyboard_block"

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1072
    .local v0, "mAccessKeyboard":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v5, 0x7

    if-lt p1, v5, :cond_3f

    const/16 v5, 0x12

    if-gt p1, v5, :cond_3f

    .line 1074
    iget-boolean v5, p0, mIsEnabledAccessControl:Z

    if-eqz v5, :cond_3d

    if-eqz v0, :cond_3d

    .line 1086
    :cond_3c
    :goto_3c
    return v3

    :cond_3d
    move v3, v4

    .line 1074
    goto :goto_3c

    .line 1077
    :cond_3f
    sparse-switch p1, :sswitch_data_58

    .line 1086
    iget-boolean v3, p0, mIsEnabledAccessControl:Z

    goto :goto_3c

    .line 1079
    :sswitch_45
    iget-boolean v3, p0, mIsEnabledAccessControl:Z

    goto :goto_3c

    .line 1081
    :sswitch_48
    iget-boolean v5, p0, mIsEnabledAccessControl:Z

    if-eqz v5, :cond_4e

    if-nez v1, :cond_3c

    :cond_4e
    move v3, v4

    goto :goto_3c

    .line 1084
    :sswitch_50
    iget-boolean v5, p0, mIsEnabledAccessControl:Z

    if-eqz v5, :cond_56

    if-nez v2, :cond_3c

    :cond_56
    move v3, v4

    goto :goto_3c

    .line 1077
    :sswitch_data_58
    .sparse-switch
        0x3 -> :sswitch_45
        0x18 -> :sswitch_50
        0x19 -> :sswitch_50
        0x1a -> :sswitch_48
    .end sparse-switch
.end method

.method public isHMTSupportAndConnected()Z
    .registers 3

    .prologue
    .line 4072
    const-string/jumbo v0, "sys.hmt.connected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isKidsModeEnabled()Z
    .registers 2

    .prologue
    .line 1095
    iget-boolean v0, p0, mIsKidsModeEnabled:Z

    return v0
.end method

.method public isLiveDemo()Z
    .registers 2

    .prologue
    .line 4077
    iget-boolean v0, p0, mIsLiveDemo:Z

    return v0
.end method

.method public isMenuConsumed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2197
    iget-boolean v1, p0, mMenuConsumed:Z

    if-eqz v1, :cond_8

    .line 2198
    iput-boolean v0, p0, mMenuConsumed:Z

    .line 2199
    const/4 v0, 0x1

    .line 2201
    :cond_8
    return v0
.end method

.method public isMirrorLinkEnabled()Z
    .registers 3

    .prologue
    .line 3198
    const-string v0, "1"

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOneTouchReportEnabled()Z
    .registers 18

    .prologue
    .line 2719
    const-string/jumbo v15, "go.police.report"

    .line 2720
    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 2722
    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2723
    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2725
    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2726
    const/4 v2, 0x0

    .line 2771
    :goto_12
    return v2

    .line 2730
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 2732
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1b
    const-string/jumbo v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2734
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_2e

    move-result v2

    if-nez v2, :cond_31

    .line 2736
    const/4 v2, 0x0

    goto :goto_12

    .line 2738
    :catch_2e
    move-exception v11

    .line 2740
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_12

    .line 2744
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_31
    const-string v9, "content://go.police.provider.report"

    .line 2745
    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2747
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_6a

    .line 2748
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2750
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_65

    :try_start_4d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2751
    const-string/jumbo v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2753
    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_65

    .line 2754
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_60} :catch_6e
    .catchall {:try_start_4d .. :try_end_60} :catchall_78

    move-result v10

    .line 2755
    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_6c

    const/4 v12, 0x1

    .line 2765
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_65
    :goto_65
    if-eqz v7, :cond_6a

    .line 2766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_6a
    :goto_6a
    move v2, v12

    .line 2771
    goto :goto_12

    .line 2755
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_6c
    const/4 v12, 0x0

    goto :goto_65

    .line 2762
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_6e
    move-exception v11

    .line 2763
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6f
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_78

    .line 2765
    if-eqz v7, :cond_6a

    .line 2766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    .line 2765
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v2

    if-eqz v7, :cond_7e

    .line 2766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3079
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3081
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 3082
    const/4 v2, 0x1

    .line 3087
    :cond_12
    :goto_12
    return v2

    .line 3086
    :catch_13
    move-exception v0

    .line 3087
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method public isRecentAppStart()Z
    .registers 2

    .prologue
    .line 3346
    iget-object v0, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressMode()I

    move-result v0

    if-eqz v0, :cond_14

    .line 3347
    invoke-direct {p0}, startCustomApp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3348
    const/4 v0, 0x1

    .line 3351
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isRecentConsumed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2258
    iget-boolean v1, p0, mRecentConsumed:Z

    if-eqz v1, :cond_8

    .line 2259
    iput-boolean v0, p0, mRecentConsumed:Z

    .line 2260
    const/4 v0, 0x1

    .line 2262
    :cond_8
    return v0
.end method

.method public isRingingOrOffhook()Z
    .registers 2

    .prologue
    .line 3838
    iget-boolean v0, p0, mIsRingingOrOffhook:Z

    return v0
.end method

.method public isSFinderLaunchable()Z
    .registers 2

    .prologue
    .line 3827
    iget-object v0, p0, mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_e

    iget-object v0, p0, mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z
    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$900(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSafetyAssuranceEnabled()Z
    .registers 2

    .prologue
    .line 1050
    iget-boolean v0, p0, mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method public isScreenOffOnLongPressHome()Z
    .registers 5

    .prologue
    .line 3420
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3421
    iget-object v0, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3422
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 3423
    const/4 v0, 0x1

    .line 3426
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isShowOrHideRecentAppsAllowedByKNOX()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3276
    iget-object v3, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_f

    iget-object v3, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3290
    :cond_e
    :goto_e
    return v1

    .line 3281
    :cond_f
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 3282
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 3283
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_23

    .line 3284
    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_23
    move v1, v2

    .line 3290
    goto :goto_e
.end method

.method public isSideSyncPresentationRunning()Z
    .registers 2

    .prologue
    .line 3607
    iget-boolean v0, p0, mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isSimLocked()Z
    .registers 2

    .prologue
    .line 4031
    iget-object v0, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3843
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSktTphoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "skt_phone20_relax_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_18

    .line 3846
    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17
.end method

.method public isTripleTapOnHomeEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2020
    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2021
    const-string v1, "SamsungWindowManager"

    const-string v2, "Home Triple Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_13
    :goto_13
    return v0

    .line 2026
    :cond_14
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_25

    move v0, v1

    .line 2027
    goto :goto_13

    .line 2032
    :cond_25
    iget v2, p0, mTripleTapOnHomeBehavior:I

    if-nez v2, :cond_2f

    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_2f
    move v0, v1

    goto :goto_13
.end method

.method public isUseAccessControl()Z
    .registers 2

    .prologue
    .line 1054
    iget-boolean v0, p0, mIsUseAccessControl:Z

    return v0
.end method

.method public isUvsOrientationRequested()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3613
    const-string v1, "LGT"

    iget-object v2, p0, EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3616
    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method isVoIPRinging()Z
    .registers 6

    .prologue
    .line 3862
    const/4 v1, 0x0

    .line 3864
    .local v1, "isVoIPRinging":Z
    :try_start_1
    invoke-static {}, getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3865
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_c

    .line 3866
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 3873
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_b
    return v1

    .line 3868
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_b

    .line 3870
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_14
    move-exception v0

    .line 3871
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public isVolumeKeyAppsEnabled()Z
    .registers 2

    .prologue
    .line 3458
    iget-object v0, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3460
    const/4 v0, 0x1

    .line 3462
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isWakeupPreventionPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4570
    iget-boolean v0, p0, mIsWakeupPrevention:Z

    if-eqz v0, :cond_10

    .line 4571
    if-eqz p1, :cond_10

    iget-object v0, p0, mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4572
    const/4 v0, 0x1

    .line 4576
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public launchDoubleTapOnHomeCommand()V
    .registers 7

    .prologue
    .line 1959
    invoke-virtual {p0}, hasCustomDoubleTapHomeCommand()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1960
    invoke-virtual {p0}, launchVoiceCommand()V

    .line 2014
    :cond_9
    :goto_9
    return-void

    .line 1961
    :cond_a
    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 1962
    iget-boolean v3, p0, mAvailableDoublTapOnHomeCommand:Z

    if-eqz v3, :cond_e2

    invoke-virtual {p0}, isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 1963
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch double tap command"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_ce

    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v2

    .line 1966
    .local v2, "isSecureLock":Z
    :goto_30
    iget-object v3, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v4, "isSecure"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1967
    iget-object v3, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    iget-object v4, p0, mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1968
    iget-object v3, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1969
    iget-object v3, p0, mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-nez v3, :cond_64

    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_d1

    .line 1971
    :cond_64
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_96

    .line 1972
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add cleartask flag by policy: isShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_96
    iget-object v3, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const v4, 0x24001000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1982
    :goto_9e
    :try_start_9e
    iget-object v3, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_b2

    .line 1983
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_b2} :catch_f9

    .line 1996
    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_bb
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b2 .. :try_end_bb} :catch_d9

    .line 2001
    :goto_bb
    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 2003
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2004
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_9

    .line 2005
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto/16 :goto_9

    .line 1965
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "isSecureLock":Z
    :cond_ce
    const/4 v2, 0x0

    goto/16 :goto_30

    .line 1978
    .restart local v2    # "isSecureLock":Z
    :cond_d1
    iget-object v3, p0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_9e

    .line 1997
    :catch_d9
    move-exception v0

    .line 1998
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "No activity to launch double tap command."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bb

    .line 2008
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "isSecureLock":Z
    :cond_e2
    const-string v3, "SamsungWindowManager"

    const-string v4, "Device is not available double tap command or setting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHome()V

    goto/16 :goto_9

    .line 2012
    :cond_f0
    const-string v3, "SamsungWindowManager"

    const-string v4, "Device is not provisioned"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1985
    .restart local v2    # "isSecureLock":Z
    :catch_f9
    move-exception v3

    goto :goto_b2
.end method

.method public launchFingerPrint()V
    .registers 5

    .prologue
    .line 3093
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3094
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    :try_start_e
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_17} :catch_18

    .line 3103
    :goto_17
    return-void

    .line 3097
    :catch_18
    move-exception v0

    .line 3098
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 3101
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_21
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public launchFixedTask()V
    .registers 6

    .prologue
    .line 4438
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "launch Fixed Task for DualScreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getFixedTaskId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    .line 4444
    :goto_17
    return-void

    .line 4441
    :catch_18
    move-exception v0

    .line 4442
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17
.end method

.method public launchHomeDuringVzwSetup()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2088
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2089
    const-string/jumbo v1, "persist.sys.enablehomekey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2090
    .local v0, "isHomeKeyEnabled":Z
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    .end local v0    # "isHomeKeyEnabled":Z
    :cond_26
    return v0
.end method

.method public launchPremiumWatch(Z)V
    .registers 8
    .param p1, "resetLaunchingFlag"    # Z

    .prologue
    .line 4159
    :try_start_0
    const-string v2, "SamsungWindowManager"

    const-string v3, "Premium watch on"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4162
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.START_WATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4163
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4164
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1d} :catch_30

    .line 4169
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1d
    if-eqz p1, :cond_2f

    .line 4170
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4171
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4173
    :cond_2f
    return-void

    .line 4165
    :catch_30
    move-exception v0

    .line 4166
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Fail to launch premium watch"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public launchSFinderIfPossible()Z
    .registers 2

    .prologue
    .line 3832
    iget-object v0, p0, mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_e

    iget-object v0, p0, mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z
    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$1000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public launchSReminder()V
    .registers 6

    .prologue
    .line 3998
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "assist"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4000
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.app.sreminder"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4003
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3c

    .line 4004
    const-string v2, "FROM"

    const-string v3, "HOMEKEY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4005
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchSReminder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    :try_start_35
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 4012
    :cond_3c
    :goto_3c
    return-void

    .line 4008
    :catch_3d
    move-exception v0

    .line 4009
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch SReminder."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method public launchSamsungHome()V
    .registers 7

    .prologue
    .line 4417
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch Samsung Home for DualScreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4419
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.dualscreen.intent.category.SAMSUNG_HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4420
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "left_home"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4421
    .local v0, "defaultValue":I
    if-gez v0, :cond_2c

    .line 4431
    :cond_24
    :goto_24
    :try_start_24
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_2b} :catch_44

    .line 4435
    :goto_2b
    return-void

    .line 4423
    :cond_2c
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3c

    .line 4424
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.dailydigest"

    const-string v5, "com.sec.android.app.dailydigest.activities.DailyDigestActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_24

    .line 4426
    :cond_3c
    if-nez v0, :cond_24

    .line 4427
    const-string v3, "com.samsung.android.app.headlines"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_24

    .line 4432
    :catch_44
    move-exception v1

    .line 4433
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "No activity to launch Samsung Home."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public launchVoiceCommand()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1937
    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-boolean v3, p0, mAvailableVoiceCommand:Z

    if-eqz v3, :cond_5d

    invoke-virtual {p0}, isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1938
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 1940
    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .line 1941
    .local v1, "isSecureLock":Z
    :goto_2f
    iget-object v3, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1942
    iget-object v3, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_3e

    const/4 v2, 0x1

    :cond_3e
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1943
    iget-object v2, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1945
    :try_start_48
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_51
    .catch Landroid/content/ActivityNotFoundException; {:try_start_48 .. :try_end_51} :catch_54

    .line 1952
    .end local v1    # "isSecureLock":Z
    :goto_51
    return-void

    :cond_52
    move v1, v2

    .line 1940
    goto :goto_2f

    .line 1946
    .restart local v1    # "isSecureLock":Z
    :catch_54
    move-exception v0

    .line 1947
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 1950
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_5d
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned or not available voice command."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public launchingGamekey(Z)Z
    .registers 11
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3909
    invoke-virtual {p0}, endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3910
    const/4 v5, 0x1

    .line 3945
    :cond_8
    :goto_8
    return v5

    .line 3911
    :cond_9
    if-nez p1, :cond_8

    .line 3916
    const-string v1, "com.sec.game.sga"

    .line 3917
    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .line 3918
    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3920
    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3923
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_24
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2e} :catch_35

    move-result-object v2

    .line 3928
    :cond_2f
    :goto_2f
    if-eqz v2, :cond_53

    .line 3929
    invoke-direct {p0, v1}, startSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 3924
    :catch_35
    move-exception v0

    .line 3925
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_2f

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 3932
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_53
    :try_start_53
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_5d} :catch_6f

    move-result-object v2

    .line 3937
    :cond_5e
    :goto_5e
    if-eqz v2, :cond_8d

    .line 3938
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_6b

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    :cond_6b
    invoke-virtual {p0, v3}, downloadForSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 3933
    :catch_6f
    move-exception v0

    .line 3934
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_5e

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 3941
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8d
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_98

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    :cond_98
    invoke-virtual {p0}, downloadForSamsungApps()V

    goto/16 :goto_8
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 2901
    iget-boolean v2, p0, mCoverNoteEnabled:Z

    if-nez v2, :cond_5

    .line 2914
    :cond_4
    :goto_4
    return-void

    .line 2904
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_4

    iget-boolean v2, p0, mHasDaynotePackage:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2905
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2906
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.daynote"

    const-string v3, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2907
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2909
    :try_start_28
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_4

    .line 2910
    :catch_30
    move-exception v0

    .line 2911
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch daynote activity."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public notifyLidSwitchChangedForFolder(JZ)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2776
    invoke-virtual {p0}, performCPUBoost()V

    .line 2778
    iget-object v1, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->changeLidState(Z)V

    .line 2779
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    if-eqz p3, :cond_29

    .line 2780
    iget-object v1, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2781
    iget-object v1, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-nez v1, :cond_29

    .line 2782
    iget-object v1, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 2787
    :cond_29
    iget-object v1, p0, mFlipFolderOpenedIntent:Landroid/content/Intent;

    const-string/jumbo v2, "flipOpen"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2788
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_53

    .line 2789
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flip Folder open = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_53
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mFlipFolderOpenedIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2793
    iget-boolean v1, p0, mFolderSoundEnable:Z

    if-eqz v1, :cond_85

    .line 2794
    if-eqz p3, :cond_86

    iget-object v0, p0, mFolderOpenSound:Ljava/lang/String;

    .line 2795
    .local v0, "soundPath":Ljava/lang/String;
    :goto_64
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_80

    .line 2796
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder open/close soundPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_80
    if-eqz v0, :cond_85

    .line 2798
    invoke-direct {p0, v0}, playSound(Ljava/lang/String;)V

    .line 2801
    .end local v0    # "soundPath":Ljava/lang/String;
    :cond_85
    return-void

    .line 2794
    :cond_86
    iget-object v0, p0, mFolderCloseSound:Ljava/lang/String;

    goto :goto_64
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 19
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 2805
    if-eqz p3, :cond_38

    const/4 v3, 0x1

    .line 2806
    .local v3, "newPenState":I
    :goto_3
    const/4 v4, 0x1

    .line 2807
    .local v4, "playSound":Z
    iget-object v8, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    .line 2808
    .local v5, "screenOn":Z
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_33

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, mPenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_33
    iget v8, p0, mPenState:I

    if-ne v3, v8, :cond_3a

    .line 2865
    :cond_37
    :goto_37
    return-void

    .line 2805
    .end local v3    # "newPenState":I
    .end local v4    # "playSound":Z
    .end local v5    # "screenOn":Z
    :cond_38
    const/4 v3, 0x0

    goto :goto_3

    .line 2811
    .restart local v3    # "newPenState":I
    .restart local v4    # "playSound":Z
    .restart local v5    # "screenOn":Z
    :cond_3a
    iget v8, p0, mPenState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_40

    .line 2812
    const/4 v4, 0x0

    .line 2814
    :cond_40
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_67

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "playSound : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", screenOn : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_67
    iput v3, p0, mPenState:I

    .line 2818
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_notification"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2821
    .local v6, "sound":Ljava/lang/String;
    if-eqz v6, :cond_122

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2823
    .local v7, "soundPath":[Ljava/lang/String;
    :goto_7f
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "action_memo_on_off_screen"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_125

    const/4 v2, 0x1

    .line 2826
    .local v2, "enableBlackMemo":Z
    :goto_90
    if-eqz p3, :cond_128

    .line 2828
    if-eqz v4, :cond_a0

    if-eqz v6, :cond_a0

    :try_start_96
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_a0

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-direct {p0, v8}, playSound(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a0} :catch_17b

    .line 2831
    :cond_a0
    :goto_a0
    iget-boolean v8, p0, mPenNotifyVibrationChecked:Z

    if-eqz v8, :cond_b0

    .line 2832
    iget-object v8, p0, mVibrator:Landroid/os/Vibrator;

    const v9, 0xc36d

    const/4 v10, -0x1

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2854
    :cond_b0
    :goto_b0
    iget-object v8, p0, mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v9, "penInsert"

    move/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2855
    iget-object v8, p0, mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v9, "isScreenOn"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2856
    iget-object v8, p0, mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v9, "isKeyguardLocked"

    iget-object v10, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2858
    iget-object v9, p0, mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v10, "isBoot"

    const-wide/16 v12, 0x0

    cmp-long v8, p1, v12

    if-nez v8, :cond_176

    const/4 v8, 0x1

    :goto_dc
    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2859
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_104

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , broadcasted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_104
    iget-object v8, p0, mContext:Landroid/content/Context;

    iget-object v9, p0, mPenInsertedIntent:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2862
    if-eqz v2, :cond_37

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-eqz v8, :cond_37

    if-nez p3, :cond_37

    .line 2863
    iget-object v8, p0, mContext:Landroid/content/Context;

    iget-object v9, p0, mBlackMemoIntent:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_37

    .line 2821
    .end local v2    # "enableBlackMemo":Z
    .end local v7    # "soundPath":[Ljava/lang/String;
    :cond_122
    const/4 v7, 0x0

    goto/16 :goto_7f

    .line 2823
    .restart local v7    # "soundPath":[Ljava/lang/String;
    :cond_125
    const/4 v2, 0x0

    goto/16 :goto_90

    .line 2834
    .restart local v2    # "enableBlackMemo":Z
    :cond_128
    iget-object v8, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v8

    if-eqz v8, :cond_15c

    .line 2835
    if-nez v2, :cond_13c

    .line 2836
    iget-object v8, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x4

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 2847
    :cond_13c
    :goto_13c
    if-eqz v4, :cond_14a

    if-eqz v6, :cond_14a

    :try_start_140
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_14a

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-direct {p0, v8}, playSound(Ljava/lang/String;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_14a} :catch_179

    .line 2850
    :cond_14a
    :goto_14a
    iget-boolean v8, p0, mPenNotifyVibrationChecked:Z

    if-eqz v8, :cond_b0

    .line 2851
    iget-object v8, p0, mVibrator:Landroid/os/Vibrator;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    goto/16 :goto_b0

    .line 2839
    :cond_15c
    if-eqz v5, :cond_169

    .line 2840
    iget-object v8, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_13c

    .line 2841
    :cond_169
    if-nez v2, :cond_13c

    .line 2842
    iget-object v8, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x4

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_13c

    .line 2858
    :cond_176
    const/4 v8, 0x0

    goto/16 :goto_dc

    .line 2848
    :catch_179
    move-exception v8

    goto :goto_14a

    .line 2829
    :catch_17b
    move-exception v8

    goto/16 :goto_a0
.end method

.method public performCPUBoost()V
    .registers 10

    .prologue
    .line 2984
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2985
    :try_start_3
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_21

    .line 2986
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    .line 2987
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_21

    .line 2988
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "Device_wakeup"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2991
    :cond_21
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_7f

    if-eqz v0, :cond_2c

    .line 2993
    :try_start_25
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_72
    .catchall {:try_start_25 .. :try_end_2c} :catchall_7f

    .line 3000
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v0, p0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5d

    .line 3001
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3003
    iget-object v0, p0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_5d

    .line 3004
    iget-object v0, p0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 3005
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_5d

    array-length v0, v6

    if-lez v0, :cond_5d

    .line 3006
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5d

    .line 3007
    iget-object v0, p0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3011
    .end local v6    # "coreNumTable":[I
    :cond_5d
    monitor-exit v8
    :try_end_5e
    .catchall {:try_start_2c .. :try_end_5e} :catchall_7f

    .line 3012
    iget-object v0, p0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_71

    .line 3014
    :try_start_62
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    iget-object v0, p0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_71} :catch_82

    .line 3021
    :cond_71
    :goto_71
    return-void

    .line 2994
    :catch_72
    move-exception v7

    .line 2995
    .local v7, "e":Ljava/lang/Exception;
    :try_start_73
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 3011
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_7f
    move-exception v0

    monitor-exit v8
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_7f

    throw v0

    .line 3016
    :catch_82
    move-exception v7

    .line 3017
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_71
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 20
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 2568
    move-object/from16 v0, p0

    iget-object v11, v0, mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-nez v11, :cond_c

    .line 2569
    const/4 v11, 0x0

    .line 2713
    :goto_b
    return v11

    .line 2572
    :cond_c
    const/4 v5, 0x0

    .line 2574
    .local v5, "hapticsDisabledByPowerSavingMode":Z
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "haptic_feedback_enabled"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_15d

    const/4 v4, 0x1

    .line 2578
    .local v4, "hapticsDisabled":Z
    :goto_21
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isPowerSavingMode()Z

    move-result v11

    if-eqz v11, :cond_163

    .line 2579
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_160

    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "powersaving_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_160

    const/4 v9, 0x1

    .line 2588
    .local v9, "powerSavingModeEnabled":Z
    :goto_50
    if-eqz v9, :cond_be

    .line 2589
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_haptic_feedback"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17c

    const/4 v10, 0x1

    .line 2592
    .local v10, "turnOffHapticFeedbackEnabled":Z
    :goto_67
    if-eqz v10, :cond_be

    .line 2593
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_auto_turn_on"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17f

    const/4 v8, 0x1

    .line 2596
    .local v8, "powerSavingAutoModeEnabled":Z
    :goto_7e
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "isLowLevel"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_182

    const/4 v6, 0x1

    .line 2598
    .local v6, "isLowLevelBattery":Z
    :goto_93
    sget-boolean v11, SAFE_DEBUG:Z

    if-eqz v11, :cond_b9

    .line 2599
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isLowLevelBattery = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :cond_b9
    if-eqz v8, :cond_185

    .line 2604
    if-eqz v6, :cond_be

    .line 2605
    const/4 v5, 0x1

    .line 2615
    .end local v6    # "isLowLevelBattery":Z
    .end local v8    # "powerSavingAutoModeEnabled":Z
    .end local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_be
    :goto_be
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18b

    .line 2617
    :cond_e2
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "emergency_mode"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_188

    const/4 v3, 0x1

    .line 2625
    .local v3, "emergencyModeEnabled":Z
    :goto_f7
    if-nez p3, :cond_18e

    if-eqz v9, :cond_fd

    if-nez v5, :cond_111

    :cond_fd
    if-nez v4, :cond_111

    move-object/from16 v0, p0

    iget-boolean v11, v0, mLowPowerMode:Z

    if-nez v11, :cond_111

    if-nez v3, :cond_111

    move-object/from16 v0, p0

    iget-object v11, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v11

    if-eqz v11, :cond_18e

    .line 2629
    :cond_111
    sget-boolean v11, SAFE_DEBUG:Z

    if-eqz v11, :cond_15a

    .line 2630
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "haptic disabled by policy : hapticsDisabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mLowPowerMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, mLowPowerMode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " EmergencyModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " PowerSavingModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " TurnOffHapticFeedbackEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_15a
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 2574
    .end local v3    # "emergencyModeEnabled":Z
    .end local v4    # "hapticsDisabled":Z
    .end local v9    # "powerSavingModeEnabled":Z
    :cond_15d
    const/4 v4, 0x0

    goto/16 :goto_21

    .line 2579
    .restart local v4    # "hapticsDisabled":Z
    :cond_160
    const/4 v9, 0x0

    goto/16 :goto_50

    .line 2584
    :cond_163
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17a

    const/4 v9, 0x1

    .restart local v9    # "powerSavingModeEnabled":Z
    :goto_178
    goto/16 :goto_50

    .end local v9    # "powerSavingModeEnabled":Z
    :cond_17a
    const/4 v9, 0x0

    goto :goto_178

    .line 2589
    .restart local v9    # "powerSavingModeEnabled":Z
    :cond_17c
    const/4 v10, 0x0

    goto/16 :goto_67

    .line 2593
    .restart local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_17f
    const/4 v8, 0x0

    goto/16 :goto_7e

    .line 2596
    .restart local v8    # "powerSavingAutoModeEnabled":Z
    :cond_182
    const/4 v6, 0x0

    goto/16 :goto_93

    .line 2608
    .restart local v6    # "isLowLevelBattery":Z
    :cond_185
    const/4 v5, 0x1

    goto/16 :goto_be

    .line 2617
    .end local v6    # "isLowLevelBattery":Z
    .end local v8    # "powerSavingAutoModeEnabled":Z
    .end local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_188
    const/4 v3, 0x0

    goto/16 :goto_f7

    .line 2621
    :cond_18b
    const/4 v3, 0x0

    .restart local v3    # "emergencyModeEnabled":Z
    goto/16 :goto_f7

    .line 2639
    :cond_18e
    sget-boolean v11, SAFE_DEBUG:Z

    if-eqz v11, :cond_1af

    .line 2640
    if-eqz p1, :cond_1af

    .line 2641
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "haptic feedback for : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :cond_1af
    move-object/from16 v0, p0

    iget-object v11, v0, mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v11

    if-eqz v11, :cond_208

    .line 2646
    sparse-switch p2, :sswitch_data_240

    .line 2665
    invoke-static/range {p2 .. p2}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v11

    if-eqz v11, :cond_205

    .line 2666
    move-object/from16 v0, p0

    iget-object v11, v0, mVibrator:Landroid/os/Vibrator;

    const/4 v12, -0x1

    const/4 v13, 0x0

    sget-object v14, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    move/from16 v0, p2

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2668
    const/4 v11, 0x1

    goto/16 :goto_b

    .line 2648
    :sswitch_1d2
    move-object/from16 v0, p0

    iget-object v11, v0, mVibrator:Landroid/os/Vibrator;

    const v12, 0xc369

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2650
    const/4 v11, 0x1

    goto/16 :goto_b

    .line 2656
    :sswitch_1e3
    move-object/from16 v0, p0

    iget-object v11, v0, mVibrator:Landroid/os/Vibrator;

    const v12, 0xc36a

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2658
    const/4 v11, 0x1

    goto/16 :goto_b

    .line 2660
    :sswitch_1f4
    move-object/from16 v0, p0

    iget-object v11, v0, mVibrator:Landroid/os/Vibrator;

    const v12, 0xc36b

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2662
    const/4 v11, 0x1

    goto/16 :goto_b

    .line 2671
    :cond_205
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 2673
    :cond_208
    const/4 v2, 0x0

    .line 2674
    .local v2, "duration":I
    sparse-switch p2, :sswitch_data_25e

    .line 2709
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 2678
    :sswitch_20f
    const/16 v2, 0x32

    .line 2711
    :goto_211
    move-object/from16 v0, p0

    iget-object v11, v0, mVibrator:Landroid/os/Vibrator;

    int-to-long v12, v2

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2713
    const/4 v11, 0x1

    goto/16 :goto_b

    .line 2683
    :sswitch_21c
    const/16 v2, 0x32

    .line 2684
    goto :goto_211

    .line 2687
    :sswitch_21f
    const/16 v2, 0x64

    .line 2688
    goto :goto_211

    .line 2691
    :sswitch_222
    const/16 v2, 0x1f4

    .line 2692
    goto :goto_211

    .line 2695
    :sswitch_225
    const/16 v2, 0x5dc

    .line 2696
    goto :goto_211

    .line 2698
    :sswitch_228
    const/16 v2, 0xfa

    .line 2699
    goto :goto_211

    .line 2701
    :sswitch_22b
    const/4 v11, 0x4

    new-array v7, v11, [J

    fill-array-data v7, :array_28c

    .line 2702
    .local v7, "pattern":[J
    move-object/from16 v0, p0

    iget-object v11, v0, mVibrator:Landroid/os/Vibrator;

    const/4 v12, -0x1

    invoke-virtual {v11, v7, v12}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 2703
    const/4 v11, 0x1

    goto/16 :goto_b

    .line 2706
    .end local v7    # "pattern":[J
    :sswitch_23c
    const/16 v2, 0x32

    .line 2707
    goto :goto_211

    .line 2646
    nop

    :sswitch_data_240
    .sparse-switch
        0x0 -> :sswitch_1d2
        0x1 -> :sswitch_1e3
        0x3 -> :sswitch_1e3
        0x2710 -> :sswitch_1e3
        0x2711 -> :sswitch_1e3
        0xc35a -> :sswitch_1f4
        0xc35e -> :sswitch_1e3
    .end sparse-switch

    .line 2674
    :sswitch_data_25e
    .sparse-switch
        0x0 -> :sswitch_20f
        0x1 -> :sswitch_20f
        0x3 -> :sswitch_20f
        0xc359 -> :sswitch_21c
        0xc35a -> :sswitch_21f
        0xc35c -> :sswitch_222
        0xc35d -> :sswitch_225
        0xc35e -> :sswitch_23c
        0xc360 -> :sswitch_228
        0xc361 -> :sswitch_22b
        0xc362 -> :sswitch_225
    .end sparse-switch

    .line 2701
    :array_28c
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const v3, 0xc35e

    const/4 v2, 0x0

    .line 2505
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2549
    :cond_22
    :goto_22
    return-void

    .line 2511
    :cond_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_86

    goto :goto_22

    .line 2534
    :sswitch_2b
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    iget-object v0, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    .line 2536
    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2537
    invoke-virtual {p0, v4, v3, v2}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2539
    :cond_46
    invoke-direct {p0}, playSoundEffect()V

    goto :goto_22

    .line 2516
    :sswitch_4a
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, isHMTSupportAndConnected()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-nez v0, :cond_22

    .line 2519
    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2520
    invoke-virtual {p0, v4, v3, v2}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2522
    :cond_67
    invoke-direct {p0}, playSoundEffect()V

    goto :goto_22

    .line 2526
    :sswitch_6b
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2527
    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2528
    invoke-virtual {p0, v4, v3, v2}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2530
    :cond_7e
    invoke-direct {p0}, playSoundEffect()V

    goto :goto_22

    .line 2546
    :sswitch_82
    invoke-direct {p0}, playSoundEffect()V

    goto :goto_22

    .line 2511
    :sswitch_data_86
    .sparse-switch
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_4a
        0x1b -> :sswitch_82
        0x52 -> :sswitch_4a
        0x54 -> :sswitch_6b
        0xbb -> :sswitch_4a
        0xcf -> :sswitch_82
        0x3e9 -> :sswitch_4a
        0x430 -> :sswitch_82
        0x431 -> :sswitch_82
    .end sparse-switch
.end method

.method public processTorchlight(IZZ)V
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "interactive"    # Z

    .prologue
    .line 3122
    iget-boolean v0, p0, mTorchlightEnabled:Z

    if-eqz v0, :cond_1e

    if-nez p3, :cond_1e

    .line 3123
    const/16 v0, 0x18

    if-ne p1, v0, :cond_27

    .line 3124
    if-eqz p2, :cond_1f

    .line 3125
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3126
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3138
    :cond_1e
    :goto_1e
    return-void

    .line 3128
    :cond_1f
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 3131
    :cond_27
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3132
    iget-boolean v0, p0, mTorchlightOn:Z

    if-eqz v0, :cond_1e

    .line 3133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, TorchModeFlashSet(I)V

    .line 3134
    iget-object v0, p0, mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1e
.end method

.method public sendBroadcastForAccessibility()V
    .registers 5

    .prologue
    .line 2036
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2039
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2041
    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .registers 4

    .prologue
    .line 2076
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    invoke-virtual {p0}, isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2079
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2080
    .local v0, "safetyMessage":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2081
    const-string v1, "SamsungWindowManager"

    const-string v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    .end local v0    # "safetyMessage":Landroid/content/Intent;
    :cond_23
    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3592
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_54

    .line 3594
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3596
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3597
    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3598
    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3599
    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3600
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3601
    const/4 v1, 0x1

    .line 3603
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_53
    return v1

    :cond_54
    const/4 v1, 0x0

    goto :goto_53
.end method

.method public setAppLockedStatus()V
    .registers 4

    .prologue
    .line 4449
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4451
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_f

    .line 4452
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearAppLockedUnLockedApp()V

    .line 4454
    :cond_f
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 3263
    sput p1, mCurrentUser:I

    .line 3264
    return-void
.end method

.method public setFingerPrintPending()V
    .registers 2

    .prologue
    .line 3106
    const/4 v0, 0x0

    iput-boolean v0, p0, mFingerPrintPending:Z

    .line 3107
    return-void
.end method

.method public setMultiPhoneWindowManager(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 697
    iput-object p1, p0, mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .line 698
    return-void
.end method

.method public setProKioskReEnableVolumeUpKey(Z)V
    .registers 2
    .param p1, "proKioskReEnableVolumeUpKey"    # Z

    .prologue
    .line 3412
    iput-boolean p1, p0, mProKioskReEnableVolumeUpKey:Z

    .line 3413
    return-void
.end method

.method public setRotationLw(I)V
    .registers 9
    .param p1, "rotation"    # I

    .prologue
    .line 2957
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_28

    .line 2961
    invoke-direct {p0, p1}, updateWacomOffset(I)V

    .line 2966
    :cond_28
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2967
    :try_start_2b
    iget-object v0, p0, mRotationBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_45

    .line 2968
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, mRotationBooster:Landroid/os/DVFSHelper;

    .line 2970
    iget-object v0, p0, mRotationBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2972
    :cond_45
    monitor-exit v6
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_57

    .line 2973
    iget-object v0, p0, mRotationBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2974
    iget-object v0, p0, mRotationBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2976
    return-void

    .line 2972
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v6
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public showBottomKeyPanel(Z)V
    .registers 7
    .param p1, "show"    # Z

    .prologue
    .line 3562
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3565
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_22

    const-string v3, "Show"

    :goto_18
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3567
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3572
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_21
    return-void

    .line 3565
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_22
    const-string v3, "Hide"
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_18

    .line 3568
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_25
    move-exception v1

    .line 3569
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception showBottomKeyPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public showRecentApps(Z)Z
    .registers 3
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 3232
    invoke-virtual {p0}, isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3233
    const/4 v0, 0x1

    .line 3235
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public startAodService(I)Z
    .registers 6
    .param p1, "aodStartState"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 4484
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_mode"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_night_mode"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2b

    .line 4486
    :cond_1e
    iput p1, p0, mAodStartState:I

    .line 4487
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4515
    const/4 v0, 0x1

    .line 4517
    :cond_2b
    return v0
.end method

.method public stopEasyOneHandervice(I)V
    .registers 4
    .param p1, "stopReason"    # I

    .prologue
    .line 3500
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_12

    .line 3501
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3515
    :cond_12
    return-void
.end method

.method public systemBooted()V
    .registers 5

    .prologue
    .line 724
    iget-object v2, p0, mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_1e

    .line 726
    :try_start_4
    const-string/jumbo v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 728
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_1e

    .line 729
    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, mBlockedHwKeys:Ljava/util/Map;

    .line 730
    const-string v2, "SamsungWindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_23

    .line 739
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, startAodService(I)Z

    .line 741
    return-void

    .line 732
    :catch_23
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .registers 4
    .param p1, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 702
    iput-object p1, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 703
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, mHasFakeMenuKeyRecent:Z

    .line 704
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, mHasFakeMenuKeyBack:Z

    .line 707
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, mHasPermanentMenuKey:Z

    .line 708
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportManualScreenPinning:Z

    .line 709
    iget-object v0, p0, mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/CombinationKeyManager;->onSystemReady()V

    .line 711
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 712
    iget-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 720
    return-void
.end method

.method public takeScreenshot(I)V
    .registers 20
    .param p1, "event"    # I

    .prologue
    .line 2336
    invoke-direct/range {p0 .. p0}, isScreenCaptureEnabled()Z

    move-result v13

    if-nez v13, :cond_12

    .line 2337
    sget-boolean v13, SAFE_DEBUG:Z

    if-eqz v13, :cond_11

    const-string v13, "SamsungWindowManager"

    const-string v14, "can not takescreenshot"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_11
    :goto_11
    return-void

    .line 2341
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, mScreenshotLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2342
    :try_start_17
    sget-boolean v13, SAFE_DEBUG:Z

    if-eqz v13, :cond_5a

    .line 2343
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "takeScreenshot : event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mPerformEditAfterScreenCapture = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, mPerformEditAfterScreenCapture:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mServiceConnectionMap.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, mServiceConnectionMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_5a
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2350
    .local v4, "curr":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .line 2351
    .local v12, "versionInfo":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string/jumbo v15, "version"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e7

    .line 2352
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string/jumbo v15, "persona"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 2353
    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v6

    .line 2355
    .local v6, "currUser":I
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "screenshot: current active user is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string/jumbo v15, "user"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 2358
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 2359
    .local v5, "currInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_b7

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 2360
    new-instance v4, Landroid/os/UserHandle;

    .end local v4    # "curr":Landroid/os/UserHandle;
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2363
    .restart local v4    # "curr":Landroid/os/UserHandle;
    :cond_b7
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 2364
    .local v8, "isKioskContainer":Z
    if-eqz v8, :cond_e7

    if-nez v6, :cond_e7

    .line 2365
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const v16, 0x1040b37

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 2366
    monitor-exit v14

    goto/16 :goto_11

    .line 2394
    .end local v4    # "curr":Landroid/os/UserHandle;
    .end local v5    # "currInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "currUser":I
    .end local v8    # "isKioskContainer":Z
    .end local v9    # "pm":Landroid/os/PersonaManager;
    .end local v11    # "um":Landroid/os/UserManager;
    .end local v12    # "versionInfo":Landroid/os/Bundle;
    :catchall_e4
    move-exception v13

    monitor-exit v14
    :try_end_e6
    .catchall {:try_start_17 .. :try_end_e6} :catchall_e4

    throw v13

    .line 2370
    .restart local v4    # "curr":Landroid/os/UserHandle;
    .restart local v12    # "versionInfo":Landroid/os/Bundle;
    :cond_e7
    :try_start_e7
    move-object/from16 v0, p0

    iget-boolean v13, v0, mPerformEditAfterScreenCapture:Z

    if-eqz v13, :cond_10e

    move-object/from16 v0, p0

    iget-boolean v13, v0, mHasFlashAnnotateComponent:Z

    if-eqz v13, :cond_10e

    .line 2371
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2372
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2373
    move-object/from16 v0, p0

    iget-object v13, v0, mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2374
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13, v7, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2394
    :cond_10b
    :goto_10b
    monitor-exit v14

    goto/16 :goto_11

    .line 2376
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_10e
    move-object/from16 v0, p0

    iget-object v13, v0, mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    const/4 v15, 0x3

    if-lt v13, v15, :cond_11c

    .line 2377
    monitor-exit v14

    goto/16 :goto_11

    .line 2379
    :cond_11c
    new-instance v2, Landroid/content/ComponentName;

    const-string v13, "com.android.systemui"

    const-string v15, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v2, v13, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    .local v2, "cn":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2382
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2383
    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    .line 2385
    .local v3, "conn":Landroid/content/ServiceConnection;
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " screenshot is taken for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v3, v15, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v13

    if-eqz v13, :cond_10b

    .line 2389
    new-instance v10, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 2390
    .local v10, "runnable":Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    move-object/from16 v0, p0

    iget-object v13, v0, mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    move-object/from16 v0, p0

    iget-object v13, v0, mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v13, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_176
    .catchall {:try_start_e7 .. :try_end_176} :catchall_e4

    goto :goto_10b
.end method

.method public updateBottomKeyPanelState(ZZ)V
    .registers 8
    .param p1, "init"    # Z
    .param p2, "maximize"    # Z

    .prologue
    .line 3539
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3541
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3543
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_22

    .line 3544
    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3552
    :goto_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3557
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_21
    return-void

    .line 3546
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_22
    if-eqz p2, :cond_34

    .line 3547
    const-string v3, "Maximize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_1c

    .line 3553
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2b
    move-exception v1

    .line 3554
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasyBottomPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 3549
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_34
    :try_start_34
    const-string v3, "Minimize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_2b

    goto :goto_1c
.end method

.method public updateEasyOneHandState(ZZZ)V
    .registers 11
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z
    .param p3, "isHomeKey"    # Z

    .prologue
    .line 3470
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    .line 3471
    .local v3, "isCoverOpen":Z
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEasyOneHandState() isLeftHand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCoverOpen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isHomeKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    if-nez v3, :cond_40

    .line 3494
    :goto_3f
    return-void

    .line 3478
    :cond_40
    :try_start_40
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.easyonehand"

    const-string v5, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3482
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_6f

    .line 3483
    const-string v4, "StartByHomeKey"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3484
    const-string v4, "LeftHandMode"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3489
    :goto_60
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_65} :catch_66

    goto :goto_3f

    .line 3490
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_66
    move-exception v1

    .line 3491
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    const-string v5, "Exception updateEasyOneHandService: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 3486
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_6f
    :try_start_6f
    const-string v4, "ForceHide"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_75} :catch_66

    goto :goto_60
.end method

.method public updateSettings()V
    .registers 31

    .prologue
    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 879
    .local v22, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 881
    :try_start_11
    const-string/jumbo v25, "double_tab_launch_component"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 882
    .local v5, "componentNameOfDoubleTapOnHomeCommandIntent":Ljava/lang/String;
    if-eqz v5, :cond_7f

    .line 883
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 884
    .local v23, "titles":[Ljava/lang/String;
    if-eqz v23, :cond_7f

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_7f

    .line 885
    new-instance v20, Landroid/content/ComponentName;

    const/16 v25, 0x0

    aget-object v25, v23, v25

    const/16 v27, 0x1

    aget-object v27, v23, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .local v20, "newComponentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7f

    .line 888
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAvailableDoublTapOnHomeCommand:Z

    .line 895
    .end local v20    # "newComponentName":Landroid/content/ComponentName;
    .end local v23    # "titles":[Ljava/lang/String;
    :cond_7f
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, mDoubleTapHomeUser:I

    .line 896
    const-string/jumbo v25, "double_tab_launch"

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 897
    .local v6, "doubleTapOnHomeBehavior":I
    const-string v25, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "updateSettings(). settings changed. doubleTapOnHomeBehavior : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". mDoubleTapOnHomeBehavior : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". mDoubleTapHomeUser "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, mDoubleTapHomeUser:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    iget v0, v0, mDoubleTapOnHomeBehavior:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v6, :cond_e5

    .line 901
    move-object/from16 v0, p0

    iput v6, v0, mDoubleTapOnHomeBehavior:I

    .line 906
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v27, "direct_access"

    const/16 v28, 0x0

    const/16 v29, -0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    .line 908
    .local v24, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, mTripleTapOnHomeBehavior:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v24

    if-eq v0, v1, :cond_114

    .line 909
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mTripleTapOnHomeBehavior:I

    .line 914
    :cond_114
    const-string/jumbo v25, "lcd_curtain"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_3f0

    const-string v25, "accessibility_enabled"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_3f0

    const/16 v25, 0x1

    :goto_14b
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPowerDoubleBehavior:Z

    .line 919
    const-string/jumbo v25, "edit_after_screen_capture"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_3f4

    const/16 v21, 0x1

    .line 921
    .local v21, "performEditAfterScreenCapture":Z
    :goto_168
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPerformEditAfterScreenCapture:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v21

    if-eq v0, v1, :cond_17a

    .line 922
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPerformEditAfterScreenCapture:Z

    .line 927
    :cond_17a
    const-string/jumbo v25, "send_emergency_message"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_3f8

    const/4 v14, 0x1

    .line 929
    .local v14, "isSafetyAssuranceEnabled":Z
    :goto_190
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSafetyAssuranceEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v14, :cond_19e

    .line 930
    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsSafetyAssuranceEnabled:Z

    .line 935
    :cond_19e
    const-string v25, "access_control_use"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_3fb

    const/16 v17, 0x1

    .line 937
    .local v17, "isUseAccessControl":Z
    :goto_1b4
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsUseAccessControl:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v17

    if-eq v0, v1, :cond_1c6

    .line 938
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsUseAccessControl:Z

    .line 940
    :cond_1c6
    const-string v25, "access_control_enabled"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_3ff

    const/4 v11, 0x1

    .line 942
    .local v11, "isEnabledAccessControl":Z
    :goto_1db
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEnabledAccessControl:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v11, :cond_1e9

    .line 943
    move-object/from16 v0, p0

    iput-boolean v11, v0, mIsEnabledAccessControl:Z

    .line 948
    :cond_1e9
    const-string/jumbo v25, "kids_home_mode"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_402

    const/4 v12, 0x1

    .line 950
    .local v12, "isKidsMode":Z
    :goto_1ff
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsKidsModeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v12, :cond_20d

    .line 951
    move-object/from16 v0, p0

    iput-boolean v12, v0, mIsKidsModeEnabled:Z

    .line 956
    :cond_20d
    const-string/jumbo v25, "easy_mode_switch"

    const/16 v27, 0x1

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-nez v25, :cond_405

    const/4 v10, 0x1

    .line 958
    .local v10, "isEasyMode":Z
    :goto_223
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEasyModeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v10, :cond_25f

    .line 959
    move-object/from16 v0, p0

    iput-boolean v10, v0, mIsEasyModeEnabled:Z

    .line 961
    const-string/jumbo v25, "mobile_keyboard"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_408

    const/16 v19, 0x1

    .line 962
    .local v19, "mobileKeyboardEnabled":Z
    :goto_248
    if-eqz v19, :cond_25f

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    if-nez v19, :cond_40c

    const/16 v25, 0x1

    :goto_256
    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyCoverSwitchStateChanged(JZ)V

    .line 970
    .end local v19    # "mobileKeyboardEnabled":Z
    :cond_25f
    const-string/jumbo v25, "desk_home_screen_display"

    const/16 v27, 0x1

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_410

    const/4 v9, 0x1

    .line 972
    .local v9, "isDockHomeEnabled":Z
    :goto_275
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDockHomeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v9, :cond_283

    .line 973
    move-object/from16 v0, p0

    iput-boolean v9, v0, mIsDockHomeEnabled:Z

    .line 978
    :cond_283
    const-string/jumbo v25, "torchlight_enable"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_413

    const/16 v16, 0x1

    .line 980
    .local v16, "isTorchlightEnabled":Z
    :goto_29a
    move-object/from16 v0, p0

    iget-boolean v0, v0, mTorchlightEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_2ac

    .line 981
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, mTorchlightEnabled:Z

    .line 986
    :cond_2ac
    const-string v25, "car_mode_on"

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_417

    const/4 v7, 0x1

    .line 988
    .local v7, "isCheckDrivingMode":Z
    :goto_2bd
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsCheckDrivingMode:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v7, :cond_2cb

    .line 989
    move-object/from16 v0, p0

    iput-boolean v7, v0, mIsCheckDrivingMode:Z

    .line 992
    :cond_2cb
    const-string v25, "car_mode_blocking_system_key"

    const/16 v27, 0x0

    const/16 v28, -0x3

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_41a

    const/4 v4, 0x1

    .line 994
    .local v4, "blockKeyForDrivingMode":Z
    :goto_2e0
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBlockKeyForDrivingMode:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v4, :cond_2ee

    .line 995
    move-object/from16 v0, p0

    iput-boolean v4, v0, mBlockKeyForDrivingMode:Z

    .line 1000
    :cond_2ee
    const-string/jumbo v25, "sidesync_source_presentation"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_41d

    const/4 v15, 0x1

    .line 1002
    .local v15, "isSideSyncSourcePresentationActived":Z
    :goto_304
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSideSyncSourcePresentationActived:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v15, :cond_340

    .line 1003
    move-object/from16 v0, p0

    iput-boolean v15, v0, mSideSyncSourcePresentationActived:Z

    .line 1005
    const-string/jumbo v25, "mobile_keyboard"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_420

    const/16 v19, 0x1

    .line 1006
    .restart local v19    # "mobileKeyboardEnabled":Z
    :goto_329
    if-eqz v19, :cond_340

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    if-nez v19, :cond_424

    const/16 v25, 0x1

    :goto_337
    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyCoverSwitchStateChanged(JZ)V

    .line 1014
    .end local v19    # "mobileKeyboardEnabled":Z
    :cond_340
    const-string/jumbo v25, "pen_attach_detach_vibration"

    const/16 v27, 0x1

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_428

    const/4 v13, 0x1

    .line 1016
    .local v13, "isPenNotifyVibrationChecked":Z
    :goto_356
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPenNotifyVibrationChecked:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v13, :cond_364

    .line 1017
    move-object/from16 v0, p0

    iput-boolean v13, v0, mPenNotifyVibrationChecked:Z

    .line 1022
    :cond_364
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasDaynotePackage:Z

    move/from16 v25, v0

    if-eqz v25, :cond_38f

    .line 1023
    const-string v25, "cover_note"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_42b

    const/4 v8, 0x1

    .line 1026
    .local v8, "isCoverNote":Z
    :goto_381
    move-object/from16 v0, p0

    iget-boolean v0, v0, mCoverNoteEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v8, :cond_38f

    .line 1027
    move-object/from16 v0, p0

    iput-boolean v8, v0, mCoverNoteEnabled:Z

    .line 1033
    .end local v8    # "isCoverNote":Z
    :cond_38f
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v25

    if-eqz v25, :cond_3ee

    .line 1034
    const-string/jumbo v25, "folder_sounds_enabled"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_42e

    const/16 v18, 0x1

    .line 1036
    .local v18, "mFolderSound":Z
    :goto_3b2
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFolderSoundEnable:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v18

    if-eq v0, v1, :cond_3c4

    .line 1037
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFolderSoundEnable:Z

    .line 1039
    :cond_3c4
    const-string/jumbo v25, "folder_open_sound"

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mFolderOpenSound:Ljava/lang/String;

    .line 1041
    const-string/jumbo v25, "folder_close_sound"

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mFolderCloseSound:Ljava/lang/String;

    .line 1045
    .end local v18    # "mFolderSound":Z
    :cond_3ee
    monitor-exit v26

    .line 1046
    return-void

    .line 914
    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v7    # "isCheckDrivingMode":Z
    .end local v9    # "isDockHomeEnabled":Z
    .end local v10    # "isEasyMode":Z
    .end local v11    # "isEnabledAccessControl":Z
    .end local v12    # "isKidsMode":Z
    .end local v13    # "isPenNotifyVibrationChecked":Z
    .end local v14    # "isSafetyAssuranceEnabled":Z
    .end local v15    # "isSideSyncSourcePresentationActived":Z
    .end local v16    # "isTorchlightEnabled":Z
    .end local v17    # "isUseAccessControl":Z
    .end local v21    # "performEditAfterScreenCapture":Z
    :cond_3f0
    const/16 v25, 0x0

    goto/16 :goto_14b

    .line 919
    :cond_3f4
    const/16 v21, 0x0

    goto/16 :goto_168

    .line 927
    .restart local v21    # "performEditAfterScreenCapture":Z
    :cond_3f8
    const/4 v14, 0x0

    goto/16 :goto_190

    .line 935
    .restart local v14    # "isSafetyAssuranceEnabled":Z
    :cond_3fb
    const/16 v17, 0x0

    goto/16 :goto_1b4

    .line 940
    .restart local v17    # "isUseAccessControl":Z
    :cond_3ff
    const/4 v11, 0x0

    goto/16 :goto_1db

    .line 948
    .restart local v11    # "isEnabledAccessControl":Z
    :cond_402
    const/4 v12, 0x0

    goto/16 :goto_1ff

    .line 956
    .restart local v12    # "isKidsMode":Z
    :cond_405
    const/4 v10, 0x0

    goto/16 :goto_223

    .line 961
    .restart local v10    # "isEasyMode":Z
    :cond_408
    const/16 v19, 0x0

    goto/16 :goto_248

    .line 963
    .restart local v19    # "mobileKeyboardEnabled":Z
    :cond_40c
    const/16 v25, 0x0

    goto/16 :goto_256

    .line 970
    .end local v19    # "mobileKeyboardEnabled":Z
    :cond_410
    const/4 v9, 0x0

    goto/16 :goto_275

    .line 978
    .restart local v9    # "isDockHomeEnabled":Z
    :cond_413
    const/16 v16, 0x0

    goto/16 :goto_29a

    .line 986
    .restart local v16    # "isTorchlightEnabled":Z
    :cond_417
    const/4 v7, 0x0

    goto/16 :goto_2bd

    .line 992
    .restart local v7    # "isCheckDrivingMode":Z
    :cond_41a
    const/4 v4, 0x0

    goto/16 :goto_2e0

    .line 1000
    .restart local v4    # "blockKeyForDrivingMode":Z
    :cond_41d
    const/4 v15, 0x0

    goto/16 :goto_304

    .line 1005
    .restart local v15    # "isSideSyncSourcePresentationActived":Z
    :cond_420
    const/16 v19, 0x0

    goto/16 :goto_329

    .line 1007
    .restart local v19    # "mobileKeyboardEnabled":Z
    :cond_424
    const/16 v25, 0x0

    goto/16 :goto_337

    .line 1014
    .end local v19    # "mobileKeyboardEnabled":Z
    :cond_428
    const/4 v13, 0x0

    goto/16 :goto_356

    .line 1023
    .restart local v13    # "isPenNotifyVibrationChecked":Z
    :cond_42b
    const/4 v8, 0x0

    goto/16 :goto_381

    .line 1034
    :cond_42e
    const/16 v18, 0x0

    goto :goto_3b2

    .line 1045
    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v5    # "componentNameOfDoubleTapOnHomeCommandIntent":Ljava/lang/String;
    .end local v6    # "doubleTapOnHomeBehavior":I
    .end local v7    # "isCheckDrivingMode":Z
    .end local v9    # "isDockHomeEnabled":Z
    .end local v10    # "isEasyMode":Z
    .end local v11    # "isEnabledAccessControl":Z
    .end local v12    # "isKidsMode":Z
    .end local v13    # "isPenNotifyVibrationChecked":Z
    .end local v14    # "isSafetyAssuranceEnabled":Z
    .end local v15    # "isSideSyncSourcePresentationActived":Z
    .end local v16    # "isTorchlightEnabled":Z
    .end local v17    # "isUseAccessControl":Z
    .end local v21    # "performEditAfterScreenCapture":Z
    .end local v24    # "tripleTapOnHomeBehavior":I
    :catchall_431
    move-exception v25

    monitor-exit v26
    :try_end_433
    .catchall {:try_start_11 .. :try_end_433} :catchall_431

    throw v25
.end method

.method public updateSideKeyPanelState(Z)V
    .registers 7
    .param p1, "isShow"    # Z

    .prologue
    .line 3520
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easysidepanel"

    const-string v4, "com.sec.android.easysidepanel.EasySidePanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYSIDEPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3524
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_22

    .line 3525
    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3529
    :goto_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3534
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_21
    return-void

    .line 3527
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_22
    const-string v3, "ForceHide"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_1c

    .line 3530
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_29
    move-exception v1

    .line 3531
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasySidePanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public updateWakeupPrevention()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 4542
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4543
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4544
    :try_start_a
    const-string/jumbo v3, "wakeup_prevention"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v0, 0x1

    .line 4545
    .local v0, "isWakeupPrevention":Z
    :cond_16
    iget-boolean v3, p0, mIsWakeupPrevention:Z

    if-eq v3, v0, :cond_37

    .line 4546
    iput-boolean v0, p0, mIsWakeupPrevention:Z

    .line 4547
    const-string v3, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWakeupPrevention = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, mIsWakeupPrevention:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    :cond_37
    const-string/jumbo v3, "wakeup_prevention_packages"

    const/4 v5, -0x2

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 4550
    .local v2, "wakeupPreventionPackages":Ljava/lang/String;
    invoke-direct {p0, v2}, updateWakeupPreventionPackages(Ljava/lang/String;)V

    .line 4551
    monitor-exit v4

    .line 4552
    return-void

    .line 4551
    .end local v0    # "isWakeupPrevention":Z
    .end local v2    # "wakeupPreventionPackages":Ljava/lang/String;
    :catchall_44
    move-exception v3

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_44

    throw v3
.end method
