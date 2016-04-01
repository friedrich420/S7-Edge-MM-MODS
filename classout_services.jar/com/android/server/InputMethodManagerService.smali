.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;,
        Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;,
        Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;,
        Lcom/android/server/InputMethodManagerService$CarModeReceiver;,
        Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;,
        Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;,
        Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$KeyboardDetect;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$SessionState;
    }
.end annotation


# static fields
.field private static final ACTION_KMS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.KMS_KEYBOARD"

.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final ACTION_PSS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.PSS_KEYBOARD"

.field private static final ACTION_SUBTYPE_EVENT:Ljava/lang/String; = "com.sec.android.inputmethod.Subtype"

.field private static final ACTION_VZW_RESET_SETTING:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field private static final CHINESE_KEYPAD:Ljava/lang/String; = "com.samsung.inputmethod/.SamsungIME"

.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field static final DEBUG:Z = false

.field static final DEBUG_RESTORE:Z = false

.field private static final EXTRA_KMS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_PSS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_SIP_SUBTYPE:Ljava/lang/String; = "SamsungIME.Subtype"

.field public static final IMS_MASK_HW_KEYBOARD:I = 0xf

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field private static final JAPANESE_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_BIND_METHOD:I = 0xbc2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_MINIMIZE_SOFT_INPUT:I = 0x400

.field static final MSG_RESTART_INPUT:I = 0x7da

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_SPELL_CHECKER:I = 0xbf4

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_AGAIN_IM_PICKER:I = 0x3ff

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field static final MSG_UNBIND_METHOD:I = 0xbb8

.field static final MSG_UNDO_MINIMIZE_SOFT_INPUT:I = 0x401

.field static final MSG_UPDATE_FLOATING_STATE:I = 0x3fe

.field static final MSG_UPDATE_WACOM_STATE:I = 0x3fd

.field static final NOTI_TAG:Ljava/lang/String; = "InputMethodManagerService_Noti"

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L

.field public static final UNIVERSAL_SWITCH_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static keyboardState:I

.field private static mAccessControlEnable:Z

.field private static mAccessControlKeyboardBlockEnable:Z

.field private static mBTKeyboardCount:I

.field private static mDefaultSIP:Ljava/lang/String;

.field private static mDeviceDefaultThemeType:Ljava/lang/String;

.field private static mEnabledKCMFeatureForHWKeyboard:Z

.field private static mFloatingForMultiWindow:Z

.field private static mUSBKeyboardCount:I

.field private static mbWACOMPen:Z

.field private static prevAutoMode:I


# instance fields
.field private final DEBUG_HARDWARE_KEYBOARD:Z

.field private final HID_BT:I

.field private final KEYBOARD_BT:I

.field private final KEYBOARD_DOCK:I

.field private final KEYBOARD_EXTERNAL:I

.field private final KEYBOARD_KMS:I

.field private final KEYBOARD_PSS:I

.field private final KEYBOARD_UNDEFINED:I

.field private final KEYBOARD_USB:I

.field private curImeId_for_menu:Ljava/lang/String;

.field private isKnoxKeypadUsed:Z

.field kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

.field private knoxV2Enabled:Z

.field private mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

.field private mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentFocusedUserId:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field private mForcedtoSecureKeypad:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private final mImeSelectedOnBoot:Z

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInputShown:Z

.field final mIsFolderModel:Z

.field mIsInteractive:Z

.field private mIsPersona:Z

.field mIsScreenPinnedState:Z

.field private mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocale:Ljava/util/Locale;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

.field public mMobilekeyboardCheckedItem:I

.field private mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private mMobilekeyboardSubtypeIds:[I

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field private mNeedToExplicitallyCall:Z

.field final mNoBinding:Lcom/android/internal/view/InputBindResult;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPrevInputMethodForCarMode:Ljava/lang/String;

.field private mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

.field final mRes:Landroid/content/res/Resources;

.field private mSecureKeypadEnabled:Z

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field mSystemReady:Z

.field private mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private notificationcontrol_lock:Z

.field private notificationcontrol_release:Z

.field private switchingFromVoice:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 278
    const-string/jumbo v0, "none"

    sput-object v0, COUNTRY_CODE:Ljava/lang/String;

    .line 328
    sput v1, mBTKeyboardCount:I

    .line 329
    sput v1, mUSBKeyboardCount:I

    .line 335
    const/4 v0, 0x1

    sput-boolean v0, mEnabledKCMFeatureForHWKeyboard:Z

    .line 394
    sput-boolean v1, mbWACOMPen:Z

    .line 397
    sput-boolean v1, mAccessControlEnable:Z

    .line 398
    sput-boolean v1, mAccessControlKeyboardBlockEnable:Z

    .line 429
    sput-boolean v1, mFloatingForMultiWindow:Z

    .line 432
    const/4 v0, 0x0

    sput-object v0, mDeviceDefaultThemeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, DEBUG_HARDWARE_KEYBOARD:Z

    .line 298
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    iput-object v0, p0, mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, mPrevInputMethodForCarMode:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput v0, p0, KEYBOARD_UNDEFINED:I

    .line 320
    const/4 v0, 0x1

    iput v0, p0, KEYBOARD_EXTERNAL:I

    .line 321
    const/4 v0, 0x1

    iput v0, p0, KEYBOARD_DOCK:I

    .line 322
    const/4 v0, 0x2

    iput v0, p0, KEYBOARD_BT:I

    .line 323
    const/4 v0, 0x4

    iput v0, p0, KEYBOARD_USB:I

    .line 324
    const/16 v0, 0x8

    iput v0, p0, HID_BT:I

    .line 325
    const/16 v0, 0x10

    iput v0, p0, KEYBOARD_PSS:I

    .line 326
    const/16 v0, 0x20

    iput v0, p0, KEYBOARD_KMS:I

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMethodList:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mMethodMap:Ljava/util/HashMap;

    .line 355
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 360
    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, mVisibleConnection:Landroid/content/ServiceConnection;

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, mVisibleBound:Z

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPersona:Z

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, knoxV2Enabled:Z

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 390
    const/4 v0, 0x0

    iput v0, p0, mCurrentFocusedUserId:I

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 406
    const/4 v0, 0x0

    iput v0, p0, mMobilekeyboardCheckedItem:I

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mClients:Ljava/util/HashMap;

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsInteractive:Z

    .line 716
    new-instance v0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    .line 718
    const/4 v0, 0x0

    iput v0, p0, mCurUserActionNotificationSequenceNumber:I

    .line 720
    const/4 v0, 0x0

    iput v0, p0, mBackDisposition:I

    .line 753
    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, mNeedToExplicitallyCall:Z

    .line 6358
    new-instance v0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    .line 6437
    new-instance v0, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    .line 6483
    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    .line 6501
    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    .line 1425
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1426
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, mRes:Landroid/content/res/Resources;

    .line 1428
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 1430
    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    .line 1431
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, mIWindowManager:Landroid/view/IWindowManager;

    .line 1433
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1439
    iput-object p2, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1440
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1441
    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V

    iput-object v0, p0, mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    .line 1442
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.input_methods"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mHasFeature:Z

    .line 1445
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsFolderModel:Z

    .line 1452
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080493

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1468
    iget-object v0, p0, mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1469
    iget-object v0, p0, mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1471
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1474
    const/4 v0, 0x0

    iput-boolean v0, p0, mShowOngoingImeSwitcherForPhones:Z

    .line 1476
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1477
    .local v6, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1478
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1479
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1481
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1486
    const/4 v0, 0x0

    iput-boolean v0, p0, mNotificationShown:Z

    .line 1487
    const/4 v5, 0x0

    .line 1490
    .local v5, "userId":I
    const/4 v0, 0x0

    iput-boolean v0, p0, mForcedtoSecureKeypad:Z

    .line 1491
    const/4 v0, 0x0

    iput-boolean v0, p0, mSecureKeypadEnabled:Z

    .line 1492
    const/4 v0, 0x0

    iput-object v0, p0, curImeId_for_menu:Ljava/lang/String;

    .line 1493
    const/4 v0, 0x0

    iput-boolean v0, p0, switchingFromVoice:Z

    .line 1494
    const/4 v0, 0x0

    iput-boolean v0, p0, isKnoxKeypadUsed:Z

    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p0, notificationcontrol_lock:Z

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, notificationcontrol_release:Z

    .line 1498
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .line 1499
    .local v12, "versionInfo":Landroid/os/Bundle;
    if-eqz v12, :cond_1b5

    const-string v0, "2.0"

    const-string/jumbo v1, "version"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 1500
    const/4 v0, 0x1

    iput-boolean v0, p0, knoxV2Enabled:Z

    .line 1505
    :cond_1b5
    :try_start_1b5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1533
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_1cb
    .catch Landroid/os/RemoteException; {:try_start_1b5 .. :try_end_1cb} :catch_291

    .line 1537
    :goto_1cb
    iget-object v0, p0, mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1541
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 1543
    const/4 v0, 0x0

    sput v0, keyboardState:I

    .line 1545
    invoke-virtual {p0}, registerSamsungAdditionalReceviers()V

    .line 1550
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, mRes:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, mMethodList:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    iput-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1555
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    .line 1557
    .local v11, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v0, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManagerInternal;->setImePackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 1584
    invoke-virtual {p0}, updateCurrentProfileIds()V

    .line 1585
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1586
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1587
    :try_start_212
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, p0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1589
    monitor-exit v1
    :try_end_21b
    .catchall {:try_start_212 .. :try_end_21b} :catchall_29b

    .line 1592
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 1596
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29e

    const/4 v0, 0x1

    :goto_228
    iput-boolean v0, p0, mImeSelectedOnBoot:Z

    .line 1598
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1599
    :try_start_22d
    iget-object v2, p0, mMethodList:Ljava/util/ArrayList;

    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    iget-boolean v0, p0, mImeSelectedOnBoot:Z

    if-nez v0, :cond_2a0

    const/4 v0, 0x1

    :goto_236
    invoke-virtual {p0, v2, v3, v0}, buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1601
    monitor-exit v1
    :try_end_23a
    .catchall {:try_start_22d .. :try_end_23a} :catchall_2a2

    .line 1602
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->enableAllIMEsIfThereIsNoEnabledIME()V

    .line 1604
    iget-boolean v0, p0, mImeSelectedOnBoot:Z

    if-nez v0, :cond_251

    .line 1605
    const-string v0, "InputMethodManagerService"

    const-string v1, "No IME selected. Choose the most applicable IME."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1607
    :try_start_24d
    invoke-direct {p0, p1}, resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1608
    monitor-exit v1
    :try_end_251
    .catchall {:try_start_24d .. :try_end_251} :catchall_2a5

    .line 1611
    :cond_251
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1612
    :try_start_254
    iget-object v0, p0, mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1613
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, updateFromSettingsLocked(Z)V

    .line 1614
    monitor-exit v1
    :try_end_25e
    .catchall {:try_start_254 .. :try_end_25e} :catchall_2a8

    .line 1618
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1619
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1630
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    new-instance v1, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1632
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_keyboard_block"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2ab

    const/4 v0, 0x1

    :goto_28e
    sput-boolean v0, mAccessControlKeyboardBlockEnable:Z

    .line 1634
    return-void

    .line 1534
    .end local v7    # "defaultImiId":Ljava/lang/String;
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_291
    move-exception v8

    .line 1535
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "InputMethodManagerService"

    const-string v1, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1cb

    .line 1589
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v11    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_29b
    move-exception v0

    :try_start_29c
    monitor-exit v1
    :try_end_29d
    .catchall {:try_start_29c .. :try_end_29d} :catchall_29b

    throw v0

    .line 1596
    .restart local v7    # "defaultImiId":Ljava/lang/String;
    :cond_29e
    const/4 v0, 0x0

    goto :goto_228

    .line 1599
    :cond_2a0
    const/4 v0, 0x0

    goto :goto_236

    .line 1601
    :catchall_2a2
    move-exception v0

    :try_start_2a3
    monitor-exit v1
    :try_end_2a4
    .catchall {:try_start_2a3 .. :try_end_2a4} :catchall_2a2

    throw v0

    .line 1608
    :catchall_2a5
    move-exception v0

    :try_start_2a6
    monitor-exit v1
    :try_end_2a7
    .catchall {:try_start_2a6 .. :try_end_2a7} :catchall_2a5

    throw v0

    .line 1614
    :catchall_2a8
    move-exception v0

    :try_start_2a9
    monitor-exit v1
    :try_end_2aa
    .catchall {:try_start_2a9 .. :try_end_2aa} :catchall_2a8

    throw v0

    .line 1632
    .restart local v9    # "filter":Landroid/content/IntentFilter;
    :cond_2ab
    const/4 v0, 0x0

    goto :goto_28e
.end method

.method static synthetic access$000(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .prologue
    .line 209
    sget-boolean v0, mFloatingForMultiWindow:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, mFloatingForMultiWindow:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/ContentResolver;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1}, resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3}, updateSystemUiLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/InputMethodManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, hideImeNotification()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/InputMethodManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 209
    iput p1, p0, mCurrentFocusedUserId:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/InputMethodManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1}, switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/InputMethodManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, resetStateIfCurrentLocaleChangedLocked()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/InputMethodManagerService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mMobilekeyboardSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/InputMethodManagerService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/InputMethodManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, showConfigureInputMethods()V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 209
    sget v0, keyboardState:I

    return v0
.end method

.method static synthetic access$3000()I
    .registers 1

    .prologue
    .line 209
    sget v0, mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$3002(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, mUSBKeyboardCount:I

    return p0
.end method

.method static synthetic access$3006()I
    .registers 1

    .prologue
    .line 209
    sget v0, mUSBKeyboardCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$3008()I
    .registers 2

    .prologue
    .line 209
    sget v0, mUSBKeyboardCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$3100()I
    .registers 1

    .prologue
    .line 209
    sget v0, mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, mBTKeyboardCount:I

    return p0
.end method

.method static synthetic access$3106()I
    .registers 1

    .prologue
    .line 209
    sget v0, mBTKeyboardCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3108()I
    .registers 2

    .prologue
    .line 209
    sget v0, mBTKeyboardCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$372(I)I
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 209
    sget v0, keyboardState:I

    and-int/2addr v0, p0

    sput v0, keyboardState:I

    return v0
.end method

.method static synthetic access$376(I)I
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 209
    sget v0, keyboardState:I

    or-int/2addr v0, p0

    sput v0, keyboardState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, isJapaneseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, isChineseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1}, isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 209
    sget-boolean v0, mEnabledKCMFeatureForHWKeyboard:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 209
    sget-object v0, mDefaultSIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 209
    sget v0, prevAutoMode:I

    return v0
.end method

.method static synthetic access$902(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, prevAutoMode:I

    return p0
.end method

.method private addShortcutInputMethodAndSubtypes(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 5411
    iget-object v1, p0, mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 5412
    iget-object v1, p0, mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5418
    :goto_13
    return-void

    .line 5414
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5415
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5416
    iget-object v1, p0, mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 2010
    if-eqz p1, :cond_4

    if-nez p2, :cond_28

    .line 2011
    :cond_4
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const/4 v0, 0x0

    .line 2014
    :goto_27
    return v0

    :cond_28
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_27
.end method

.method static buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 930
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 932
    .local v2, "imeMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 933
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 934
    .local v3, "imeName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 935
    .local v4, "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 936
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_31

    .line 937
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 939
    :cond_31
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 941
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "imeName":Ljava/lang/String;
    .end local v4    # "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3a
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private calledFromValidUser()Z
    .registers 7

    .prologue
    const/16 v5, 0x3e8

    const/4 v2, 0x1

    .line 1950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1951
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1961
    .local v1, "userId":I
    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-direct {p0, v3}, isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1962
    const-string v3, "InputMethodManagerService"

    const-string v4, "calledFromValidUser - Knox case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1964
    if-eq v0, v5, :cond_2f

    :try_start_23
    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    if-eq v4, v1, :cond_2f

    iget v4, p0, mCurrentFocusedUserId:I

    if-ne v4, v1, :cond_31

    .line 1965
    :cond_2f
    monitor-exit v3

    .line 1992
    :cond_30
    :goto_30
    return v2

    .line 1967
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_5a

    .line 1981
    :cond_32
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_30

    .line 1990
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    const/4 v2, 0x0

    goto :goto_30

    .line 1967
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v2

    .line 1971
    :cond_5d
    if-eq v0, v5, :cond_30

    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_30
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2002
    if-eqz p1, :cond_6

    iget-object v0, p0, mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_8

    .line 2003
    :cond_6
    const/4 v0, 0x0

    .line 2005
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private chooseNewDefaultIMELocked()Z
    .registers 3

    .prologue
    .line 4302
    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 4304
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_15

    .line 4308
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4309
    const/4 v1, 0x1

    .line 4312
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .registers 16
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5278
    iget-object v11, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    .line 5279
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    .line 5280
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    .line 5281
    .local v7, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v1, 0x0

    .line 5284
    .local v1, "foundInSystemIME":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5285
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 5286
    .local v4, "imiId":Ljava/lang/String;
    if-eqz v1, :cond_27

    iget-object v11, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 5289
    :cond_27
    const/4 v9, 0x0

    .line 5290
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v11, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, p0, mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v3, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 5293
    .local v0, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v11, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_42

    .line 5294
    iget-object v11, p0, mRes:Landroid/content/res/Resources;

    iget-object v12, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5299
    :cond_42
    if-nez v9, :cond_4c

    .line 5300
    iget-object v11, p0, mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5303
    :cond_4c
    invoke-static {v3, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 5305
    .local v8, "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8b

    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    .line 5310
    .local v10, "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_5a
    if-nez v9, :cond_6d

    iget-object v11, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_6d

    .line 5311
    iget-object v11, p0, mRes:Landroid/content/res/Resources;

    iget-object v12, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5316
    :cond_6d
    if-nez v9, :cond_77

    .line 5317
    iget-object v11, p0, mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5320
    :cond_77
    if-eqz v9, :cond_d

    .line 5321
    iget-object v11, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 5323
    move-object v6, v3

    .line 5324
    move-object v7, v9

    .line 5348
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_83
    if-eqz v6, :cond_a0

    .line 5349
    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5352
    :goto_8a
    return-object v11

    .restart local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_8b
    move-object v10, v8

    .line 5305
    goto :goto_5a

    .line 5326
    .restart local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_8d
    if-nez v1, :cond_d

    .line 5328
    move-object v6, v3

    .line 5329
    move-object v7, v9

    .line 5330
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    .line 5332
    const/4 v1, 0x1

    goto/16 :goto_d

    .line 5352
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_a0
    const/4 v11, 0x0

    goto :goto_8a
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .registers 7
    .param p1, "sessionState"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .prologue
    const/4 v4, 0x0

    .line 2465
    if-eqz p1, :cond_19

    .line 2466
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_e

    .line 2468
    :try_start_7
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_1a

    .line 2473
    :goto_c
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2475
    :cond_e
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_19

    .line 2476
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 2477
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2480
    :cond_19
    return-void

    .line 2469
    :catch_1a
    move-exception v0

    .line 2470
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2471
    iget-object v1, p0, mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p0, mBackDisposition:I

    invoke-direct {p0, v1, v2, v3}, updateSystemUiLocked(Landroid/os/IBinder;II)V

    goto :goto_c
.end method

.method private getAppShowFlags()I
    .registers 3

    .prologue
    .line 2142
    const/4 v0, 0x0

    .line 2143
    .local v0, "flags":I
    iget-boolean v1, p0, mShowForced:Z

    if-eqz v1, :cond_8

    .line 2144
    or-int/lit8 v0, v0, 0x2

    .line 2148
    :cond_7
    :goto_7
    return v0

    .line 2145
    :cond_8
    iget-boolean v1, p0, mShowExplicitlyRequested:Z

    if-nez v1, :cond_7

    .line 2146
    or-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 6227
    if-nez p2, :cond_4

    .line 6228
    const/4 v0, 0x0

    .line 6251
    :cond_3
    :goto_3
    return-object v0

    .line 6230
    :cond_4
    const/4 v0, 0x0

    .line 6231
    .local v0, "inputMethodId":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_38

    .line 6233
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6245
    :goto_1e
    const-string v1, "DCM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.sevenknowledge.sevennotesproduct.samsung/com.sevenknowledge.mazec.MazecIms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6248
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    goto :goto_3

    .line 6237
    :cond_38
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 5371
    iget-object v5, p0, mCurMethodId:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 5406
    :cond_6
    :goto_6
    return-object v4

    .line 5374
    :cond_7
    iget-object v5, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v3

    .line 5375
    .local v3, "subtypeIsSelected":Z
    iget-object v5, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v6, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5376
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    if-eqz v5, :cond_6

    .line 5379
    if-eqz v3, :cond_31

    iget-object v5, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v5, :cond_31

    iget-object v5, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v5

    if-nez v5, :cond_53

    .line 5381
    :cond_31
    iget-object v5, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 5382
    .local v2, "subtypeId":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_74

    .line 5386
    iget-object v5, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 5390
    .local v0, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_56

    .line 5391
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5406
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "subtypeId":I
    :cond_53
    :goto_53
    iget-object v4, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_6

    .line 5392
    .restart local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v2    # "subtypeId":I
    :cond_56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_53

    .line 5393
    iget-object v5, p0, mRes:Landroid/content/res/Resources;

    const-string/jumbo v6, "keyboard"

    invoke-static {v5, v0, v6, v4, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5396
    iget-object v5, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_53

    .line 5397
    iget-object v5, p0, mRes:Landroid/content/res/Resources;

    invoke-static {v5, v0, v4, v4, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    iput-object v4, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_53

    .line 5403
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_74
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_53
.end method

.method private getDeviceThemeFromSystemProperties()Ljava/lang/String;
    .registers 2

    .prologue
    .line 443
    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImeShowFlags()I
    .registers 3

    .prologue
    .line 2131
    const/4 v0, 0x0

    .line 2132
    .local v0, "flags":I
    iget-boolean v1, p0, mShowForced:Z

    if-eqz v1, :cond_8

    .line 2133
    or-int/lit8 v0, v0, 0x3

    .line 2138
    :cond_7
    :goto_7
    return v0

    .line 2135
    :cond_8
    iget-boolean v1, p0, mShowExplicitlyRequested:Z

    if-eqz v1, :cond_7

    .line 2136
    or-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private getPersonaService()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 4273
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_11

    .line 4274
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 4276
    :cond_11
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;
    .registers 5

    .prologue
    .line 4215
    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    .line 4216
    .local v0, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-boolean v3, p0, knoxV2Enabled:Z

    if-eqz v3, :cond_2f

    .line 4217
    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2f

    .line 4218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 4219
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4220
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v2}, isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4229
    .end local v1    # "i":I
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_25
    :goto_25
    return-object v2

    .line 4223
    .restart local v1    # "i":I
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_26
    invoke-direct {p0, v2}, isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 4218
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4229
    .end local v1    # "i":I
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private handleSetInteractive(Z)V
    .registers 8
    .param p1, "interactive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4201
    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4202
    :try_start_4
    iput-boolean p1, p0, mIsInteractive:Z

    .line 4203
    iget-object v3, p0, mCurToken:Landroid/os/IBinder;

    if-eqz p1, :cond_33

    iget v1, p0, mImeWindowVis:I

    :goto_c
    iget v4, p0, mBackDisposition:I

    invoke-direct {p0, v3, v1, v4}, updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 4206
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_31

    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_31

    .line 4207
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    iget-boolean v5, p0, mIsInteractive:Z

    if-eqz v5, :cond_28

    const/4 v0, 0x1

    :cond_28
    iget-object v5, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4210
    :cond_31
    monitor-exit v2

    .line 4211
    return-void

    :cond_33
    move v1, v0

    .line 4203
    goto :goto_c

    .line 4210
    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private hideImeNotification()V
    .registers 5

    .prologue
    .line 2622
    iget-boolean v0, p0, mNotificationShown:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_17

    .line 2624
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "InputMethodManagerService_Noti"

    const v2, 0x10403f7

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2625
    const/4 v0, 0x0

    iput-boolean v0, p0, mNotificationShown:Z

    .line 2629
    :cond_17
    return-void
.end method

.method private isChineseRegion()Z
    .registers 3

    .prologue
    .line 6180
    const-string/jumbo v0, "none"

    sget-object v1, COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6181
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, COUNTRY_CODE:Ljava/lang/String;

    .line 6183
    :cond_18
    const-string v0, "CHINA"

    sget-object v1, COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "HONG KONG"

    sget-object v1, COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "TAIWAN"

    sget-object v1, COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6186
    :cond_36
    const/4 v0, 0x1

    .line 6188
    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private isDeviceBlackTheme()Z
    .registers 3

    .prologue
    .line 435
    sget-object v0, mDeviceDefaultThemeType:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, mDeviceDefaultThemeType:Ljava/lang/String;

    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 437
    const/4 v0, 0x1

    .line 439
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isHWAccessoryKeyboard()Z
    .registers 2

    .prologue
    .line 6220
    sget v0, keyboardState:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isInstalledInputMethod(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6150
    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    .line 6151
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2e

    .line 6152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 6153
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_2e

    .line 6154
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 6155
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 6156
    const/4 v4, 0x1

    .line 6160
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_2a
    return v4

    .line 6153
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 6160
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private isJapaneseRegion()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6172
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6173
    .local v0, "cscCode":Ljava/lang/String;
    if-eqz v0, :cond_1b

    const-string v2, "JP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v1, :cond_1a

    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_1b

    .line 6176
    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 2618
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isKnoxId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 3234
    const/16 v0, 0x64

    if-lt p1, v0, :cond_a

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    .line 3236
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isKoreaRegion()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6164
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6165
    .local v0, "cscCode":Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string v2, "KOREA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_13

    .line 6168
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1773
    if-nez p1, :cond_5

    .line 1784
    :cond_4
    :goto_4
    return v1

    .line 1776
    :cond_5
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1777
    .local v0, "imiId":Ljava/lang/String;
    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v1, v2

    .line 1778
    goto :goto_4

    .line 1779
    :cond_13
    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v1, v2

    .line 1780
    goto :goto_4

    .line 1781
    :cond_1d
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 1782
    goto :goto_4
.end method

.method private isScreenLocked()Z
    .registers 2

    .prologue
    .line 4463
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 11
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4250
    if-nez p1, :cond_5

    .line 4269
    :cond_4
    :goto_4
    return v4

    .line 4253
    :cond_5
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v4, v5

    .line 4254
    goto :goto_4

    .line 4256
    :cond_d
    invoke-direct {p0}, getPersonaService()Landroid/os/PersonaManager;

    move-result-object v3

    .line 4257
    .local v3, "mPersona":Landroid/os/PersonaManager;
    if-eqz v3, :cond_4

    .line 4260
    invoke-direct {p0}, getPersonaService()Landroid/os/PersonaManager;

    move-result-object v6

    sget-object v7, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    iget-object v8, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/PersonaManager;->getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;

    move-result-object v2

    .line 4262
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 4263
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4264
    .local v1, "imiId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v4, v5

    .line 4265
    goto :goto_4
.end method

.method private isSecureIMEKnox(Ljava/lang/String;)Z
    .registers 7
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 4233
    if-nez p1, :cond_4

    .line 4234
    const/4 v4, 0x0

    .line 4246
    :goto_3
    return v4

    .line 4236
    :cond_4
    const/4 v1, 0x0

    .line 4237
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v3

    .line 4238
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v3, :cond_30

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_30

    .line 4239
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4240
    .local v2, "item":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4241
    move-object v1, v2

    .line 4246
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Landroid/view/inputmethod/InputMethodInfo;
    :cond_30
    invoke-direct {p0, v1}, isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    goto :goto_3
.end method

.method static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 9
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 947
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 949
    .local v3, "imeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 968
    :cond_b
    return-object v3

    .line 953
    :cond_c
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 955
    .local v6, "typeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3b

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 957
    .local v4, "subtypeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static {p0, v6, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v0

    .line 961
    .local v0, "allImeSettings":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 962
    .local v2, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 963
    .local v5, "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_3e

    .line 964
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 966
    :cond_3e
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method

.method private refreshImeWindowVis()V
    .registers 14

    .prologue
    .line 1898
    iget-object v10, p0, mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1899
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v10, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_dc

    const/4 v2, 0x1

    .line 1901
    .local v2, "haveHardKeyboard":Z
    :goto_c
    if-eqz v2, :cond_df

    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_df

    const/4 v1, 0x1

    .line 1908
    .local v1, "hardKeyShown":Z
    :goto_14
    invoke-direct {p0}, isChineseRegion()Z

    move-result v10

    if-nez v10, :cond_24

    invoke-direct {p0}, isKoreaRegion()Z

    move-result v10

    if-eqz v10, :cond_5f

    iget-boolean v10, p0, mIsFolderModel:Z

    if-eqz v10, :cond_5f

    .line 1909
    :cond_24
    iget-boolean v6, p0, mIsFolderModel:Z

    .line 1910
    .local v6, "isFolderPhone":Z
    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e2

    const/4 v5, 0x1

    .line 1911
    .local v5, "isFolderOpen":Z
    :goto_2c
    if-eqz v1, :cond_e5

    if-eqz v6, :cond_32

    if-nez v5, :cond_e5

    :cond_32
    const/4 v1, 0x1

    .line 1913
    :goto_33
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HARDWARE_KEYBOARD] (refreshImeWindowVis) isChineseRegion = true, isFolderPhone= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isFolderOpen = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    .end local v5    # "isFolderOpen":Z
    .end local v6    # "isFolderPhone":Z
    :cond_5f
    invoke-direct {p0}, isKeyguardLocked()Z

    move-result v7

    .line 1920
    .local v7, "isScreenLocked":Z
    if-nez v7, :cond_e8

    iget-boolean v10, p0, mInputShown:Z

    if-nez v10, :cond_6b

    if-eqz v1, :cond_e8

    :cond_6b
    const/4 v3, 0x1

    .line 1921
    .local v3, "inputActive":Z
    :goto_6c
    if-eqz v7, :cond_ea

    iget-object v10, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v10

    if-eqz v10, :cond_ea

    const/4 v8, 0x1

    .line 1924
    .local v8, "isScreenSecurelyLocked":Z
    :goto_77
    if-eqz v7, :cond_93

    if-eqz v8, :cond_93

    .line 1925
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "universal_switch_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1927
    .local v9, "universalSwitchState":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_93

    .line 1928
    iget-boolean v10, p0, mInputShown:Z

    if-nez v10, :cond_92

    if-eqz v1, :cond_ec

    :cond_92
    const/4 v3, 0x1

    .line 1933
    .end local v9    # "universalSwitchState":I
    :cond_93
    :goto_93
    if-eqz v3, :cond_ee

    if-nez v1, :cond_ee

    const/4 v4, 0x1

    .line 1934
    .local v4, "inputVisible":Z
    :goto_98
    if-eqz v3, :cond_f0

    const/4 v10, 0x1

    move v11, v10

    :goto_9c
    if-eqz v4, :cond_f3

    const/4 v10, 0x2

    :goto_9f
    or-int/2addr v10, v11

    iput v10, p0, mImeWindowVis:I

    .line 1938
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HARDWARE_KEYBOARD] (refreshImeWindowVis) mImeWindowVis= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, mImeWindowVis:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " inputVisible = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "haveHardKeyboard = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    return-void

    .line 1899
    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    .end local v3    # "inputActive":Z
    .end local v4    # "inputVisible":Z
    .end local v7    # "isScreenLocked":Z
    .end local v8    # "isScreenSecurelyLocked":Z
    :cond_dc
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1901
    .restart local v2    # "haveHardKeyboard":Z
    :cond_df
    const/4 v1, 0x0

    goto/16 :goto_14

    .line 1910
    .restart local v1    # "hardKeyShown":Z
    .restart local v6    # "isFolderPhone":Z
    :cond_e2
    const/4 v5, 0x0

    goto/16 :goto_2c

    .line 1911
    .restart local v5    # "isFolderOpen":Z
    :cond_e5
    const/4 v1, 0x0

    goto/16 :goto_33

    .line 1920
    .end local v5    # "isFolderOpen":Z
    .end local v6    # "isFolderPhone":Z
    .restart local v7    # "isScreenLocked":Z
    :cond_e8
    const/4 v3, 0x0

    goto :goto_6c

    .line 1921
    .restart local v3    # "inputActive":Z
    :cond_ea
    const/4 v8, 0x0

    goto :goto_77

    .line 1928
    .restart local v8    # "isScreenSecurelyLocked":Z
    .restart local v9    # "universalSwitchState":I
    :cond_ec
    const/4 v3, 0x0

    goto :goto_93

    .line 1933
    .end local v9    # "universalSwitchState":I
    :cond_ee
    const/4 v4, 0x0

    goto :goto_98

    .line 1934
    .restart local v4    # "inputVisible":Z
    :cond_f0
    const/4 v10, 0x0

    move v11, v10

    goto :goto_9c

    :cond_f3
    const/4 v10, 0x0

    goto :goto_9f
.end method

.method private resetAllInternalStateLocked(ZZ)V
    .registers 9
    .param p1, "updateOnlyWhenLocaleChanged"    # Z
    .param p2, "resetDefaultEnabledIme"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1675
    iget-boolean v3, p0, mSystemReady:Z

    if-nez v3, :cond_7

    .line 1715
    :cond_6
    :goto_6
    return-void

    .line 1679
    :cond_7
    iget-object v3, p0, mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1680
    .local v1, "newLocale":Ljava/util/Locale;
    if-eqz p1, :cond_1b

    if-eqz v1, :cond_6

    iget-object v3, p0, mLastSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1682
    :cond_1b
    if-nez p1, :cond_24

    .line 1683
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1684
    invoke-virtual {p0, v5, v4}, unbindCurrentMethodLocked(ZZ)V

    .line 1689
    :cond_24
    iget-object v3, p0, mMethodList:Ljava/util/ArrayList;

    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v4, p2}, buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1690
    if-nez p1, :cond_3e

    .line 1691
    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 1692
    .local v2, "selectedImiId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1695
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1705
    .end local v2    # "selectedImiId":Ljava/lang/String;
    :cond_3e
    invoke-virtual {p0, v5}, updateFromSettingsLocked(Z)V

    .line 1706
    iput-object v1, p0, mLastSystemLocale:Ljava/util/Locale;

    .line 1707
    if-nez p1, :cond_6

    .line 1709
    :try_start_45
    invoke-virtual {p0}, startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_6

    .line 1710
    :catch_49
    move-exception v0

    .line 1711
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "InputMethodManagerService"

    const-string v4, "Unexpected exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1638
    iget-object v1, p0, mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1671
    :cond_15
    :goto_15
    return-void

    .line 1643
    :cond_16
    const/4 v6, 0x0

    .line 1644
    .local v6, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1646
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v0}, isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_30

    move-object v6, v0

    .line 1649
    :cond_30
    if-nez v6, :cond_1d

    iget-boolean v1, p0, mSystemReady:Z

    if-eqz v1, :cond_1d

    .line 1650
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1651
    .local v3, "systemLocale":Ljava/util/Locale;
    const/4 v2, 0x1

    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1654
    move-object v6, v0

    .line 1655
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected default: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1659
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "systemLocale":Ljava/util/Locale;
    :cond_68
    if-nez v6, :cond_9a

    iget-object v1, p0, mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9a

    .line 1660
    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    .line 1662
    if-eqz v6, :cond_a2

    .line 1663
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default found, using "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_9a
    :goto_9a
    if-eqz v6, :cond_15

    .line 1669
    const/4 v1, -0x1

    invoke-direct {p0, v6, v1, v4}, setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto/16 :goto_15

    .line 1665
    :cond_a2
    const-string v1, "InputMethodManagerService"

    const-string v2, "No default found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .registers 9
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    .prologue
    .line 5258
    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5259
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, -0x1

    .line 5261
    .local v2, "lastSubtypeId":I
    if-eqz v1, :cond_25

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 5262
    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5263
    .local v3, "subtypeHashCode":Ljava/lang/String;
    if-eqz v3, :cond_25

    .line 5265
    :try_start_19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_24} :catch_2a

    move-result v2

    .line 5272
    .end local v3    # "subtypeHashCode":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5273
    return-void

    .line 5267
    .restart local v3    # "subtypeHashCode":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 5268
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method private resetStateIfCurrentLocaleChangedLocked()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1718
    invoke-direct {p0, v0, v0}, resetAllInternalStateLocked(ZZ)V

    .line 1720
    return-void
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-static {p1}, parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 904
    .local v5, "prevMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p2}, parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 907
    .local v4, "newMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 908
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 909
    .local v2, "imeId":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 910
    .local v6, "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v6, :cond_33

    .line 911
    new-instance v6, Landroid/util/ArraySet;

    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 912
    .restart local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :cond_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_10

    .line 917
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "imeId":Ljava/lang/String;
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3d
    invoke-static {v5}, buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "mergedImesAndSubtypesString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enabled_input_methods"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 924
    return-void
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .prologue
    .line 3861
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3862
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3863
    monitor-exit v1

    .line 3864
    return-void

    .line 3863
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .prologue
    .line 3867
    if-nez p1, :cond_14

    .line 3868
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3f

    .line 3871
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3875
    :cond_14
    iget-object v2, p0, mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_3f

    .line 3876
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring setInputMethod of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    :goto_3e
    return-void

    .line 3881
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3883
    .local v0, "ident":J
    :try_start_43
    invoke-virtual {p0, p2, p3}, setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4a

    .line 3885
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 11
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    .prologue
    const/4 v6, -0x1

    .line 5211
    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, mCurMethodId:Ljava/lang/String;

    iget-object v3, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5213
    iget v1, p0, mCurUserActionNotificationSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, mCurUserActionNotificationSequenceNumber:I

    .line 5220
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_32

    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_32

    .line 5221
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe0

    iget v4, p0, mCurUserActionNotificationSequenceNumber:I

    iget-object v5, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 5227
    :cond_32
    if-eqz p1, :cond_36

    if-gez p2, :cond_50

    .line 5228
    :cond_36
    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5229
    const/4 v1, 0x0

    iput-object v1, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5251
    :goto_3e
    iget-boolean v1, p0, mSystemReady:Z

    if-eqz v1, :cond_4f

    if-nez p3, :cond_4f

    .line 5253
    iget-object v2, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_4c
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5255
    :cond_4f
    return-void

    .line 5231
    :cond_50
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_66

    .line 5232
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 5233
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5234
    iput-object v0, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3e

    .line 5236
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_66
    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5238
    invoke-direct {p0}, getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3e

    .line 5253
    :cond_72
    const-string v1, ""

    goto :goto_4c
.end method

.method private setSpellCheckerEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 4426
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 4428
    .local v0, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    if-eqz v0, :cond_10

    .line 4430
    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 4432
    :cond_10
    return-void
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .registers 17
    .param p1, "visibility"    # I

    .prologue
    .line 2560
    iget-boolean v12, p0, mShowOngoingImeSwitcherForPhones:Z

    if-nez v12, :cond_6

    const/4 v12, 0x0

    .line 2614
    :goto_5
    return v12

    .line 2561
    :cond_6
    iget-object v12, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    goto :goto_5

    .line 2562
    :cond_c
    iget-boolean v12, p0, mIsInteractive:Z

    if-nez v12, :cond_12

    const/4 v12, 0x0

    goto :goto_5

    .line 2563
    :cond_12
    invoke-direct {p0}, isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x0

    goto :goto_5

    .line 2564
    :cond_1a
    and-int/lit8 v12, p1, 0x1

    if-nez v12, :cond_20

    const/4 v12, 0x0

    goto :goto_5

    .line 2565
    :cond_20
    iget-object v12, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 2570
    const/4 v12, 0x1

    goto :goto_5

    .line 2572
    :cond_2a
    and-int/lit8 v12, p1, 0x2

    if-nez v12, :cond_30

    const/4 v12, 0x0

    goto :goto_5

    .line 2574
    :cond_30
    iget-object v12, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    .line 2575
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 2576
    .local v0, "N":I
    const/4 v12, 0x2

    if-le v0, v12, :cond_3f

    const/4 v12, 0x1

    goto :goto_5

    .line 2577
    :cond_3f
    const/4 v12, 0x1

    if-ge v0, v12, :cond_44

    const/4 v12, 0x0

    goto :goto_5

    .line 2578
    :cond_44
    const/4 v7, 0x0

    .line 2579
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    .line 2580
    .local v1, "auxCount":I
    const/4 v8, 0x0

    .line 2581
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 2582
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_49
    if-ge v3, v0, :cond_7e

    .line 2583
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 2584
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v13, p0, mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v4, v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2586
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 2587
    .local v10, "subtypeCount":I
    if-nez v10, :cond_65

    .line 2588
    add-int/lit8 v7, v7, 0x1

    .line 2582
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 2590
    :cond_65
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_66
    if-ge v6, v10, :cond_62

    .line 2591
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2592
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_7a

    .line 2593
    add-int/lit8 v7, v7, 0x1

    .line 2594
    move-object v8, v9

    .line 2590
    :goto_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    .line 2596
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    .line 2597
    move-object v2, v9

    goto :goto_77

    .line 2602
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "j":I
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_7e
    const/4 v12, 0x1

    if-gt v7, v12, :cond_84

    const/4 v12, 0x1

    if-le v1, v12, :cond_86

    .line 2603
    :cond_84
    const/4 v12, 0x1

    goto :goto_5

    .line 2604
    :cond_86
    const/4 v12, 0x1

    if-ne v7, v12, :cond_b8

    const/4 v12, 0x1

    if-ne v1, v12, :cond_b8

    .line 2605
    if-eqz v8, :cond_b5

    if-eqz v2, :cond_b5

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_aa

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_aa

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_b5

    :cond_aa
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b5

    .line 2610
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 2612
    :cond_b5
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 2614
    :cond_b8
    const/4 v12, 0x0

    goto/16 :goto_5
.end method

.method private showConfigureInputMethods()V
    .registers 6

    .prologue
    .line 4455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4456
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4459
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, mCurrentFocusedUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4460
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 6
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 4444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4445
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 4449
    const-string/jumbo v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4451
    :cond_18
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4452
    return-void
.end method

.method private showInputMethodMenu()V
    .registers 2

    .prologue
    .line 4436
    const/4 v0, 0x0

    invoke-direct {p0, v0}, showInputMethodMenuInternal(Z)V

    .line 4437
    return-void
.end method

.method private showInputMethodMenu(Z)V
    .registers 48
    .param p1, "showAuxSubtypes"    # Z

    .prologue
    .line 4740
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    .line 4741
    .local v11, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, isScreenLocked()Z

    move-result v27

    .line 4743
    .local v27, "isScreenLocked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v31

    .line 4744
    .local v31, "lastInputMethodId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v32

    .line 4747
    .local v32, "lastInputMethodSubtypeId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    monitor-enter v42

    .line 4748
    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v24

    .line 4751
    .local v24, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v24, :cond_43

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v41

    if-nez v41, :cond_45

    .line 4752
    :cond_43
    monitor-exit v42

    .line 5014
    :goto_44
    return-void

    .line 4755
    :cond_45
    invoke-virtual/range {p0 .. p0}, hideInputMethodMenuLocked()V

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    move/from16 v2, p1

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    move-result-object v22

    .line 4761
    .local v22, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/16 v41, -0x1

    move/from16 v0, v32

    move/from16 v1, v41

    if-ne v0, v1, :cond_8a

    .line 4762
    invoke-direct/range {p0 .. p0}, getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v14

    .line 4763
    .local v14, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v14, :cond_8a

    .line 4764
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodMap:Ljava/util/HashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurMethodId:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 4765
    .local v13, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v41

    move/from16 v0, v41

    invoke-static {v13, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v32

    .line 4772
    .end local v13    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_8a
    const-string v41, "InputMethodManagerService"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "showInputMethodMenuInternal : mSecureKeypadEnabled: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSecureKeypadEnabled:Z

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSecureKeypadEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_ee

    .line 4774
    move-object/from16 v0, p0

    iget-boolean v0, v0, knoxV2Enabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_ee

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsPersona:Z

    move/from16 v41, v0

    if-eqz v41, :cond_ee

    .line 4775
    if-eqz v22, :cond_ee

    .line 4776
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 4777
    .local v23, "imiIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_cb
    :goto_cb
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_ee

    .line 4778
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4779
    .local v28, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v41

    if-nez v41, :cond_cb

    .line 4780
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    goto :goto_cb

    .line 5013
    .end local v22    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v23    # "imiIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v24    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_eb
    move-exception v41

    monitor-exit v42
    :try_end_ed
    .catchall {:try_start_27 .. :try_end_ed} :catchall_eb

    throw v41

    .line 4787
    .restart local v22    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v24    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_ee
    const/4 v12, 0x0

    .line 4788
    .local v12, "currentImePackage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4789
    .local v8, "checkedItem":I
    if-eqz v22, :cond_192

    .line 4790
    :try_start_f2
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    .line 4791
    .local v5, "N":I
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4792
    new-array v0, v5, [I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, mSubtypeIds:[I

    .line 4793
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_10c
    move/from16 v0, v21

    if-ge v0, v5, :cond_192

    .line 4794
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4795
    .restart local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v43, v0

    aput-object v43, v41, v21

    .line 4796
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtypeIds:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v43, v0

    aput v43, v41, v21

    .line 4797
    move-object/from16 v0, p0

    iget-object v0, v0, mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    aget-object v41, v41, v21

    invoke-virtual/range {v41 .. v41}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_17a

    .line 4798
    move-object/from16 v0, p0

    iget-object v0, v0, mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    aget-object v41, v41, v21

    invoke-virtual/range {v41 .. v41}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 4799
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtypeIds:[I

    move-object/from16 v41, v0

    aget v37, v41, v21

    .line 4800
    .local v37, "subtypeId":I
    const/16 v41, -0x1

    move/from16 v0, v37

    move/from16 v1, v41

    if-eq v0, v1, :cond_178

    const/16 v41, -0x1

    move/from16 v0, v32

    move/from16 v1, v41

    if-ne v0, v1, :cond_172

    if-eqz v37, :cond_178

    :cond_172
    move/from16 v0, v37

    move/from16 v1, v32

    if-ne v0, v1, :cond_17d

    .line 4803
    :cond_178
    move/from16 v8, v21

    .line 4793
    .end local v37    # "subtypeId":I
    :cond_17a
    :goto_17a
    add-int/lit8 v21, v21, 0x1

    goto :goto_10c

    .line 4804
    .restart local v37    # "subtypeId":I
    :cond_17d
    move-object/from16 v0, p0

    iget-object v0, v0, mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    aget-object v41, v41, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v41

    if-eqz v41, :cond_17a

    .line 4805
    move/from16 v8, v21

    goto :goto_17a

    .line 4811
    .end local v5    # "N":I
    .end local v21    # "i":I
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v37    # "subtypeId":I
    :cond_192
    move-object/from16 v0, p0

    iget-object v0, v0, mRes:Landroid/content/res/Resources;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v41, v0

    const/16 v43, 0x1

    move/from16 v0, v41

    move/from16 v1, v43

    if-ne v0, v1, :cond_2a9

    .line 4812
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mInputShown:Z

    move/from16 v43, v0

    move-object/from16 v0, v41

    move/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    move-result-object v29

    .line 4815
    .local v29, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz v29, :cond_2a5

    if-eqz v22, :cond_2a5

    .line 4816
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 4817
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v5

    .line 4818
    .restart local v5    # "N":I
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v33, v0

    .line 4819
    .local v33, "mIms":[Landroid/view/inputmethod/InputMethodInfo;
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4820
    new-array v0, v5, [I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, mMobilekeyboardSubtypeIds:[I

    .line 4821
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 4822
    .local v34, "mPackageName":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 4823
    .local v9, "checkitem":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_1ec
    move/from16 v0, v21

    if-ge v0, v5, :cond_2a5

    .line 4824
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4825
    .restart local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    aput-object v41, v33, v21

    .line 4826
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v34, v21

    .line 4827
    aget-object v41, v34, v21

    const-string v43, "com.sec.android.inputmethod"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_22a

    aget-object v41, v34, v21

    const-string v43, "com.google.android.googlequicksearchbox"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2a1

    .line 4828
    :cond_22a
    const-string v41, "InputMethodManagerService"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "IMMS: showInputMethodMenuInternal() -checkitem : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4830
    move-object/from16 v0, p0

    iget-object v0, v0, mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v43, v0

    aput-object v43, v41, v9

    .line 4831
    move-object/from16 v0, p0

    iget-object v0, v0, mMobilekeyboardSubtypeIds:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v43, v0

    aput v43, v41, v9

    .line 4832
    move/from16 v0, v21

    if-ne v8, v0, :cond_29f

    .line 4833
    const-string v41, "InputMethodManagerService"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "IMMS: showInputMethodMenuInternal() checkedItem==i -checkitem : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " i =  "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4834
    move-object/from16 v0, p0

    iput v9, v0, mMobilekeyboardCheckedItem:I

    .line 4836
    :cond_29f
    add-int/lit8 v9, v9, 0x1

    .line 4823
    :cond_2a1
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1ec

    .line 4840
    .end local v5    # "N":I
    .end local v9    # "checkitem":I
    .end local v21    # "i":I
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v33    # "mIms":[Landroid/view/inputmethod/InputMethodInfo;
    .end local v34    # "mPackageName":[Ljava/lang/String;
    :cond_2a5
    move-object/from16 v0, p0

    iget v8, v0, mMobilekeyboardCheckedItem:I

    .line 4845
    .end local v29    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_2a9
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_2b2
    .catchall {:try_start_f2 .. :try_end_2b2} :catchall_eb

    move-result v41

    const/16 v43, 0x64

    move/from16 v0, v41

    move/from16 v1, v43

    if-lt v0, v1, :cond_52e

    .line 4846
    move-object/from16 v30, v11

    .line 4848
    .local v30, "knoxContext":Landroid/content/Context;
    const/16 v41, 0x0

    :try_start_2bf
    new-instance v43, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v44

    invoke-direct/range {v43 .. v44}, Landroid/os/UserHandle;-><init>(I)V

    move/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_2bf .. :try_end_2d5} :catch_528
    .catchall {:try_start_2bf .. :try_end_2d5} :catchall_eb

    move-result-object v30

    .line 4852
    :goto_2d6
    :try_start_2d6
    new-instance v36, Landroid/view/ContextThemeWrapper;

    const v41, 0x1030223

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4857
    .end local v30    # "knoxContext":Landroid/content/Context;
    .local v36, "settingsContext":Landroid/content/Context;
    :goto_2e4
    new-instance v41, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4858
    move-object/from16 v0, p0

    iget-object v0, v0, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    new-instance v43, Lcom/android/server/InputMethodManagerService$8;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$8;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4865
    move-object/from16 v0, p0

    iget-object v0, v0, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 4866
    .local v15, "dialogContext":Landroid/content/Context;
    const/16 v41, 0x0

    sget-object v43, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v44, 0x101005d

    const/16 v45, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 4869
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v41, 0x2

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 4871
    .local v16, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 4873
    move-object/from16 v0, p0

    iget-object v0, v0, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 4875
    const-string/jumbo v41, "layout_inflater"

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/LayoutInflater;

    .line 4877
    .local v25, "inflater":Landroid/view/LayoutInflater;
    const v41, 0x109007e

    const/16 v43, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v41

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v40

    .line 4879
    .local v40, "tv":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4882
    invoke-direct/range {p0 .. p0}, isHWAccessoryKeyboard()Z

    move-result v26

    .line 4883
    .local v26, "isDisplayedHardKeySwitch":Z
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, mSwitchingDialogTitleView:Landroid/view/View;

    .line 4884
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v41, v0

    const v43, 0x102035f

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 4885
    .local v39, "textView":Landroid/widget/TextView;
    const v4, 0x3f99999a    # 1.2f

    .line 4886
    .local v4, "MAX_FONT_SCALE":F
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v18, v0

    .line 4887
    .local v18, "fontScale":F
    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getTextSize()F

    move-result v41

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v43, v0

    div-float v19, v41, v43

    .line 4889
    .local v19, "fontsize":F
    cmpl-float v41, v18, v4

    if-lez v41, :cond_3af

    .line 4890
    move/from16 v18, v4

    .line 4892
    :cond_3af
    const/16 v41, 0x1

    mul-float v43, v19, v18

    move-object/from16 v0, v39

    move/from16 v1, v41

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4893
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v41, v0

    const v43, 0x10203db

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    invoke-direct/range {p0 .. p0}, isHWAccessoryKeyboard()Z

    move-result v41

    if-eqz v41, :cond_53c

    const/16 v41, 0x0

    :goto_3d5
    move-object/from16 v0, v43

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4896
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v41, v0

    const v43, 0x10203dc

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Switch;

    .line 4898
    .local v20, "hardKeySwitch":Landroid/widget/Switch;
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v41

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4899
    new-instance v41, Lcom/android/server/InputMethodManagerService$9;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$9;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4914
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Switch;->isChecked()Z

    move-result v41

    if-nez v41, :cond_540

    if-eqz v26, :cond_540

    .line 4915
    const v38, 0x1090080

    .line 4920
    .local v38, "textResourceId":I
    :goto_41b
    new-instance v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move/from16 v0, v38

    move-object/from16 v1, v22

    invoke-direct {v7, v15, v0, v1, v8}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    .line 4923
    .local v7, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v10, Lcom/android/server/InputMethodManagerService$10;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v7}, Lcom/android/server/InputMethodManagerService$10;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    .line 4956
    .local v10, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4958
    if-nez v27, :cond_453

    .line 4959
    new-instance v35, Lcom/android/server/InputMethodManagerService$11;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$11;-><init>(Lcom/android/server/InputMethodManagerService;)V

    .line 4966
    .local v35, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    const v43, 0x10403f8

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4969
    .end local v35    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_453
    move-object/from16 v0, p0

    iget-object v0, v0, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4970
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    new-instance v43, Lcom/android/server/InputMethodManagerService$12;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/InputMethodManagerService$12;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4987
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Switch;->isChecked()Z

    move-result v41

    if-nez v41, :cond_494

    if-eqz v26, :cond_494

    .line 4988
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v41

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 4990
    :cond_494
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4993
    if-eqz v27, :cond_545

    .line 4994
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v43, 0x837

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 5005
    :goto_4b8
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v43, v0

    or-int/lit8 v43, v43, 0x10

    move/from16 v0, v43

    move-object/from16 v1, v41

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5007
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    const-string v43, "Select input method"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 5008
    move-object/from16 v0, p0

    iget-object v0, v0, mCurToken:Landroid/os/IBinder;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, mImeWindowVis:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, mBackDisposition:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, updateSystemUi(Landroid/os/IBinder;II)V

    .line 5009
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    .line 5011
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    new-instance v43, Landroid/content/Intent;

    const-string v44, "ACTION_SWITCHING_DIALOG_SHOWN"

    invoke-direct/range {v43 .. v44}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5013
    monitor-exit v42

    goto/16 :goto_44

    .line 4849
    .end local v4    # "MAX_FONT_SCALE":F
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v10    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v15    # "dialogContext":Landroid/content/Context;
    .end local v16    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "fontScale":F
    .end local v19    # "fontsize":F
    .end local v20    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v25    # "inflater":Landroid/view/LayoutInflater;
    .end local v26    # "isDisplayedHardKeySwitch":Z
    .end local v36    # "settingsContext":Landroid/content/Context;
    .end local v38    # "textResourceId":I
    .end local v39    # "textView":Landroid/widget/TextView;
    .end local v40    # "tv":Landroid/view/View;
    .restart local v30    # "knoxContext":Landroid/content/Context;
    :catch_528
    move-exception v17

    .line 4850
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2d6

    .line 4854
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v30    # "knoxContext":Landroid/content/Context;
    :cond_52e
    new-instance v36, Landroid/view/ContextThemeWrapper;

    const v41, 0x1030223

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-direct {v0, v11, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v36    # "settingsContext":Landroid/content/Context;
    goto/16 :goto_2e4

    .line 4893
    .restart local v4    # "MAX_FONT_SCALE":F
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "dialogContext":Landroid/content/Context;
    .restart local v16    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "fontScale":F
    .restart local v19    # "fontsize":F
    .restart local v25    # "inflater":Landroid/view/LayoutInflater;
    .restart local v26    # "isDisplayedHardKeySwitch":Z
    .restart local v39    # "textView":Landroid/widget/TextView;
    .restart local v40    # "tv":Landroid/view/View;
    :cond_53c
    const/16 v41, 0x8

    goto/16 :goto_3d5

    .line 4918
    .restart local v20    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_540
    const v38, 0x109007f

    .restart local v38    # "textResourceId":I
    goto/16 :goto_41b

    .line 4998
    .restart local v7    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .restart local v10    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_545
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v43, 0x7d8

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V
    :try_end_558
    .catchall {:try_start_2d6 .. :try_end_558} :catchall_eb

    goto/16 :goto_4b8
.end method

.method private showInputMethodMenuInternal(Z)V
    .registers 2
    .param p1, "showSubtypes"    # Z

    .prologue
    .line 4469
    return-void
.end method

.method private showInputMethodSubtypeMenu()V
    .registers 2

    .prologue
    .line 4440
    const/4 v0, 0x1

    invoke-direct {p0, v0}, showInputMethodMenuInternal(Z)V

    .line 4441
    return-void
.end method

.method private startWritingBuddyService()V
    .registers 6

    .prologue
    .line 6316
    :try_start_0
    const-string v2, "InputMethodManagerService"

    const-string v3, "Starting writingbuddy service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6317
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6318
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.writingbuddyservice"

    const-string v4, "com.samsung.android.writingbuddyservice.WritingBuddyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6320
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 6324
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_28
    return-void

    .line 6321
    :catch_29
    move-exception v0

    .line 6322
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting writingbuddy service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private switchSpellChecker(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3242
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 3243
    .local v0, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    if-eqz v0, :cond_10

    .line 3244
    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->switchUserLockedForKnox(I)V

    .line 3246
    :cond_10
    return-void
.end method

.method private switchUserLocked(I)V
    .registers 8
    .param p1, "newUserId"    # I

    .prologue
    .line 1727
    iget-object v3, p0, mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v3, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1728
    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V

    .line 1729
    invoke-virtual {p0}, updateCurrentProfileIds()V

    .line 1731
    new-instance v3, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    invoke-direct {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v3, p0, mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1732
    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 1742
    .local v0, "defaultImiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1743
    .local v1, "initialUserSwitch":Z
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, resetAllInternalStateLocked(ZZ)V

    .line 1745
    if-eqz v1, :cond_37

    .line 1746
    iget-object v3, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, p1, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1755
    :cond_37
    invoke-direct {p0}, getPersonaService()Landroid/os/PersonaManager;

    move-result-object v2

    .line 1756
    .local v2, "mPersona":Landroid/os/PersonaManager;
    if-eqz v2, :cond_43

    .line 1757
    invoke-virtual {v2, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    iput-boolean v3, p0, mIsPersona:Z

    .line 1760
    :cond_43
    return-void
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2649
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2650
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2651
    monitor-exit v1

    .line 2652
    return-void

    .line 2651
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .registers 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2656
    invoke-direct/range {p0 .. p1}, calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v12

    if-nez v12, :cond_2f

    .line 2657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2658
    .local v11, "uid":I
    const-string v12, "InputMethodManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring updateSystemUiLocked due to an invalid token. uid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " token:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    .end local v11    # "uid":I
    :goto_2e
    return-void

    .line 2665
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2668
    .local v4, "ident":J
    if-eqz p2, :cond_43

    :try_start_35
    invoke-direct/range {p0 .. p0}, isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_43

    move-object/from16 v0, p0

    iget-boolean v12, v0, mCurClientInKeyguard:Z

    if-nez v12, :cond_43

    .line 2669
    const/16 p2, 0x0

    .line 2672
    :cond_43
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, shouldShowImeSwitcherLocked(I)Z

    move-result v8

    .line 2673
    .local v8, "needsToShowImeSwitcher":Z
    move-object/from16 v0, p0

    iget-object v12, v0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v12, :cond_5e

    .line 2674
    move-object/from16 v0, p0

    iget-object v12, v0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2, v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 2677
    :cond_5e
    move-object/from16 v0, p0

    iget-object v12, v0, mMethodMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2678
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_e6

    if-eqz v8, :cond_e6

    .line 2680
    invoke-direct/range {p0 .. p0}, isHWAccessoryKeyboard()Z

    move-result v7

    .line 2681
    .local v7, "isDisplayedHardKeySwitch":Z
    move-object/from16 v0, p0

    iget-object v12, v0, mRes:Landroid/content/res/Resources;

    const v13, 0x10403f7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2683
    .local v10, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v12

    if-nez v12, :cond_d9

    if-eqz v7, :cond_d9

    move-object/from16 v0, p0

    iget-object v12, v0, mRes:Landroid/content/res/Resources;

    const v13, 0x104084e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2687
    .local v9, "summary":Ljava/lang/CharSequence;
    :goto_96
    move-object/from16 v0, p0

    iget-object v12, v0, mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2690
    move-object/from16 v0, p0

    iget-object v12, v0, mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v12, :cond_d4

    move-object/from16 v0, p0

    iget-object v12, v0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v12

    if-nez v12, :cond_d4

    .line 2695
    move-object/from16 v0, p0

    iget-object v12, v0, mNotificationManager:Landroid/app/NotificationManager;

    const-string v13, "InputMethodManagerService_Noti"

    const v14, 0x10403f7

    move-object/from16 v0, p0

    iget-object v15, v0, mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v12 .. v16}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2698
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, mNotificationShown:Z
    :try_end_d4
    .catchall {:try_start_35 .. :try_end_d4} :catchall_106

    .line 2711
    .end local v7    # "isDisplayedHardKeySwitch":Z
    .end local v9    # "summary":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_d4
    :goto_d4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2e

    .line 2683
    .restart local v7    # "isDisplayedHardKeySwitch":Z
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_d9
    :try_start_d9
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v12, v6, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_96

    .line 2701
    .end local v7    # "isDisplayedHardKeySwitch":Z
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_e6
    move-object/from16 v0, p0

    iget-boolean v12, v0, mNotificationShown:Z

    if-eqz v12, :cond_d4

    move-object/from16 v0, p0

    iget-object v12, v0, mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v12, :cond_d4

    .line 2705
    move-object/from16 v0, p0

    iget-object v12, v0, mNotificationManager:Landroid/app/NotificationManager;

    const-string v13, "InputMethodManagerService_Noti"

    const v14, 0x10403f7

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2707
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, mNotificationShown:Z
    :try_end_105
    .catchall {:try_start_d9 .. :try_end_105} :catchall_106

    goto :goto_d4

    .line 2711
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "needsToShowImeSwitcher":Z
    :catchall_106
    move-exception v12

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .registers 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 2076
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2083
    :goto_6
    return-void

    .line 2079
    :cond_7
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2080
    :try_start_a
    iget-object v0, p0, mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    monitor-exit v1

    goto :goto_6

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;
    .registers 9
    .param p1, "initial"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2152
    iget-boolean v0, p0, mBoundToMethod:Z

    if-nez v0, :cond_1b

    .line 2153
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2155
    const/4 v0, 0x1

    iput-boolean v0, p0, mBoundToMethod:Z

    .line 2157
    :cond_1b
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2158
    .local v6, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    if-eqz p1, :cond_55

    .line 2159
    iget-object v0, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7d0

    iget-object v4, p0, mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2165
    :goto_32
    iget-boolean v0, p0, mShowRequested:Z

    if-eqz v0, :cond_3d

    .line 2167
    invoke-direct {p0}, getAppShowFlags()I

    move-result v0

    invoke-virtual {p0, v0, v2}, showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2169
    :cond_3d
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v1, v6, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_4b

    iget-object v2, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v2

    :cond_4b
    iget-object v3, p0, mCurId:Ljava/lang/String;

    iget v4, p0, mCurSeq:I

    iget v5, p0, mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 2162
    :cond_55
    iget-object v0, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7da

    iget-object v4, p0, mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_32
.end method

.method buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    .registers 26
    .param p3, "resetDefaultEnabledIme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4321
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 4322
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 4325
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 4326
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getDisabledSystemInputMethods()Ljava/lang/String;

    move-result-object v8

    .line 4327
    .local v8, "disabledSysImes":Ljava/lang/String;
    if-nez v8, :cond_1e

    const-string v8, ""

    .line 4329
    :cond_1e
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.view.InputMethod"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v20, 0x8080

    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v17

    .line 4334
    .local v17, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v3

    .line 4336
    .local v3, "additionalSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_47
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_17b

    .line 4337
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 4338
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 4339
    .local v18, "si":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4340
    .local v4, "compName":Landroid/content/ComponentName;
    const-string v19, "android.permission.BIND_INPUT_METHOD"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a9

    .line 4342
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skipping input method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": it does not require the permission "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    :cond_a6
    :goto_a6
    add-int/lit8 v11, v11, 0x1

    goto :goto_47

    .line 4351
    :cond_a9
    :try_start_a9
    new-instance v14, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1, v3}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    .line 4352
    .local v14, "p":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4353
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    .line 4354
    .local v12, "id":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4357
    move-object/from16 v0, p0

    iget-object v0, v0, mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_111

    const/4 v10, 0x1

    .line 4361
    .local v10, "haveHardKeyboard":Z
    :goto_df
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v19

    if-eqz v19, :cond_113

    .line 4362
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_f0} :catch_f1
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_f0} :catch_12e

    goto :goto_a6

    .line 4377
    .end local v10    # "haveHardKeyboard":Z
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :catch_f1
    move-exception v9

    .line 4378
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to load input method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a6

    .line 4357
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :cond_111
    const/4 v10, 0x0

    goto :goto_df

    .line 4365
    .restart local v10    # "haveHardKeyboard":Z
    :cond_113
    :try_start_113
    invoke-direct/range {p0 .. p0}, isJapaneseRegion()Z

    move-result v19

    if-eqz v19, :cond_14f

    const-string v19, "com.nttdocomo.android.voiceeditor/.standardcommon.IWnnLanguageSwitcher"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14f

    .line 4366
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_12c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_113 .. :try_end_12c} :catch_f1
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_12c} :catch_12e

    goto/16 :goto_a6

    .line 4379
    .end local v10    # "haveHardKeyboard":Z
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :catch_12e
    move-exception v9

    .line 4380
    .local v9, "e":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to load input method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a6

    .line 4367
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "haveHardKeyboard":Z
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :cond_14f
    :try_start_14f
    const-string v19, "com.sec.android.indiainputmethod/.SamsungIndiaKeypad"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_164

    .line 4368
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto/16 :goto_a6

    .line 4369
    :cond_164
    if-eqz p3, :cond_a6

    const-string v19, "com.samsung.android.svoiceime/.SamsungVoiceReco"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a6

    .line 4370
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_179
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14f .. :try_end_179} :catch_f1
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_179} :catch_12e

    goto/16 :goto_a6

    .line 4384
    .end local v4    # "compName":Landroid/content/ComponentName;
    .end local v10    # "haveHardKeyboard":Z
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_17b
    if-eqz p3, :cond_1dd

    .line 4385
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSystemReady:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 4387
    .local v6, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v11, 0x0

    :goto_194
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1dd

    .line 4388
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 4393
    .local v13, "imi":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    .line 4395
    .local v5, "def_ime":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_1cd

    const-string v19, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1cd

    const-string v19, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1cd

    .line 4387
    :goto_1ca
    add-int/lit8 v11, v11, 0x1

    goto :goto_194

    .line 4399
    :cond_1cd
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_1ca

    .line 4403
    .end local v5    # "def_ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v13    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 4404
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_20b

    .line 4405
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_21b

    .line 4406
    const-string v19, "InputMethodManagerService"

    const-string v20, "Default IME is uninstalled. Choose new default IME."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    invoke-direct/range {p0 .. p0}, chooseNewDefaultIMELocked()Z

    move-result v19

    if-eqz v19, :cond_20b

    .line 4408
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, updateInputMethodsFromSettingsLocked(Z)V

    .line 4419
    :cond_20b
    :goto_20b
    move-object/from16 v0, p0

    iget-object v0, v0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 4420
    return-void

    .line 4412
    :cond_21b
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_20b
.end method

.method public changeFullInputMethod(Z)V
    .registers 3
    .param p1, "fullmode"    # Z

    .prologue
    .line 419
    iget-object v0, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->changeFullInputMethod(Z)V

    .line 420
    return-void
.end method

.method changeKeyboard()V
    .registers 4

    .prologue
    .line 6052
    :try_start_0
    invoke-direct {p0}, isHWAccessoryKeyboard()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, mDefaultSIP:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 6054
    sget-object v0, mDefaultSIP:Ljava/lang/String;

    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v2, mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 6058
    :cond_17
    :goto_17
    return-void

    .line 6056
    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method changeKeyboardForVZWResetSetting()V
    .registers 4

    .prologue
    .line 6064
    :try_start_0
    sget-object v0, mDefaultSIP:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 6065
    sget-object v0, mDefaultSIP:Ljava/lang/String;

    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v2, mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 6069
    :cond_11
    :goto_11
    return-void

    .line 6067
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .registers 3
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .prologue
    .line 2459
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2460
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2461
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2462
    return-void
.end method

.method clearCurMethodLocked()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2483
    iget-object v2, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_28

    .line 2484
    iget-object v2, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2485
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    invoke-virtual {p0, v0}, clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    goto :goto_f

    .line 2488
    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_1f
    iget-object v2, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v2}, finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2489
    iput-object v3, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2490
    iput-object v3, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2492
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_28
    iget-object v2, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v2, :cond_35

    .line 2493
    iget-object v2, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v3, "ime"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2495
    :cond_35
    return-void
.end method

.method public dismissAndShowAgainInputMethodPicker()V
    .registers 3

    .prologue
    .line 3587
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3595
    :goto_6
    return-void

    .line 3591
    :cond_7
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "showAgainInputMehtodPicker"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5692
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_33

    .line 5695
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5769
    :goto_32
    return-void

    .line 5704
    :cond_33
    new-instance v8, Landroid/util/PrintWriterPrinter;

    invoke-direct {v8, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 5706
    .local v8, "p":Landroid/util/Printer;
    iget-object v10, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5707
    :try_start_3b
    const-string v9, "Current Input Method Manager state:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5708
    iget-object v9, p0, mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5709
    .local v0, "N":I
    const-string v9, "  Input Methods:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5710
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4c
    if-ge v4, v0, :cond_7a

    .line 5711
    iget-object v9, p0, mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 5712
    .local v6, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  InputMethod #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5713
    const-string v9, "    "

    invoke-virtual {v6, v8, v9}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5710
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 5715
    .end local v6    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_7a
    const-string v9, "  Clients:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5716
    iget-object v9, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_89
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_116

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 5717
    .local v1, "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Client "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5718
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    client="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5719
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    inputContext="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5720
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    sessionRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5721
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    curSession="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_89

    .line 5744
    .end local v0    # "N":I
    .end local v1    # "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_113
    move-exception v9

    monitor-exit v10
    :try_end_115
    .catchall {:try_start_3b .. :try_end_115} :catchall_113

    throw v9

    .line 5723
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_116
    :try_start_116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurMethodId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5724
    iget-object v2, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 5725
    .local v2, "client":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurClient="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mCurSeq="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, mCurSeq:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5726
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurFocusedWindow="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5727
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mHaveConnect="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, mHaveConnection:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mBoundToMethod="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, mBoundToMethod:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5729
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurToken="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, mCurToken:Landroid/os/IBinder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5730
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurIntent="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, mCurIntent:Landroid/content/Intent;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5731
    iget-object v7, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 5732
    .local v7, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurMethod="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5733
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mEnabledSession="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5734
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mShowRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, mShowRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mShowExplicitlyRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, mShowExplicitlyRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mShowForced="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, mShowForced:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mInputShown="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, mInputShown:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5738
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurUserActionNotificationSequenceNumber="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, mCurUserActionNotificationSequenceNumber:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5740
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSystemReady="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, mSystemReady:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mInteractive="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, mIsInteractive:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5741
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSettingsObserver="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5742
    const-string v9, "  mSwitchingController:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5743
    iget-object v9, p0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v9, v8}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 5744
    monitor-exit v10
    :try_end_297
    .catchall {:try_start_116 .. :try_end_297} :catchall_113

    .line 5746
    const-string v9, " "

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5747
    if-eqz v2, :cond_2ee

    .line 5748
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5750
    :try_start_2a1
    iget-object v9, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v9}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v9, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2aa
    .catch Landroid/os/RemoteException; {:try_start_2a1 .. :try_end_2aa} :catch_2d6

    .line 5758
    :goto_2aa
    const-string v9, " "

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5759
    if-eqz v7, :cond_2f4

    .line 5760
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5762
    :try_start_2b4
    invoke-interface {v7}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v9, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2bb
    .catch Landroid/os/RemoteException; {:try_start_2b4 .. :try_end_2bb} :catch_2bd

    goto/16 :goto_32

    .line 5763
    :catch_2bd
    move-exception v3

    .line 5764
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Input method service dead: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 5751
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_2d6
    move-exception v3

    .line 5752
    .restart local v3    # "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Input method client dead: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2aa

    .line 5755
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2ee
    const-string v9, "No input method client."

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2aa

    .line 5767
    :cond_2f4
    const-string v9, "No input method service."

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_32
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .registers 4
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 2099
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_e

    .line 2100
    iget-object v0, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2105
    :goto_d
    return-void

    .line 2102
    :cond_e
    invoke-virtual {p0, p2}, handleMessage(Landroid/os/Message;)Z

    .line 2103
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_d
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 2
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 2365
    return-void
.end method

.method public getCurrentFocusDisplayID()I
    .registers 2

    .prologue
    .line 6432
    iget-object v0, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInputMethodTargetWindowDisplayId()I

    move-result v0

    return v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .prologue
    .line 5362
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5363
    const/4 v0, 0x0

    .line 5366
    :goto_7
    return-object v0

    .line 5365
    :cond_8
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5366
    :try_start_b
    invoke-direct {p0}, getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    monitor-exit v1

    goto :goto_7

    .line 5367
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2039
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2040
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2043
    :goto_a
    return-object v0

    .line 2042
    :cond_b
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2043
    :try_start_e
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_a

    .line 2044
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 7
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2055
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2056
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2068
    :goto_a
    return-object v1

    .line 2058
    :cond_b
    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2060
    if-nez p1, :cond_29

    :try_start_10
    iget-object v1, p0, mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 2061
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2065
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1e
    if-nez v0, :cond_32

    .line 2066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    goto :goto_a

    .line 2070
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw v1

    .line 2063
    :cond_29
    :try_start_29
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_1e

    .line 2068
    :cond_32
    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_26

    goto :goto_a
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2021
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_63

    .line 2022
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: UserHandle.getCallingUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: mSettings.getCurrentUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: mCurrentFocusedUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentFocusedUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_63
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 2029
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2032
    :goto_6d
    return-object v0

    .line 2031
    :cond_6e
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2032
    :try_start_71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_6d

    .line 2033
    :catchall_7a
    move-exception v0

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 2

    .prologue
    .line 3836
    iget-object v0, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 3772
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_9

    move-object v5, v6

    .line 3791
    :goto_8
    return-object v5

    .line 3775
    :cond_9
    iget-object v7, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 3776
    :try_start_c
    iget-object v5, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 3778
    .local v1, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_28

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 3779
    :cond_28
    monitor-exit v7

    move-object v5, v6

    goto :goto_8

    .line 3780
    :cond_2b
    iget-object v5, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3781
    .local v2, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_3a

    monitor-exit v7
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_5b

    move-object v5, v6

    goto :goto_8

    .line 3783
    :cond_3a
    :try_start_3a
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3784
    .local v3, "lastSubtypeHash":I
    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v4

    .line 3786
    .local v4, "lastSubtypeId":I
    if-ltz v4, :cond_52

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_4f} :catch_5e
    .catchall {:try_start_3a .. :try_end_4f} :catchall_5b

    move-result v5

    if-lt v4, v5, :cond_55

    .line 3787
    :cond_52
    :try_start_52
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_5b

    move-object v5, v6

    goto :goto_8

    .line 3789
    :cond_55
    :try_start_55
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_58} :catch_5e
    .catchall {:try_start_55 .. :try_end_58} :catchall_5b

    move-result-object v5

    :try_start_59
    monitor-exit v7

    goto :goto_8

    .line 3793
    .end local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "lastSubtypeHash":I
    .end local v4    # "lastSubtypeId":I
    :catchall_5b
    move-exception v5

    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5b

    throw v5

    .line 3790
    .restart local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_5e
    move-exception v0

    .line 3791
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5b

    move-object v5, v6

    goto :goto_8
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .registers 9

    .prologue
    .line 5424
    iget-object v7, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 5425
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5426
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p0, mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_25

    .line 5430
    const-string/jumbo v6, "voice"

    invoke-direct {p0, v6}, findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 5433
    .local v3, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v3, :cond_23

    .line 5434
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5435
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5437
    :cond_23
    monitor-exit v7

    .line 5445
    .end local v3    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_24
    return-object v4

    .line 5439
    :cond_25
    iget-object v6, p0, mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 5440
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5441
    iget-object v6, p0, mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 5442
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 5446
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :catchall_5a
    move-exception v6

    monitor-exit v7
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v6

    .line 5445
    .restart local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5d
    :try_start_5d
    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5a

    goto :goto_24
.end method

.method public getWACOMPen()Z
    .registers 2

    .prologue
    .line 423
    sget-boolean v0, mbWACOMPen:Z

    return v0
.end method

.method getsystemimeKnox(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6331
    const/4 v0, 0x0

    .line 6332
    .local v0, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6334
    .local v2, "ident":J
    :try_start_5
    iget-object v5, p0, mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 6335
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v4}, isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 6336
    move-object v0, v4

    goto :goto_b

    .line 6345
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1f
    if-nez v0, :cond_33

    iget-object v5, p0, mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_33

    .line 6346
    iget-object v5, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_37

    move-result-object v0

    .line 6350
    :cond_33
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6353
    return-object v0

    .line 6350
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_37
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3954
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_29c

    move v12, v11

    .line 4197
    :cond_8
    :goto_8
    return v12

    .line 3957
    :sswitch_9
    iget v10, p1, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_2fa

    .line 3971
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown subtype picker mode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 3972
    goto :goto_8

    .line 3962
    :pswitch_2a
    iget-boolean v9, p0, mInputShown:Z

    .line 3974
    .local v9, "showAuxSubtypes":Z
    :goto_2c
    invoke-direct {p0, v9}, showInputMethodMenu(Z)V

    goto :goto_8

    .line 3965
    .end local v9    # "showAuxSubtypes":Z
    :pswitch_30
    const/4 v9, 0x1

    .line 3966
    .restart local v9    # "showAuxSubtypes":Z
    goto :goto_2c

    .line 3968
    .end local v9    # "showAuxSubtypes":Z
    :pswitch_32
    const/4 v9, 0x0

    .line 3969
    .restart local v9    # "showAuxSubtypes":Z
    goto :goto_2c

    .line 3979
    .end local v9    # "showAuxSubtypes":Z
    :sswitch_34
    iget-object v10, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_8

    iget-object v10, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3980
    const-string v10, "InputMethodManagerService"

    const-string v11, "MSG_SHOW_AGAIN_IM_PICKER"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    iget-object v10, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 3985
    invoke-direct {p0}, showInputMethodSubtypeMenu()V

    goto :goto_8

    .line 3991
    :sswitch_50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3992
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 3993
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_8

    .line 3997
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5f
    invoke-direct {p0}, showConfigureInputMethods()V

    goto :goto_8

    .line 4004
    :sswitch_63
    :try_start_63
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v10}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6a} :catch_6b

    goto :goto_8

    .line 4005
    :catch_6b
    move-exception v10

    goto :goto_8

    .line 4010
    :sswitch_6d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4012
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_71
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_7c} :catch_298

    .line 4015
    :goto_7c
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_8

    .line 4018
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4022
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_84
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v13, p1, Landroid/os/Message;->arg1:I

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/ResultReceiver;

    invoke-interface {v10, v13, v11}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_91} :catch_295

    .line 4025
    :goto_91
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_8

    .line 4030
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4035
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9a
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->updateWacomState(I)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a3} :catch_292

    .line 4038
    :goto_a3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_8

    .line 4047
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a8
    :try_start_a8
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->updateFloatingState(I)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b1} :catch_b3

    goto/16 :goto_8

    .line 4048
    :catch_b3
    move-exception v10

    goto/16 :goto_8

    .line 4054
    :sswitch_b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4058
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_ba
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    const/4 v13, 0x0

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/ResultReceiver;

    invoke-interface {v10, v13, v11}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_c6} :catch_28f

    .line 4061
    :goto_c6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_8

    .line 4069
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_cb
    :try_start_cb
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->minimizeSoftInput(I)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_d4} :catch_d6

    goto/16 :goto_8

    .line 4070
    :catch_d6
    move-exception v4

    .line 4071
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_8

    .line 4078
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_dc
    :try_start_dc
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v10}, Lcom/android/internal/view/IInputMethod;->undoMinimizeSoftInput()V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_e3} :catch_e5

    goto/16 :goto_8

    .line 4079
    :catch_e5
    move-exception v4

    .line 4080
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_8

    .line 4086
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_eb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4089
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_ef
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_fa} :catch_28c

    .line 4092
    :goto_fa
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_8

    .line 4095
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_ff
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4096
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/view/IInputMethod;

    .line 4097
    .local v5, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputChannel;

    .line 4099
    .local v1, "channel":Landroid/view/InputChannel;
    :try_start_10b
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v5, v1, v10}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_112} :catch_122
    .catchall {:try_start_10b .. :try_end_112} :catchall_12f

    .line 4104
    if-eqz v1, :cond_11d

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_11d

    .line 4105
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 4108
    :cond_11d
    :goto_11d
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_8

    .line 4100
    :catch_122
    move-exception v10

    .line 4104
    if-eqz v1, :cond_11d

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_11d

    .line 4105
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_11d

    .line 4104
    :catchall_12f
    move-exception v10

    if-eqz v1, :cond_13b

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_13b

    .line 4105
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    :cond_13b
    throw v10

    .line 4114
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "channel":Landroid/view/InputChannel;
    .end local v5    # "method":Lcom/android/internal/view/IInputMethod;
    :sswitch_13c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4116
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_140
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 4117
    .local v8, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v8}, setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 4118
    iget-object v13, v8, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputContext;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v13, v10, v11}, Lcom/android/internal/view/IInputMethod;->startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_140 .. :try_end_154} :catch_289

    .line 4122
    .end local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_154
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_8

    .line 4125
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4127
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_15d
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 4128
    .restart local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v8}, setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 4129
    iget-object v13, v8, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputContext;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v13, v10, v11}, Lcom/android/internal/view/IInputMethod;->restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_15d .. :try_end_171} :catch_286

    .line 4133
    .end local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_171
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_8

    .line 4140
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_176
    :try_start_176
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethodClient;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(I)V
    :try_end_17f
    .catch Landroid/os/RemoteException; {:try_start_176 .. :try_end_17f} :catch_181

    goto/16 :goto_8

    .line 4141
    :catch_181
    move-exception v10

    goto/16 :goto_8

    .line 4146
    :sswitch_184
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4147
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethodClient;

    .line 4148
    .local v2, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/view/InputBindResult;

    .line 4150
    .local v6, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_190
    invoke-interface {v2, v6}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_193
    .catch Landroid/os/RemoteException; {:try_start_190 .. :try_end_193} :catch_1a7
    .catchall {:try_start_190 .. :try_end_193} :catchall_1d2

    .line 4156
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v10, :cond_1a2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_1a2

    .line 4157
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    .line 4160
    :cond_1a2
    :goto_1a2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_8

    .line 4151
    :catch_1a7
    move-exception v4

    .line 4152
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_1a8
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Client died receiving input method "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c2
    .catchall {:try_start_1a8 .. :try_end_1c2} :catchall_1d2

    .line 4156
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v10, :cond_1a2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_1a2

    .line 4157
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    goto :goto_1a2

    .line 4156
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_1d2
    move-exception v10

    iget-object v11, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v11, :cond_1e2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_1e2

    .line 4157
    iget-object v11, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    :cond_1e2
    throw v10

    .line 4165
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v6    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_1e3
    :try_start_1e3
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_1ee

    move v11, v12

    :cond_1ee
    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_1f1
    .catch Landroid/os/RemoteException; {:try_start_1e3 .. :try_end_1f1} :catch_1f3

    goto/16 :goto_8

    .line 4166
    :catch_1f3
    move-exception v4

    .line 4167
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v11, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " uid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 4173
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_224
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_22e

    move v10, v12

    :goto_229
    invoke-direct {p0, v10}, handleSetInteractive(Z)V

    goto/16 :goto_8

    :cond_22e
    move v10, v11

    goto :goto_229

    .line 4176
    :sswitch_230
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 4177
    .local v7, "sequenceNumber":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4179
    .local v3, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_236
    iget-object v10, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v10, v7}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_23b
    .catch Landroid/os/RemoteException; {:try_start_236 .. :try_end_23b} :catch_23d

    goto/16 :goto_8

    .line 4180
    :catch_23d
    move-exception v4

    .line 4181
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ") notification to pid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " uid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 4190
    .end local v3    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "sequenceNumber":I
    :sswitch_270
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v12, :cond_275

    move v11, v12

    :cond_275
    invoke-direct {p0, v11}, setSpellCheckerEnabled(Z)V

    goto/16 :goto_8

    .line 4194
    :sswitch_27a
    iget-object v10, p0, mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-ne v13, v12, :cond_281

    move v11, v12

    :cond_281
    invoke-virtual {v10, v11}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    goto/16 :goto_8

    .line 4131
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :catch_286
    move-exception v10

    goto/16 :goto_171

    .line 4120
    :catch_289
    move-exception v10

    goto/16 :goto_154

    .line 4090
    :catch_28c
    move-exception v10

    goto/16 :goto_fa

    .line 4059
    :catch_28f
    move-exception v10

    goto/16 :goto_c6

    .line 4036
    :catch_292
    move-exception v10

    goto/16 :goto_a3

    .line 4023
    :catch_295
    move-exception v10

    goto/16 :goto_91

    .line 4013
    :catch_298
    move-exception v10

    goto/16 :goto_7c

    .line 3954
    nop

    :sswitch_data_29c
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_50
        0x3 -> :sswitch_5f
        0x3e8 -> :sswitch_63
        0x3f2 -> :sswitch_6d
        0x3fc -> :sswitch_80
        0x3fd -> :sswitch_96
        0x3fe -> :sswitch_a8
        0x3ff -> :sswitch_34
        0x400 -> :sswitch_cb
        0x401 -> :sswitch_dc
        0x406 -> :sswitch_b6
        0x410 -> :sswitch_eb
        0x41a -> :sswitch_ff
        0x7d0 -> :sswitch_13c
        0x7da -> :sswitch_159
        0xbb8 -> :sswitch_176
        0xbc2 -> :sswitch_184
        0xbcc -> :sswitch_1e3
        0xbd6 -> :sswitch_224
        0xbe0 -> :sswitch_230
        0xbf4 -> :sswitch_270
        0xfa0 -> :sswitch_27a
    .end sparse-switch

    .line 3957
    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_30
        :pswitch_32
    .end packed-switch
.end method

.method public hideCurrentInput(ILandroid/os/ResultReceiver;)Z
    .registers 7
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 3119
    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3120
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_15

    move-result-wide v0

    .line 3122
    .local v0, "ident":J
    :try_start_7
    invoke-virtual {p0, p1, p2}, hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10

    move-result v2

    .line 3124
    :try_start_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return v2

    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3126
    .end local v0    # "ident":J
    :catchall_15
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v2
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 13
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3135
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/InputMethodManagerService$7;

    invoke-direct {v6, p0}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3144
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3148
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1d

    iget-boolean v6, p0, mShowExplicitlyRequested:Z

    if-nez v6, :cond_1b

    iget-boolean v6, p0, mShowForced:Z

    if-eqz v6, :cond_1d

    :cond_1b
    move v1, v4

    .line 3229
    :goto_1c
    return v1

    .line 3153
    :cond_1d
    iget-boolean v6, p0, mShowForced:Z

    if-eqz v6, :cond_27

    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_27

    move v1, v4

    .line 3155
    goto :goto_1c

    .line 3166
    :cond_27
    iget-object v6, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v6, :cond_91

    iget-boolean v6, p0, mInputShown:Z

    if-nez v6, :cond_35

    iget v6, p0, mImeWindowVis:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_91

    :cond_35
    move v2, v5

    .line 3169
    .local v2, "shouldHideSoftInput":Z
    :goto_36
    if-eqz v2, :cond_93

    .line 3174
    iget-object v6, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v7, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v8, 0x406

    iget-object v9, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v7, v8, v9, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3176
    const/4 v1, 0x1

    .line 3180
    .local v1, "res":Z
    :goto_48
    iget-boolean v6, p0, mHaveConnection:Z

    if-eqz v6, :cond_59

    iget-boolean v6, p0, mVisibleBound:Z

    if-eqz v6, :cond_59

    .line 3182
    :try_start_50
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_57} :catch_95

    .line 3186
    :goto_57
    iput-boolean v4, p0, mVisibleBound:Z

    .line 3188
    :cond_59
    iput-boolean v4, p0, mInputShown:Z

    .line 3189
    iput-boolean v4, p0, mShowRequested:Z

    .line 3190
    iput-boolean v4, p0, mShowExplicitlyRequested:Z

    .line 3191
    iput-boolean v4, p0, mShowForced:Z

    .line 3194
    iget-boolean v6, p0, mIsInteractive:Z

    if-eqz v6, :cond_9f

    iget-object v6, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v6

    iget-object v7, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v6, v5, :cond_9f

    .line 3195
    iget-object v5, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockRelease()V

    .line 3196
    iget-object v5, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v6, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    .line 3218
    :cond_81
    :goto_81
    if-eqz v1, :cond_89

    .line 3219
    :try_start_83
    iget-object v5, p0, mIWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->setCurrentInputMethodClient(Landroid/os/IBinder;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_89} :catch_bc

    .line 3227
    :cond_89
    :goto_89
    iget-object v5, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, p0, mInputShown:Z

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsToDisplayIfNeeded(ZZ)V

    goto :goto_1c

    .end local v1    # "res":Z
    .end local v2    # "shouldHideSoftInput":Z
    :cond_91
    move v2, v4

    .line 3166
    goto :goto_36

    .line 3178
    .restart local v2    # "shouldHideSoftInput":Z
    :cond_93
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_48

    .line 3183
    :catch_95
    move-exception v0

    .line 3184
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "InputMethodManagerService"

    const-string/jumbo v7, "hideCurrentInputLocked: unbindService is failed due to IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 3205
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9f
    iget-boolean v5, p0, mIsInteractive:Z

    if-nez v5, :cond_81

    iget-object v5, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v5

    iget-object v6, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x2

    if-ne v5, v6, :cond_81

    .line 3206
    iget-object v5, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v6, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    goto :goto_81

    .line 3221
    :catch_bc
    move-exception v5

    goto :goto_89
.end method

.method hideInputMethodMenu()V
    .registers 3

    .prologue
    .line 5123
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5124
    :try_start_3
    invoke-virtual {p0}, hideInputMethodMenuLocked()V

    .line 5125
    monitor-exit v1

    .line 5126
    return-void

    .line 5125
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method hideInputMethodMenuLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 5131
    iget-object v0, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 5132
    iget-object v0, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5133
    iput-object v3, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    .line 5136
    :cond_c
    iget-object v0, p0, mCurToken:Landroid/os/IBinder;

    iget v1, p0, mImeWindowVis:I

    iget v2, p0, mBackDisposition:I

    invoke-direct {p0, v0, v1, v2}, updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 5137
    iput-object v3, p0, mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 5138
    iput-object v3, p0, mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 5139
    return-void
.end method

.method hideKeyboardDialog()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6042
    iget-object v0, p0, mKeyboardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 6043
    iget-object v0, p0, mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6044
    iput-object v1, p0, mKeyboardDialog:Landroid/app/AlertDialog;

    .line 6047
    :cond_c
    iput-object v1, p0, mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    .line 6048
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 3891
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3908
    :goto_6
    return-void

    .line 3894
    :cond_7
    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3895
    :try_start_a
    invoke-direct {p0, p1}, calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 3896
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3897
    .local v2, "uid":I
    const-string v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring hideInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    monitor-exit v4

    goto :goto_6

    .line 3907
    .end local v2    # "uid":I
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_38

    throw v3

    .line 3901
    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    move-result-wide v0

    .line 3903
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_40
    invoke-virtual {p0, p2, v3}, hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    .line 3905
    :try_start_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3907
    monitor-exit v4

    goto :goto_6

    .line 3905
    :catchall_48
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_38
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 12
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 3060
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_8

    .line 3087
    :goto_7
    return v4

    .line 3063
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3064
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3066
    .local v2, "ident":J
    :try_start_10
    iget-object v5, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_46

    .line 3067
    :try_start_13
    iget-object v6, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v6, :cond_27

    if-eqz p1, :cond_27

    iget-object v6, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_43

    move-result-object v7

    if-eq v6, v7, :cond_3a

    .line 3073
    :cond_27
    :try_start_27
    iget-object v6, p0, mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_34
    .catchall {:try_start_27 .. :try_end_2c} :catchall_43

    move-result v6

    if-nez v6, :cond_3a

    .line 3076
    :try_start_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_43

    .line 3087
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .line 3078
    :catch_34
    move-exception v0

    .line 3079
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_43

    .line 3087
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .line 3084
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3a
    :try_start_3a
    invoke-virtual {p0, p2, p3}, hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_43

    .line 3087
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .line 3085
    :catchall_43
    move-exception v4

    :try_start_44
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 3087
    :catchall_46
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isAccessoryKeyboard()I
    .registers 2

    .prologue
    .line 6213
    sget v0, keyboardState:I

    return v0
.end method

.method public isCurrentInputMethodAsSamsungKeyboard()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6260
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v3, v4}, getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 6262
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0}, isChineseRegion()Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, "com.samsung.inputmethod"

    invoke-direct {p0, v3}, isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 6264
    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    move v1, v2

    .line 6310
    :cond_29
    :goto_29
    return v1

    .line 6270
    :cond_2a
    invoke-direct {p0}, isJapaneseRegion()Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "com.sec.android.inputmethod.iwnnime.japan"

    invoke-direct {p0, v3}, isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 6271
    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v1, v2

    .line 6272
    goto :goto_29

    .line 6277
    :cond_42
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v1, v2

    .line 6278
    goto :goto_29
.end method

.method public isInputMethodShown()Z
    .registers 3

    .prologue
    .line 3603
    const/4 v0, 0x0

    .line 3605
    .local v0, "isShown":Z
    invoke-direct {p0}, refreshImeWindowVis()V

    .line 3606
    iget v1, p0, mImeWindowVis:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    .line 3607
    const/4 v0, 0x1

    .line 3610
    :cond_b
    return v0
.end method

.method public isKeyboardBlockedForInteractionControl()Z
    .registers 2

    .prologue
    .line 6529
    sget-boolean v0, mAccessControlEnable:Z

    if-eqz v0, :cond_a

    sget-boolean v0, mAccessControlKeyboardBlockEnable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z
    .registers 7
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "height"    # I

    .prologue
    .line 3096
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_6

    .line 3097
    const/4 v0, 0x0

    .line 3101
    :goto_5
    return v0

    .line 3099
    :cond_6
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x400

    iget-object v3, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3101
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 2733
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_8

    .line 2760
    :goto_7
    return v6

    .line 2736
    :cond_8
    iget-object v7, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 2737
    :try_start_b
    iget-object v8, p0, mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v8, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 2739
    .local v5, "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_64

    .line 2740
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v4

    .line 2741
    .local v4, "suggestions":[Ljava/lang/String;
    if-ltz p3, :cond_1e

    array-length v8, v4

    if-lt p3, v8, :cond_23

    :cond_1e
    monitor-exit v7

    goto :goto_7

    .line 2759
    .end local v4    # "suggestions":[Ljava/lang/String;
    .end local v5    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_20
    move-exception v6

    monitor-exit v7
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_20

    throw v6

    .line 2742
    .restart local v4    # "suggestions":[Ljava/lang/String;
    .restart local v5    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v0

    .line 2743
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2746
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2747
    const-string v6, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2748
    const-string v6, "before"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2749
    const-string v6, "after"

    aget-object v8, v4, p3

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2750
    const-string/jumbo v6, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_20

    move-result-wide v2

    .line 2753
    .local v2, "ident":J
    :try_start_52
    iget-object v6, p0, mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5f

    .line 2755
    :try_start_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2757
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_7

    .line 2755
    :catchall_5f
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2759
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ident":J
    .end local v4    # "suggestions":[Ljava/lang/String;
    :cond_64
    monitor-exit v7
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_20

    goto :goto_7
.end method

.method public notifyUserAction(I)V
    .registers 6
    .param p1, "sequenceNumber"    # I

    .prologue
    .line 3844
    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3845
    :try_start_3
    iget v1, p0, mCurUserActionNotificationSequenceNumber:I

    if-eq v1, p1, :cond_9

    .line 3851
    monitor-exit v2

    .line 3858
    :goto_8
    return-void

    .line 3853
    :cond_9
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3854
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1c

    .line 3855
    iget-object v1, p0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3857
    :cond_1c
    monitor-exit v2

    goto :goto_8

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2369
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2370
    :try_start_3
    iget-object v0, p0, mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4a

    iget-object v0, p0, mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2371
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v0

    iput-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2372
    iget-object v0, p0, mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_2b

    .line 2373
    const-string v0, "InputMethodManagerService"

    const-string v2, "Service connected without a token!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, unbindCurrentMethodLocked(ZZ)V

    .line 2375
    monitor-exit v1

    .line 2386
    :goto_2a
    return-void

    .line 2378
    :cond_2b
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x410

    iget-object v4, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2380
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_4a

    .line 2381
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2382
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2385
    :cond_4a
    monitor-exit v1

    goto :goto_2a

    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2499
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2502
    :try_start_3
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_40

    iget-object v0, p0, mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_40

    iget-object v0, p0, mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2504
    invoke-virtual {p0}, clearCurMethodLocked()V

    .line 2507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastBindTime:J

    .line 2508
    iget-boolean v0, p0, mInputShown:Z

    iput-boolean v0, p0, mShowRequested:Z

    .line 2509
    const/4 v0, 0x0

    iput-boolean v0, p0, mInputShown:Z

    .line 2510
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_40

    .line 2511
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, mCurSeq:I

    iget-object v5, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2515
    :cond_40
    monitor-exit v1

    .line 2516
    return-void

    .line 2515
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 10
    .param p1, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .prologue
    .line 2390
    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2391
    :try_start_3
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_47

    if-eqz p1, :cond_47

    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_47

    .line 2393
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_47

    .line 2394
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2395
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v3, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v4, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2397
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 2398
    .local v0, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_45

    .line 2399
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2402
    :cond_45
    monitor-exit v2

    .line 2409
    .end local v0    # "res":Lcom/android/internal/view/InputBindResult;
    :goto_46
    return-void

    .line 2405
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4c

    .line 2408
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    goto :goto_46

    .line 2405
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1792
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 1793
    :catch_5
    move-exception v0

    .line 1796
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 1797
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1799
    :cond_11
    throw v0
.end method

.method registerSamsungAdditionalReceviers()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 5782
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 5783
    .local v6, "USBkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5784
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "android.permission.MANAGE_USB"

    invoke-virtual {v8, v9, v6, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5787
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5788
    .local v0, "BTKeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5789
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5790
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5793
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 5794
    .local v4, "RangeModeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5795
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5799
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5800
    .local v1, "CarModeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.samsung.android.app.mirrorlink.sip"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5801
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$CarModeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$CarModeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5805
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 5806
    .local v5, "SubtypeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.inputmethod.Subtype"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5807
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5811
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 5812
    .local v3, "PSSkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5813
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v8, v9, v3, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5814
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 5815
    .local v2, "KMSkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5816
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v8, v9, v2, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5819
    const-string v8, "VZW"

    const-string/jumbo v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 5820
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 5821
    .local v7, "VZWResetSettingFilter":Landroid/content/IntentFilter;
    const-string v8, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5822
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5825
    .end local v7    # "VZWResetSettingFilter":Landroid/content/IntentFilter;
    :cond_bc
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "universal_switch_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5831
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "mobile_keyboard"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5836
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5838
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_keyboard_block"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5846
    return-void
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 8
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    .prologue
    .line 2717
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2729
    :goto_6
    return-void

    .line 2720
    :cond_7
    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2721
    :try_start_a
    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2722
    .local v0, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v3, p1

    if-ge v1, v3, :cond_2c

    .line 2723
    aget-object v2, p1, v1

    .line 2724
    .local v2, "ss":Landroid/text/style/SuggestionSpan;
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2725
    iget-object v3, p0, mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 2728
    .end local v2    # "ss":Landroid/text/style/SuggestionSpan;
    :cond_2c
    monitor-exit v4

    goto :goto_6

    .end local v0    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "i":I
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 2087
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2096
    :goto_6
    return-void

    .line 2090
    :cond_7
    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2091
    :try_start_a
    iget-object v1, p0, mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2092
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_1b

    .line 2093
    invoke-virtual {p0, v0}, clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2095
    :cond_1b
    monitor-exit v2

    goto :goto_6

    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .registers 11
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .prologue
    const/4 v5, 0x1

    .line 2448
    iget-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v1, :cond_2a

    .line 2450
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2451
    .local v0, "channels":[Landroid/view/InputChannel;
    iput-boolean v5, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2452
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x41a

    iget-object v4, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    aget-object v5, v0, v5

    new-instance v6, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v7, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2456
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_2a
    return-void
.end method

.method public setAccessControlEnable(Z)V
    .registers 2
    .param p1, "enabledChanged"    # Z

    .prologue
    .line 6520
    sput-boolean p1, mAccessControlEnable:Z

    .line 6521
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 14
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 3798
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3831
    :cond_6
    :goto_6
    return-void

    .line 3803
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz p2, :cond_6

    array-length v7, p2

    if-eqz v7, :cond_6

    .line 3804
    iget-object v8, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3805
    :try_start_15
    iget-object v7, p0, mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 3806
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v4, :cond_24

    monitor-exit v8

    goto :goto_6

    .line 3830
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_21
    move-exception v7

    monitor-exit v8
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v7

    .line 3809
    .restart local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_24
    :try_start_24
    iget-object v7, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_56
    .catchall {:try_start_24 .. :try_end_2d} :catchall_21

    move-result-object v5

    .line 3814
    .local v5, "packageInfos":[Ljava/lang/String;
    if-eqz v5, :cond_68

    .line 3815
    :try_start_30
    array-length v6, v5

    .line 3816
    .local v6, "packageNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    if-ge v1, v6, :cond_68

    .line 3817
    aget-object v7, v5, v1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 3818
    iget-object v7, p0, mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_21

    move-result-wide v2

    .line 3821
    .local v2, "ident":J
    :try_start_49
    iget-object v7, p0, mMethodList:Ljava/util/ArrayList;

    iget-object v9, p0, mMethodMap:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v9, v10}, buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_60

    .line 3824
    :try_start_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3826
    monitor-exit v8

    goto :goto_6

    .line 3810
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v5    # "packageInfos":[Ljava/lang/String;
    .end local v6    # "packageNum":I
    :catch_56
    move-exception v0

    .line 3811
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "InputMethodManagerService"

    const-string v9, "Failed to get package infos"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    monitor-exit v8

    goto :goto_6

    .line 3824
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    .restart local v2    # "ident":J
    .restart local v5    # "packageInfos":[Ljava/lang/String;
    .restart local v6    # "packageNum":I
    :catchall_60
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3816
    .end local v2    # "ident":J
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 3830
    .end local v1    # "i":I
    .end local v6    # "packageNum":I
    :cond_68
    monitor-exit v8
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_21

    goto :goto_6
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 8
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v2, 0x0

    .line 5452
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_8

    .line 5464
    :goto_7
    return v2

    .line 5455
    :cond_8
    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5456
    if-eqz p1, :cond_31

    :try_start_d
    iget-object v4, p0, mCurMethodId:Ljava/lang/String;

    if-eqz v4, :cond_31

    .line 5457
    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 5458
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 5459
    .local v1, "subtypeId":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_31

    .line 5460
    iget-object v2, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, setInputMethodLocked(Ljava/lang/String;I)V

    .line 5461
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_7

    .line 5465
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_2e

    throw v2

    .line 5464
    :cond_31
    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    goto :goto_7
.end method

.method setDefaultIMEForKeyboard()V
    .registers 7

    .prologue
    .line 6120
    sget-object v4, mDefaultSIP:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 6137
    :cond_4
    return-void

    .line 6122
    :cond_5
    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    .line 6123
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 6124
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 6125
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v0, :cond_4

    .line 6126
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 6129
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 6131
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, mDefaultSIP:Ljava/lang/String;

    .line 6125
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method setDefaultIMEforChineseKeyboard()V
    .registers 2

    .prologue
    .line 6144
    const-string v0, "com.samsung.inputmethod/.SamsungIME"

    sput-object v0, mDefaultSIP:Ljava/lang/String;

    .line 6145
    return-void
.end method

.method setDefaultIMEforJapaneseKeyboard()V
    .registers 2

    .prologue
    .line 6140
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    sput-object v0, mDefaultSIP:Ljava/lang/String;

    .line 6141
    return-void
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .prologue
    .line 3932
    iget-object v0, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_32

    .line 3933
    iget-object v0, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1a

    .line 3936
    :try_start_e
    iget-object v0, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_35

    .line 3940
    :cond_1a
    :goto_1a
    iput-object p1, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3941
    iget-object v0, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_32

    iget-object v0, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_32

    .line 3944
    :try_start_26
    iget-object v0, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_33

    .line 3949
    :cond_32
    :goto_32
    return-void

    .line 3945
    :catch_33
    move-exception v0

    goto :goto_32

    .line 3937
    :catch_35
    move-exception v0

    goto :goto_1a
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2634
    invoke-direct {p0, p1}, calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 2635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2636
    .local v0, "uid":I
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring setImeWindowStatus due to an invalid token. uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    .end local v0    # "uid":I
    :goto_2c
    return-void

    .line 2641
    :cond_2d
    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2642
    :try_start_30
    iput p2, p0, mImeWindowVis:I

    .line 2643
    iput p3, p0, mBackDisposition:I

    .line 2644
    invoke-direct {p0, p1, p2, p3}, updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2645
    monitor-exit v2

    goto :goto_2c

    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 3616
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3620
    :goto_6
    return-void

    .line 3619
    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 3624
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3636
    :goto_6
    return-void

    .line 3627
    :cond_7
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3628
    if-eqz p3, :cond_24

    .line 3629
    :try_start_c
    iget-object v0, p0, mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3635
    :goto_1f
    monitor-exit v1

    goto :goto_6

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v0

    .line 3633
    :cond_24
    :try_start_24
    invoke-virtual {p0, p1, p2}, setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21

    goto :goto_1f
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 5146
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_8

    .line 5147
    const/4 v2, 0x0

    .line 5162
    :goto_7
    return v2

    .line 5149
    :cond_8
    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5150
    :try_start_b
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    .line 5153
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5164
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v2

    .line 5158
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    move-result-wide v0

    .line 5160
    .local v0, "ident":J
    :try_start_24
    invoke-virtual {p0, p1, p2}, setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2d

    move-result v2

    .line 5162
    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    goto :goto_7

    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_1d
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5169
    iget-object v6, p0, mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5170
    .local v3, "imm":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_27

    .line 5171
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5174
    :cond_27
    iget-object v6, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v1

    .line 5177
    .local v1, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz p2, :cond_52

    .line 5178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 5179
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v6, v7

    .line 5203
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_4a
    return v6

    .line 5185
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4b
    iget-object v6, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, p1, v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    move v6, v8

    .line 5187
    goto :goto_4a

    .line 5189
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5190
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 5193
    iget-object v6, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 5194
    .local v5, "selId":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-direct {p0}, chooseNewDefaultIMELocked()Z

    move-result v6

    if-nez v6, :cond_7d

    .line 5195
    const-string v6, "InputMethodManagerService"

    const-string v8, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    const-string v6, ""

    invoke-direct {p0, v6}, resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    :cond_7d
    move v6, v7

    .line 5199
    goto :goto_4a

    .end local v5    # "selId":Ljava/lang/String;
    :cond_7f
    move v6, v8

    .line 5203
    goto :goto_4a
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .registers 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .prologue
    const/4 v10, 0x1

    .line 2844
    iget-boolean v8, p0, mShowRequested:Z

    if-eqz v8, :cond_15

    iget-object v8, p0, mCurMethodId:Ljava/lang/String;

    if-eqz v8, :cond_15

    if-eqz p1, :cond_15

    iget-object v8, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_15

    .line 2845
    iput-boolean v10, p0, mNeedToExplicitallyCall:Z

    .line 2848
    :cond_15
    iget-object v8, p0, mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2849
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_38

    .line 2850
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2853
    :cond_38
    iget-object v8, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v8, :cond_53

    iget-object v8, p0, mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v8, :cond_53

    .line 2856
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getFixedImeApps()Landroid/util/ArraySet;

    move-result-object v8

    iget-object v9, p0, mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v9, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 2922
    :cond_52
    :goto_52
    return-void

    .line 2862
    :cond_53
    if-eqz p1, :cond_ba

    iget-object v8, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 2863
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    .line 2864
    .local v7, "subtypeCount":I
    if-lez v7, :cond_52

    .line 2867
    iget-object v6, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2869
    .local v6, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_94

    if-ge p2, v7, :cond_94

    .line 2870
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 2876
    .local v5, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_6d
    if-eqz v5, :cond_71

    if-nez v6, :cond_99

    .line 2877
    :cond_71
    const-string v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal subtype state: old subtype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new subtype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 2874
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_94
    invoke-direct {p0}, getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .restart local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_6d

    .line 2881
    :cond_99
    if-eq v5, v6, :cond_52

    .line 2882
    invoke-direct {p0, v1, p2, v10}, setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2883
    iget-object v8, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v8, :cond_52

    .line 2885
    :try_start_a2
    iget-object v8, p0, mCurToken:Landroid/os/IBinder;

    iget v9, p0, mImeWindowVis:I

    iget v10, p0, mBackDisposition:I

    invoke-direct {p0, v8, v9, v10}, updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2886
    iget-object v8, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v8, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_b0} :catch_b1

    goto :goto_52

    .line 2887
    :catch_b1
    move-exception v0

    .line 2888
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Failed to call changeInputMethodSubtype"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 2896
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeCount":I
    :cond_ba
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2900
    .local v2, "ident":J
    const/4 v8, 0x0

    :try_start_bf
    invoke-direct {p0, v1, p2, v8}, setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2904
    iput-object p1, p0, mCurMethodId:Ljava/lang/String;

    .line 2906
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-eqz v8, :cond_107

    .line 2907
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2908
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2909
    const-string/jumbo v8, "input_method_id"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2910
    iget-object v8, p0, mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2912
    const-string v8, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f3

    const-string v8, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_107

    :cond_f3
    iget-object v8, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v8, :cond_107

    .line 2913
    iget-object v8, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v9, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v10, 0xbf4

    const/4 v11, 0x0

    iget-object v12, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2918
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_107
    invoke-virtual {p0}, unbindCurrentClientLocked()V
    :try_end_10a
    .catchall {:try_start_bf .. :try_end_10a} :catchall_10f

    .line 2920
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_52

    :catchall_10f
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public setScreenBrightness(I)V
    .registers 2
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6210
    return-void
.end method

.method public setWACOMPen(Z)V
    .registers 2
    .param p1, "bValue"    # Z

    .prologue
    .line 411
    sput-boolean p1, mbWACOMPen:Z

    .line 412
    return-void
.end method

.method public setisAccessControlKeyboardBlockEnable(Z)V
    .registers 2
    .param p1, "enabledChanged"    # Z

    .prologue
    .line 6524
    sput-boolean p1, mAccessControlKeyboardBlockEnable:Z

    .line 6525
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 3751
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 3766
    :goto_8
    return v2

    .line 3754
    :cond_9
    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3755
    :try_start_c
    invoke-direct {p0, p1}, calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 3756
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3757
    .local v1, "uid":I
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring shouldOfferSwitchingToNextInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    monitor-exit v4

    move v2, v3

    goto :goto_8

    .line 3761
    .end local v1    # "uid":I
    :cond_3b
    iget-object v5, p0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    const/4 v6, 0x0

    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v7, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v7, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    .line 3763
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_53

    .line 3764
    monitor-exit v4

    move v2, v3

    goto :goto_8

    .line 3766
    :cond_53
    const/4 v2, 0x1

    monitor-exit v4

    goto :goto_8

    .line 3767
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_56
    move-exception v2

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_56

    throw v2
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 14
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 2960
    invoke-virtual {p0}, isKeyboardBlockedForInteractionControl()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2961
    const-string v3, "InputMethodManagerService"

    const-string v4, "Interaction Control Keyboard block is enabled, so not show keyboard"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 3054
    :cond_10
    :goto_10
    return v1

    .line 2966
    :cond_11
    iput-boolean v10, p0, mShowRequested:Z

    .line 2967
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_19

    .line 2968
    iput-boolean v10, p0, mShowExplicitlyRequested:Z

    .line 2970
    :cond_19
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_21

    .line 2971
    iput-boolean v10, p0, mShowExplicitlyRequested:Z

    .line 2972
    iput-boolean v10, p0, mShowForced:Z

    .line 2977
    :cond_21
    const/4 v0, 0x0

    .line 2978
    .local v0, "currentShowExplicitlyRequested":Z
    iget-boolean v3, p0, mNeedToExplicitallyCall:Z

    if-eqz v3, :cond_2a

    .line 2979
    iget-boolean v0, p0, mShowExplicitlyRequested:Z

    .line 2980
    iput-boolean v10, p0, mShowExplicitlyRequested:Z

    .line 2984
    :cond_2a
    iget-boolean v3, p0, mSystemReady:Z

    if-nez v3, :cond_30

    move v1, v2

    .line 2985
    goto :goto_10

    .line 2988
    :cond_30
    const/4 v1, 0x0

    .line 2989
    .local v1, "res":Z
    iget-object v3, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_99

    .line 2991
    iget-object v3, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x3fc

    invoke-direct {p0}, getImeShowFlags()I

    move-result v6

    iget-object v7, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2997
    iget-boolean v3, p0, mNeedToExplicitallyCall:Z

    if-eqz v3, :cond_50

    .line 2998
    iput-boolean v0, p0, mShowExplicitlyRequested:Z

    .line 2999
    iput-boolean v2, p0, mNeedToExplicitallyCall:Z

    .line 3003
    :cond_50
    iput-boolean v10, p0, mInputShown:Z

    .line 3004
    iget-boolean v2, p0, mHaveConnection:Z

    if-eqz v2, :cond_66

    iget-boolean v2, p0, mVisibleBound:Z

    if-nez v2, :cond_66

    .line 3005
    iget-object v2, p0, mCurIntent:Landroid/content/Intent;

    iget-object v3, p0, mVisibleConnection:Landroid/content/ServiceConnection;

    const v4, 0xc000001

    invoke-direct {p0, v2, v3, v4}, bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3009
    iput-boolean v10, p0, mVisibleBound:Z

    .line 3013
    :cond_66
    iget-boolean v2, p0, mIsInteractive:Z

    if-eqz v2, :cond_86

    iget-object v2, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v2

    iget-object v3, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_86

    .line 3014
    iget-object v2, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockAcquire()V

    .line 3015
    iget-object v2, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v3, p0, kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v10}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    .line 3018
    :cond_86
    const/4 v1, 0x1

    .line 3040
    :cond_87
    :goto_87
    if-eqz v1, :cond_10

    :try_start_89
    iget-object v2, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_10

    .line 3041
    iget-object v2, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, mCurFocusedWindow:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->setCurrentInputMethodClient(Landroid/os/IBinder;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_94} :catch_96

    goto/16 :goto_10

    .line 3043
    :catch_96
    move-exception v2

    goto/16 :goto_10

    .line 3019
    :cond_99
    iget-boolean v3, p0, mHaveConnection:Z

    if-eqz v3, :cond_87

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, mLastBindTime:J

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_87

    .line 3025
    const/16 v3, 0x7d00

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, mCurMethodId:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, mLastBindTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v10

    const/4 v2, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3027
    const-string v2, "InputMethodManagerService"

    const-string v3, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3029
    iget-object v2, p0, mCurIntent:Landroid/content/Intent;

    const v3, 0x40000001    # 2.0000002f

    invoke-direct {p0, v2, p0, v3}, bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_87
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 7
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 3641
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3652
    :goto_6
    return-void

    .line 3644
    :cond_7
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3645
    :try_start_a
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_36

    .line 3647
    :cond_1e
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodAndSubtypeEnablerFromClient of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    :cond_36
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3651
    monitor-exit v1

    goto :goto_6

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_44

    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 8
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .prologue
    .line 3555
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3583
    :goto_6
    return-void

    .line 3561
    :cond_7
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 3562
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3563
    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedInputMethodRestrictionState()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3564
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input method restricted by Knox Customization"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3571
    :cond_21
    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3572
    :try_start_24
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_38

    if-eqz p1, :cond_38

    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_5e

    .line 3574
    :cond_38
    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    :cond_5e
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3582
    monitor-exit v2

    goto :goto_6

    :catchall_6c
    move-exception v1

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_24 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method showKeyboardNotiDailog(I)V
    .registers 5
    .param p1, "which"    # I

    .prologue
    .line 6005
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104084a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$14;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/InputMethodManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$13;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    .line 6026
    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    .line 6027
    iget-object v0, p0, mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040849

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 6032
    :goto_30
    iget-object v0, p0, mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, mKeyboardDialog:Landroid/app/AlertDialog;

    .line 6033
    iget-object v0, p0, mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 6035
    iget-object v0, p0, mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6037
    return-void

    .line 6029
    :cond_49
    iget-object v0, p0, mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040846

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_30
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 3912
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3929
    :goto_6
    return-void

    .line 3915
    :cond_7
    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3916
    :try_start_a
    invoke-direct {p0, p1}, calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 3917
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3918
    .local v2, "uid":I
    const-string v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring showMySoftInput due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    monitor-exit v4

    goto :goto_6

    .line 3928
    .end local v2    # "uid":I
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_38

    throw v3

    .line 3922
    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    move-result-wide v0

    .line 3924
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_40
    invoke-virtual {p0, p2, v3}, showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    .line 3926
    :try_start_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3928
    monitor-exit v4

    goto :goto_6

    .line 3926
    :catchall_48
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_38
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 13
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 2927
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2954
    :goto_7
    return v4

    .line 2930
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2931
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2933
    .local v2, "ident":J
    :try_start_10
    iget-object v5, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6c

    .line 2934
    :try_start_13
    iget-object v6, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v6, :cond_2b

    if-eqz p1, :cond_2b

    iget-object v6, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_69

    move-result-object v7

    if-ne v6, v7, :cond_2b

    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_60

    .line 2941
    :cond_2b
    :try_start_2b
    iget-object v6, p0, mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 2942
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring showSoftInput of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_55} :catch_5a
    .catchall {:try_start_2b .. :try_end_55} :catchall_69

    .line 2943
    :try_start_55
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_69

    .line 2954
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .line 2945
    :catch_5a
    move-exception v0

    .line 2946
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_69

    .line 2954
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .line 2951
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_60
    :try_start_60
    invoke-virtual {p0, p2, p3}, showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v5
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_69

    .line 2954
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .line 2952
    :catchall_69
    move-exception v4

    :try_start_6a
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v4
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    .line 2954
    :catchall_6c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public showtoastkeyboardconnected()V
    .registers 6

    .prologue
    .line 6193
    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 6194
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 6196
    .local v1, "show_duration":I
    sget v3, keyboardState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_17

    .line 6197
    const v2, 0x104084b

    .line 6202
    .local v2, "toast_msg_resId":I
    :goto_c
    iget-object v3, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 6204
    return-void

    .line 6199
    .end local v2    # "toast_msg_resId":I
    :cond_17
    const v2, 0x104084c

    .restart local v2    # "toast_msg_resId":I
    goto :goto_c
.end method

.method public startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2350
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2351
    const/4 v2, 0x0

    .line 2358
    :goto_7
    return-object v2

    .line 2353
    :cond_8
    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2354
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_18

    move-result-wide v0

    .line 2356
    .local v0, "ident":J
    :try_start_f
    invoke-virtual {p0, p1, p2, p3, p4}, startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1b

    move-result-object v2

    .line 2358
    :try_start_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    goto :goto_7

    .line 2360
    .end local v0    # "ident":J
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_18

    throw v2

    .line 2358
    .restart local v0    # "ident":J
    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_18
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 2300
    iget-object v0, p0, mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 2301
    iget-object v0, p0, mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2344
    :goto_9
    return-object v0

    .line 2304
    :cond_a
    iget-boolean v0, p0, mSystemReady:Z

    if-nez v0, :cond_1b

    .line 2307
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, mCurMethodId:Ljava/lang/String;

    iget v4, p0, mCurSeq:I

    iget v5, p0, mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto :goto_9

    .line 2311
    :cond_1b
    iget-object v0, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2312
    .local v6, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v6, :cond_42

    .line 2313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2316
    :cond_42
    invoke-virtual {p0, v7, v8}, unbindCurrentMethodLocked(ZZ)V

    .line 2318
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mCurIntent:Landroid/content/Intent;

    .line 2319
    iget-object v0, p0, mCurIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2320
    iget-object v0, p0, mCurIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_label"

    const v3, 0x104043f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2322
    iget-object v0, p0, mCurIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_intent"

    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2324
    iget-object v0, p0, mCurIntent:Landroid/content/Intent;

    const v2, 0x60000005

    invoke-direct {p0, v0, p0, v2}, bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 2327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastBindTime:J

    .line 2328
    iput-boolean v8, p0, mHaveConnection:Z

    .line 2329
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mCurId:Ljava/lang/String;

    .line 2330
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mCurToken:Landroid/os/IBinder;

    .line 2332
    :try_start_95
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding window token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object v0, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_b8} :catch_e5

    .line 2337
    :goto_b8
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, mCurId:Ljava/lang/String;

    iget v4, p0, mCurSeq:I

    iget v5, p0, mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_9

    .line 2340
    :cond_c6
    iput-object v1, p0, mCurIntent:Landroid/content/Intent;

    .line 2341
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure connecting to input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2344
    goto/16 :goto_9

    .line 2335
    :catch_e5
    move-exception v0

    goto :goto_b8
.end method

.method startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2177
    iget-object v1, p0, mCurMethodId:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 2178
    iget-object v1, p0, mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2218
    :goto_6
    return-object v1

    .line 2181
    :cond_7
    iget-object v1, p0, mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2182
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v0, :cond_33

    .line 2183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2188
    :cond_33
    :try_start_33
    iget-object v1, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 2194
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input on non-focused client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v1, v0, :cond_85

    .line 2209
    const-string v1, "InputMethodManagerService"

    const-string v2, " Starting startInputUncheckedLocked "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    invoke-virtual {p0, v0, p2, p3, p4}, startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_83} :catch_87

    move-result-object v1

    goto :goto_6

    .line 2213
    :cond_85
    const/4 v1, 0x0

    goto :goto_6

    .line 2215
    :catch_87
    move-exception v1

    .line 2218
    :cond_88
    invoke-virtual {p0, v0, p2, p3, p4}, startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    goto/16 :goto_6
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 15
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2224
    iget-object v0, p0, mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2225
    iget-object v0, p0, mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2295
    :goto_6
    return-object v0

    .line 2228
    :cond_7
    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iget-object v2, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2230
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object v0, p0, mNoBinding:Lcom/android/internal/view/InputBindResult;

    goto :goto_6

    .line 2235
    :cond_3c
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v0, p1, :cond_5f

    .line 2237
    invoke-direct {p0}, isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, p0, mCurClientInKeyguard:Z

    .line 2240
    invoke-virtual {p0}, unbindCurrentClientLocked()V

    .line 2245
    iget-boolean v0, p0, mIsInteractive:Z

    if-eqz v0, :cond_5f

    .line 2246
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-boolean v0, p0, mIsInteractive:Z

    if-eqz v0, :cond_8f

    const/4 v0, 0x1

    :goto_58
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2252
    :cond_5f
    iget v0, p0, mCurSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mCurSeq:I

    .line 2253
    iget v0, p0, mCurSeq:I

    if-gtz v0, :cond_6c

    const/4 v0, 0x1

    iput v0, p0, mCurSeq:I

    .line 2254
    :cond_6c
    iput-object p1, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2255
    iput-object p2, p0, mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 2256
    iput-object p3, p0, mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2259
    iget-object v0, p0, mCurId:Ljava/lang/String;

    if-eqz v0, :cond_ec

    iget-object v0, p0, mCurId:Ljava/lang/String;

    iget-object v1, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 2260
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_93

    .line 2263
    and-int/lit16 v0, p4, 0x100

    if-eqz v0, :cond_91

    const/4 v0, 0x1

    :goto_89
    invoke-virtual {p0, v0}, attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    goto/16 :goto_6

    .line 2246
    :cond_8f
    const/4 v0, 0x0

    goto :goto_58

    .line 2263
    :cond_91
    const/4 v0, 0x0

    goto :goto_89

    .line 2266
    :cond_93
    iget-boolean v0, p0, mHaveConnection:Z

    if-eqz v0, :cond_ec

    .line 2267
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_ad

    .line 2270
    invoke-virtual {p0, p1}, requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2271
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, mCurId:Ljava/lang/String;

    iget v4, p0, mCurSeq:I

    iget v5, p0, mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_6

    .line 2273
    :cond_ad
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, mLastBindTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_c9

    .line 2282
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, mCurId:Ljava/lang/String;

    iget v4, p0, mCurSeq:I

    iget v5, p0, mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_6

    .line 2285
    :cond_c9
    const/16 v0, 0x7d00

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, mCurMethodId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, mLastBindTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2292
    :cond_ec
    :try_start_ec
    invoke-virtual {p0}, startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_ef
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_ef} :catch_f2

    move-result-object v0

    goto/16 :goto_6

    .line 2293
    :catch_f2
    move-exception v6

    .line 2294
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "InputMethodManagerService"

    const-string v1, "Unexpected exception."

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2295
    const/4 v0, 0x0

    goto/16 :goto_6
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 24
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3656
    invoke-direct/range {p0 .. p0}, calledFromValidUser()Z

    move-result v17

    if-nez v17, :cond_9

    .line 3657
    const/16 v17, 0x0

    .line 3721
    :goto_8
    return v17

    .line 3659
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 3660
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v11

    .line 3662
    .local v11, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_10f

    .line 3663
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 3667
    .local v12, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_30
    const/16 v16, 0x0

    .line 3668
    .local v16, "targetLastImiId":Ljava/lang/String;
    const/4 v15, -0x1

    .line 3669
    .local v15, "subtypeId":I
    if-eqz v11, :cond_6e

    if-eqz v12, :cond_6e

    .line 3670
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mCurMethodId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3671
    .local v9, "imiIdIsSame":Z
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3672
    .local v13, "lastSubtypeHash":I
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_112

    const/4 v5, -0x1

    .line 3676
    .local v5, "currentSubtypeHash":I
    :goto_60
    if-eqz v9, :cond_64

    if-eq v13, v5, :cond_6e

    .line 3677
    :cond_64
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "targetLastImiId":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 3678
    .restart local v16    # "targetLastImiId":Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    .line 3682
    .end local v5    # "currentSubtypeHash":I
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    :cond_6e
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f8

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v17

    if-nez v17, :cond_f8

    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v6

    .line 3688
    .local v6, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v6, :cond_f8

    .line 3689
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 3690
    .local v4, "N":I
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_11e

    move-object/from16 v0, p0

    iget-object v0, v0, mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3693
    .local v14, "locale":Ljava/lang/String;
    :goto_ac
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_ad
    if-ge v7, v4, :cond_f8

    .line 3694
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 3695
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v17

    if-lez v17, :cond_129

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v17

    if-eqz v17, :cond_129

    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v19

    const-string/jumbo v20, "keyboard"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v14, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 3700
    .local v10, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_129

    .line 3701
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v16

    .line 3702
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    .line 3704
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_129

    .line 3713
    .end local v4    # "N":I
    .end local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v10    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v14    # "locale":Ljava/lang/String;
    :cond_f8
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_12c

    .line 3718
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3719
    const/16 v17, 0x1

    monitor-exit v18

    goto/16 :goto_8

    .line 3723
    .end local v11    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v15    # "subtypeId":I
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :catchall_10c
    move-exception v17

    monitor-exit v18
    :try_end_10e
    .catchall {:try_start_10 .. :try_end_10e} :catchall_10c

    throw v17

    .line 3665
    .restart local v11    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10f
    const/4 v12, 0x0

    .restart local v12    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto/16 :goto_30

    .line 3672
    .restart local v9    # "imiIdIsSame":Z
    .restart local v13    # "lastSubtypeHash":I
    .restart local v15    # "subtypeId":I
    .restart local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_112
    :try_start_112
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    goto/16 :goto_60

    .line 3690
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    .restart local v4    # "N":I
    .restart local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    goto :goto_ac

    .line 3693
    .restart local v7    # "i":I
    .restart local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v14    # "locale":Ljava/lang/String;
    :cond_129
    add-int/lit8 v7, v7, 0x1

    goto :goto_ad

    .line 3721
    .end local v4    # "N":I
    .end local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "locale":Ljava/lang/String;
    :cond_12c
    const/16 v17, 0x0

    monitor-exit v18
    :try_end_12f
    .catchall {:try_start_112 .. :try_end_12f} :catchall_10c

    goto/16 :goto_8
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3728
    invoke-direct {p0}, calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 3745
    :goto_8
    return v2

    .line 3731
    :cond_9
    iget-object v4, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3732
    :try_start_c
    invoke-direct {p0, p1}, calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 3733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3734
    .local v1, "uid":I
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring switchToNextInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    monitor-exit v4

    move v2, v3

    goto :goto_8

    .line 3738
    .end local v1    # "uid":I
    :cond_3b
    iget-object v5, p0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, mMethodMap:Ljava/util/HashMap;

    iget-object v6, p0, mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v6, p0, mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, p2, v2, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    .line 3740
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_52

    .line 3741
    monitor-exit v4

    move v2, v3

    goto :goto_8

    .line 3743
    :cond_52
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v3}, setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3745
    const/4 v2, 0x1

    monitor-exit v4

    goto :goto_8

    .line 3746
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_60
    move-exception v2

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_c .. :try_end_62} :catchall_60

    throw v2
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 10
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1804
    iget-object v5, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1808
    :try_start_5
    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_aa

    .line 1809
    const/4 v2, 0x1

    iput-boolean v2, p0, mSystemReady:Z

    .line 1810
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1812
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, mNotificationManager:Landroid/app/NotificationManager;

    .line 1814
    iput-object p1, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1815
    const-string/jumbo v2, "ime"

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1816
    iget-object v2, p0, mCurToken:Landroid/os/IBinder;

    iget v6, p0, mImeWindowVis:I

    iget v7, p0, mBackDisposition:I

    invoke-direct {p0, v2, v6, v7}, updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 1817
    iget-object v2, p0, mRes:Landroid/content/res/Resources;

    const v6, 0x112000a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, mShowOngoingImeSwitcherForPhones:Z

    .line 1819
    iget-boolean v2, p0, mShowOngoingImeSwitcherForPhones:Z

    if-eqz v2, :cond_4e

    .line 1820
    iget-object v2, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerService;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V

    .line 1823
    :cond_4e
    iget-object v6, p0, mMethodList:Ljava/util/ArrayList;

    iget-object v7, p0, mMethodMap:Ljava/util/HashMap;

    iget-boolean v2, p0, mImeSelectedOnBoot:Z

    if-nez v2, :cond_ac

    move v2, v3

    :goto_57
    invoke-virtual {p0, v6, v7, v2}, buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1825
    iget-boolean v2, p0, mImeSelectedOnBoot:Z

    if-nez v2, :cond_7f

    .line 1826
    const-string v2, "InputMethodManagerService"

    const-string v3, "Reset the default IME as \"Resource\" is ready here."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-direct {p0}, resetStateIfCurrentLocaleChangedLocked()V

    .line 1828
    iget-object v2, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1832
    :cond_7f
    iget-object v2, p0, mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, mLastSystemLocale:Ljava/util/Locale;

    .line 1845
    invoke-direct {p0}, getDeviceThemeFromSystemProperties()Ljava/lang/String;

    move-result-object v2

    sput-object v2, mDeviceDefaultThemeType:Ljava/lang/String;

    .line 1847
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_SupportKcmForHwKeyboard"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, mEnabledKCMFeatureForHWKeyboard:Z

    .line 1852
    invoke-direct {p0}, getPersonaService()Landroid/os/PersonaManager;
    :try_end_9f
    .catchall {:try_start_5 .. :try_end_9f} :catchall_b3

    move-result-object v1

    .line 1854
    .local v1, "mPersona":Landroid/os/PersonaManager;
    if-eqz v1, :cond_aa

    .line 1855
    :try_start_a2
    new-instance v2, Lcom/android/server/InputMethodManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_aa} :catch_ae
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_b3

    .line 1890
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :cond_aa
    :goto_aa
    :try_start_aa
    monitor-exit v5

    .line 1891
    return-void

    :cond_ac
    move v2, v4

    .line 1823
    goto :goto_57

    .line 1885
    .restart local v1    # "mPersona":Landroid/os/PersonaManager;
    :catch_ae
    move-exception v0

    .line 1886
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_aa

    .line 1890
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :catchall_b3
    move-exception v2

    monitor-exit v5
    :try_end_b5
    .catchall {:try_start_aa .. :try_end_b5} :catchall_b3

    throw v2
.end method

.method unbindCurrentClientLocked()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2108
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_4e

    .line 2111
    iget-boolean v0, p0, mBoundToMethod:Z

    if-eqz v0, :cond_1e

    .line 2112
    iput-boolean v5, p0, mBoundToMethod:Z

    .line 2113
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1e

    .line 2114
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3e8

    iget-object v3, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2119
    :cond_1e
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbcc

    iget-object v3, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2121
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbb8

    iget v3, p0, mCurSeq:I

    iget-object v4, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2123
    iget-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2124
    const/4 v0, 0x0

    iput-object v0, p0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2126
    invoke-virtual {p0}, hideInputMethodMenuLocked()V

    .line 2128
    :cond_4e
    return-void
.end method

.method unbindCurrentMethodLocked(ZZ)V
    .registers 7
    .param p1, "resetCurrentMethodAndClient"    # Z
    .param p2, "savePosition"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2412
    if-eqz p1, :cond_6

    .line 2413
    iput-object v2, p0, mCurMethodId:Ljava/lang/String;

    .line 2416
    :cond_6
    iget-boolean v0, p0, mVisibleBound:Z

    if-eqz v0, :cond_13

    .line 2417
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2418
    iput-boolean v3, p0, mVisibleBound:Z

    .line 2421
    :cond_13
    iget-boolean v0, p0, mHaveConnection:Z

    if-eqz v0, :cond_1e

    .line 2422
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2423
    iput-boolean v3, p0, mHaveConnection:Z

    .line 2426
    :cond_1e
    iget-object v0, p0, mCurToken:Landroid/os/IBinder;

    if-eqz v0, :cond_38

    .line 2429
    :try_start_22
    iget v0, p0, mImeWindowVis:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    if-eqz p2, :cond_2f

    .line 2431
    iget-object v0, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->saveLastInputMethodWindowForTransition()V

    .line 2433
    :cond_2f
    iget-object v0, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, mCurToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_36} :catch_43

    .line 2436
    :goto_36
    iput-object v2, p0, mCurToken:Landroid/os/IBinder;

    .line 2439
    :cond_38
    iput-object v2, p0, mCurId:Ljava/lang/String;

    .line 2440
    invoke-virtual {p0}, clearCurMethodLocked()V

    .line 2442
    if-eqz p1, :cond_42

    .line 2443
    invoke-virtual {p0}, unbindCurrentClientLocked()V

    .line 2445
    :cond_42
    return-void

    .line 2434
    :catch_43
    move-exception v0

    goto :goto_36
.end method

.method public undoMinimizeSoftInput()V
    .registers 6

    .prologue
    .line 3109
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_5

    .line 3114
    :goto_4
    return-void

    .line 3112
    :cond_5
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x401

    const/4 v3, 0x0

    iget-object v4, p0, mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_4
.end method

.method updateCurrentProfileIds()V
    .registers 6

    .prologue
    .line 1763
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1765
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 1766
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v3, v0

    if-ge v1, v3, :cond_27

    .line 1767
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v0, v1

    .line 1766
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1769
    :cond_27
    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1770
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .registers 2
    .param p1, "enabledMayChange"    # Z

    .prologue
    .line 2764
    invoke-virtual {p0, p1}, updateInputMethodsFromSettingsLocked(Z)V

    .line 2765
    invoke-virtual {p0}, updateKeyboardFromSettingsLocked()V

    .line 2766
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .registers 16
    .param p1, "enabledMayChange"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2769
    if-eqz p1, :cond_4b

    .line 2770
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v8

    .line 2771
    .local v8, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_4b

    .line 2774
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 2776
    .local v11, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_17
    iget-object v0, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x8000

    iget-object v3, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2779
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_48

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_48

    .line 2785
    iget-object v0, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_48} :catch_a0

    .line 2771
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_48
    :goto_48
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 2798
    .end local v8    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "i":I
    .end local v11    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4b
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v10

    .line 2800
    .local v10, "id":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-direct {p0}, chooseNewDefaultIMELocked()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2801
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v10

    .line 2803
    :cond_63
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 2805
    :try_start_69
    iget-object v0, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v10, v0}, setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_72} :catch_7f

    .line 2810
    :goto_72
    iget-object v0, p0, mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2819
    :goto_77
    iget-object v0, p0, mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 2821
    return-void

    .line 2806
    :catch_7f
    move-exception v7

    .line 2807
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown input method from prefs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2808
    invoke-virtual {p0, v13, v12}, unbindCurrentMethodLocked(ZZ)V

    goto :goto_72

    .line 2813
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9c
    invoke-virtual {p0, v13, v12}, unbindCurrentMethodLocked(ZZ)V

    goto :goto_77

    .line 2790
    .end local v10    # "id":Ljava/lang/String;
    .restart local v8    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v9    # "i":I
    .restart local v11    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :catch_a0
    move-exception v0

    goto :goto_48
.end method

.method public updateKeyboardFromSettingsLocked()V
    .registers 5

    .prologue
    .line 2825
    iget-object v1, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    iput-boolean v1, p0, mShowImeWithHardKeyboard:Z

    .line 2826
    iget-object v1, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_42

    iget-object v1, p0, mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_42

    iget-object v1, p0, mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2829
    iget-object v1, p0, mSwitchingDialogTitleView:Landroid/view/View;

    const v2, 0x10203dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 2833
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HARDWARE_KEYBOARD] mShowImeWithHardKeyboard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    iget-boolean v1, p0, mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2838
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_42
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 2520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2522
    .local v8, "ident":J
    :try_start_4
    iget-object v11, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_88

    .line 2523
    :try_start_7
    invoke-direct {p0, p1}, calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2525
    .local v10, "uid":I
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring updateStatusIcon due to an invalid token. uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    monitor-exit v11
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_85

    .line 2555
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2557
    .end local v10    # "uid":I
    :goto_37
    return-void

    .line 2529
    :cond_38
    if-nez p3, :cond_4c

    .line 2531
    :try_start_3a
    iget-object v0, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_47

    .line 2532
    iget-object v0, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2553
    :cond_47
    :goto_47
    monitor-exit v11
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_85

    .line 2555
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    .line 2534
    :cond_4c
    if-eqz p2, :cond_47

    .line 2536
    const/4 v6, 0x0

    .line 2539
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    :try_start_4f
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2540
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    iget-object v2, p0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_65} :catch_8f
    .catchall {:try_start_4f .. :try_end_65} :catchall_85

    move-result-object v6

    .line 2546
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_66
    :try_start_66
    iget-object v0, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_47

    .line 2547
    iget-object v0, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v4, 0x0

    if-eqz v6, :cond_8d

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_76
    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2550
    iget-object v0, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_47

    .line 2553
    .end local v6    # "contentDescription":Ljava/lang/CharSequence;
    :catchall_85
    move-exception v0

    monitor-exit v11
    :try_end_87
    .catchall {:try_start_66 .. :try_end_87} :catchall_85

    :try_start_87
    throw v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    .line 2555
    :catchall_88
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2547
    .restart local v6    # "contentDescription":Ljava/lang/CharSequence;
    :cond_8d
    const/4 v5, 0x0

    goto :goto_76

    .line 2543
    :catch_8f
    move-exception v0

    goto :goto_66
.end method

.method public windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    .registers 40
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "controlFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .prologue
    .line 3254
    const/16 v21, 0x1

    .line 3257
    .local v21, "isNeedSetCurrentInputMethod":Z
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSecureKeypadEnabled:Z

    .line 3258
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3260
    .local v9, "destinationUserId":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, knoxV2Enabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_49

    const/16 v27, 0x64

    move/from16 v0, v27

    if-lt v9, v0, :cond_49

    const/16 v27, 0xc8

    move/from16 v0, v27

    if-gt v9, v0, :cond_49

    .line 3261
    new-instance v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v13, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    .line 3262
    .local v13, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/RestrictionPolicy;->isUseSecureKeypadEnabled()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSecureKeypadEnabled:Z

    .line 3265
    .end local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_49
    const/16 v26, 0x0

    .line 3266
    .local v26, "userSwitched":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3267
    .local v18, "identity":J
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 3268
    :try_start_56
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3270
    .local v7, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "default_input_method"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 3272
    .local v8, "defaultIME":Ljava/lang/String;
    if-nez v7, :cond_83

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, isKnoxId(I)Z

    move-result v27

    if-nez v27, :cond_9f

    :cond_83
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_8d

    if-eqz v9, :cond_9f

    :cond_8d
    if-eq v7, v9, :cond_13c

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_13c

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_13c

    .line 3276
    :cond_9f
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: destinationUserId (getCallingUid) = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: currentUserId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: mCurrentFocusedUserId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, mCurrentFocusedUserId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: Current user = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Destination user = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " - So switch user"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    move-object/from16 v0, p0

    iput v9, v0, mCurrentFocusedUserId:I

    .line 3282
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, switchUserLocked(I)V

    .line 3283
    const/16 v26, 0x1

    .line 3285
    :cond_13c
    monitor-exit v28
    :try_end_13d
    .catchall {:try_start_56 .. :try_end_13d} :catchall_1c7

    .line 3286
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3287
    if-eqz v26, :cond_147

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, switchSpellChecker(I)V

    .line 3289
    :cond_147
    const-string v27, "InputMethodManagerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "windowGainedFocus mCurrentFocusedUserId - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, mCurrentFocusedUserId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " and mSecureKeypadEnabled-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSecureKeypadEnabled:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    invoke-direct/range {p0 .. p0}, calledFromValidUser()Z

    move-result v4

    .line 3295
    .local v4, "calledFromValidUser":Z
    const/16 v25, 0x0

    .line 3296
    .local v25, "res":Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3298
    .local v16, "ident":J
    :try_start_180
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_187
    .catchall {:try_start_180 .. :try_end_187} :catchall_1c2

    .line 3304
    :try_start_187
    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3305
    .local v5, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v5, :cond_1ca

    .line 3306
    new-instance v27, Ljava/lang/IllegalArgumentException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "unknown client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 3544
    .end local v5    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_1bf
    move-exception v27

    monitor-exit v28
    :try_end_1c1
    .catchall {:try_start_187 .. :try_end_1c1} :catchall_1bf

    :try_start_1c1
    throw v27
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c2

    .line 3546
    :catchall_1c2
    move-exception v27

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27

    .line 3285
    .end local v4    # "calledFromValidUser":Z
    .end local v7    # "currentUserId":I
    .end local v8    # "defaultIME":Ljava/lang/String;
    .end local v16    # "ident":J
    .end local v25    # "res":Lcom/android/internal/view/InputBindResult;
    :catchall_1c7
    move-exception v27

    :try_start_1c8
    monitor-exit v28
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c7

    throw v27

    .line 3311
    .restart local v4    # "calledFromValidUser":Z
    .restart local v5    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v7    # "currentUserId":I
    .restart local v8    # "defaultIME":Ljava/lang/String;
    .restart local v16    # "ident":J
    .restart local v25    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_1ca
    :try_start_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v27

    if-nez v27, :cond_34a

    .line 3317
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Focus gain on non-focused client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " (uid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " pid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    const-string v29, "InputMethodManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "calledFromValidUser : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", (mCurFocusedWindow == windowToken) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2fe

    const/16 v27, 0x1

    :goto_24f
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", (attribute != null) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-eqz p6, :cond_302

    const/16 v27, 0x1

    :goto_265
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    const-string v29, "InputMethodManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(mCurClient != cs) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_306

    const/16 v27, 0x1

    :goto_295
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", mCurFocusedWindow : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", windowToken : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    if-eqz v4, :cond_309

    move-object/from16 v0, p0

    iget-object v0, v0, mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_309

    if-eqz p6, :cond_309

    .line 3327
    const-string v27, "InputMethodManagerService"

    const-string v29, "Focus gain on non-focused client, executed a startInputUncheckedLocked()!!"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_2f8
    .catch Landroid/os/RemoteException; {:try_start_1ca .. :try_end_2f8} :catch_349
    .catchall {:try_start_1ca .. :try_end_2f8} :catchall_1bf

    move-result-object v27

    :try_start_2f9
    monitor-exit v28
    :try_end_2fa
    .catchall {:try_start_2f9 .. :try_end_2fa} :catchall_1bf

    .line 3546
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3549
    :goto_2fd
    return-object v27

    .line 3322
    :cond_2fe
    const/16 v27, 0x0

    goto/16 :goto_24f

    :cond_302
    const/16 v27, 0x0

    goto/16 :goto_265

    .line 3323
    :cond_306
    const/16 v27, 0x0

    goto :goto_295

    .line 3330
    :cond_309
    :try_start_309
    move-object/from16 v0, p0

    iget-object v0, v0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_342

    .line 3331
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Focus gain on non-focused client mCurClient info is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_342
    .catch Landroid/os/RemoteException; {:try_start_309 .. :try_end_342} :catch_349
    .catchall {:try_start_309 .. :try_end_342} :catchall_1bf

    .line 3334
    :cond_342
    const/16 v27, 0x0

    :try_start_344
    monitor-exit v28
    :try_end_345
    .catchall {:try_start_344 .. :try_end_345} :catchall_1bf

    .line 3546
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2fd

    .line 3336
    :catch_349
    move-exception v27

    .line 3339
    :cond_34a
    if-nez v4, :cond_376

    .line 3340
    :try_start_34c
    const-string v27, "InputMethodManagerService"

    const-string v29, "A background user is requesting window. Hiding IME."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    const-string v27, "InputMethodManagerService"

    const-string v29, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3344
    const/16 v27, 0x0

    monitor-exit v28
    :try_end_372
    .catchall {:try_start_34c .. :try_end_372} :catchall_1bf

    .line 3546
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2fd

    .line 3347
    :cond_376
    :try_start_376
    move-object/from16 v0, p0

    iget-object v0, v0, mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_3f6

    .line 3348
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Window already focused, ignoring focus gain of: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " attribute="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", token = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    if-eqz p6, :cond_3d2

    .line 3351
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v27

    monitor-exit v28
    :try_end_3cd
    .catchall {:try_start_376 .. :try_end_3cd} :catchall_1bf

    .line 3546
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2fd

    .line 3353
    :cond_3d2
    :try_start_3d2
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsScreenPinnedState:Z

    move/from16 v27, v0

    if-nez v27, :cond_3ee

    move-object/from16 v0, p0

    iget-boolean v0, v0, mNotificationShown:Z

    move/from16 v27, v0

    if-nez v27, :cond_3ee

    invoke-virtual/range {p0 .. p0}, isInputMethodShown()Z

    move-result v27

    if-eqz v27, :cond_3ee

    invoke-direct/range {p0 .. p0}, isHWAccessoryKeyboard()Z

    move-result v27

    if-nez v27, :cond_3ee

    .line 3357
    :cond_3ee
    const/16 v27, 0x0

    monitor-exit v28
    :try_end_3f1
    .catchall {:try_start_3d2 .. :try_end_3f1} :catchall_1bf

    .line 3546
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2fd

    .line 3359
    :cond_3f6
    :try_start_3f6
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mCurFocusedWindow:Landroid/os/IBinder;

    .line 3362
    move-object/from16 v0, p0

    iget-boolean v0, v0, knoxV2Enabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_473

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsPersona:Z

    move/from16 v27, v0

    if-eqz v27, :cond_473

    .line 3363
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSecureKeypadEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_52e

    .line 3364
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    .line 3365
    .local v6, "currentImeId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, isSecureIMEKnox(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_473

    .line 3369
    invoke-direct/range {p0 .. p0}, getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v20

    .line 3370
    .local v20, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v20, :cond_473

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_473

    .line 3374
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, setInputMethodLocked(Ljava/lang/String;I)V

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v6, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3409
    .end local v6    # "currentImeId":Ljava/lang/String;
    .end local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_473
    :goto_473
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v29, 0x10

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_497

    move-object/from16 v0, p0

    iget-object v0, v0, mRes:Landroid/content/res/Resources;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    const/16 v29, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v27

    if-eqz v27, :cond_5ca

    :cond_497
    const/4 v12, 0x1

    .line 3414
    .local v12, "doAutoShow":Z
    :goto_498
    and-int/lit8 v27, p3, 0x2

    if-eqz v27, :cond_5cd

    const/16 v22, 0x1

    .line 3418
    .local v22, "isTextEditor":Z
    :goto_49e
    const/high16 v27, 0x10000

    and-int v27, v27, p3

    if-eqz v27, :cond_5d1

    const/16 v23, 0x1

    .line 3427
    .local v23, "isWritingBuddyShown":Z
    :goto_4a6
    const-string/jumbo v27, "ro.build.characteristics"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3428
    .local v10, "deviceType":Ljava/lang/String;
    if-eqz v10, :cond_4df

    const-string/jumbo v27, "phone"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_4df

    .line 3429
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v29, 0x10

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_4de

    move-object/from16 v0, p0

    iget-object v0, v0, mRes:Landroid/content/res/Resources;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    const/16 v29, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v27

    if-eqz v27, :cond_5d5

    :cond_4de
    const/4 v12, 0x1

    .line 3441
    :cond_4df
    :goto_4df
    const/4 v11, 0x0

    .line 3443
    .local v11, "didStart":Z
    and-int/lit8 v27, p4, 0xf

    packed-switch v27, :pswitch_data_6a4

    .line 3521
    :cond_4e5
    :goto_4e5
    :pswitch_4e5
    if-nez v11, :cond_509

    .line 3522
    if-eqz p6, :cond_509

    .line 3525
    move-object/from16 v0, p0

    iget-object v0, v0, mCurMethodId:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4fd

    move-object/from16 v0, p0

    iget-object v0, v0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_4fd

    .line 3526
    const/16 v21, 0x0

    .line 3528
    :cond_4fd
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3534
    :cond_509
    move-object/from16 v0, p0

    iget-object v0, v0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0
    :try_end_50f
    .catchall {:try_start_3f6 .. :try_end_50f} :catchall_1bf

    if-eqz v27, :cond_526

    .line 3535
    if-eqz v21, :cond_526

    .line 3537
    :try_start_513
    move-object/from16 v0, p0

    iget-object v0, v0, mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setCurrentInputMethodClient(Landroid/os/IBinder;)V
    :try_end_526
    .catch Landroid/os/RemoteException; {:try_start_513 .. :try_end_526} :catch_6a1
    .catchall {:try_start_513 .. :try_end_526} :catchall_1bf

    .line 3544
    :cond_526
    :goto_526
    :try_start_526
    monitor-exit v28
    :try_end_527
    .catchall {:try_start_526 .. :try_end_527} :catchall_1bf

    .line 3546
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v27, v25

    .line 3549
    goto/16 :goto_2fd

    .line 3383
    .end local v10    # "deviceType":Ljava/lang/String;
    .end local v11    # "didStart":Z
    .end local v12    # "doAutoShow":Z
    .end local v22    # "isTextEditor":Z
    .end local v23    # "isWritingBuddyShown":Z
    :cond_52e
    :try_start_52e
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 3385
    .local v24, "lastImeId":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_473

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v14

    .line 3387
    .local v14, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v14, :cond_5a4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_5a4

    .line 3388
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_568
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_5a4

    .line 3389
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodInfo;

    .line 3390
    .restart local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v20, :cond_5a1

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5a1

    .line 3391
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, setInputMethodLocked(Ljava/lang/String;I)V

    .line 3388
    :cond_5a1
    add-int/lit8 v15, v15, 0x1

    goto :goto_568

    .line 3395
    .end local v15    # "i":I
    .end local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5a4
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    const-string v30, ""

    move-object/from16 v0, p0

    iget-object v0, v0, mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v31

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_473

    .line 3409
    .end local v14    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v24    # "lastImeId":Ljava/lang/String;
    :cond_5ca
    const/4 v12, 0x0

    goto/16 :goto_498

    .line 3414
    .restart local v12    # "doAutoShow":Z
    :cond_5cd
    const/16 v22, 0x0

    goto/16 :goto_49e

    .line 3418
    .restart local v22    # "isTextEditor":Z
    :cond_5d1
    const/16 v23, 0x0

    goto/16 :goto_4a6

    .line 3429
    .restart local v10    # "deviceType":Ljava/lang/String;
    .restart local v23    # "isWritingBuddyShown":Z
    :cond_5d5
    const/4 v12, 0x0

    goto/16 :goto_4df

    .line 3445
    .restart local v11    # "didStart":Z
    :pswitch_5d8
    if-eqz v22, :cond_5dc

    if-nez v12, :cond_5f3

    .line 3446
    :cond_5dc
    invoke-static/range {p5 .. p5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v27

    if-eqz v27, :cond_4e5

    .line 3452
    const/16 v21, 0x0

    .line 3453
    const/16 v27, 0x2

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_4e5

    .line 3455
    :cond_5f3
    if-eqz v22, :cond_4e5

    if-eqz v12, :cond_4e5

    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_4e5

    .line 3465
    if-eqz p6, :cond_622

    .line 3468
    move-object/from16 v0, p0

    iget-object v0, v0, mCurMethodId:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_615

    move-object/from16 v0, p0

    iget-object v0, v0, mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_615

    .line 3469
    const/16 v21, 0x0

    .line 3471
    :cond_615
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3473
    const/4 v11, 0x1

    .line 3475
    :cond_622
    if-nez v23, :cond_4e5

    .line 3476
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_4e5

    .line 3484
    :pswitch_633
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_4e5

    .line 3487
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_4e5

    .line 3492
    :pswitch_64a
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_4e5

    .line 3495
    :pswitch_659
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_4e5

    .line 3498
    if-eqz p6, :cond_670

    .line 3499
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3501
    const/4 v11, 0x1

    .line 3503
    :cond_670
    if-nez v23, :cond_4e5

    .line 3504
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_4e5

    .line 3510
    :pswitch_681
    if-eqz p6, :cond_690

    .line 3511
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3513
    const/4 v11, 0x1

    .line 3515
    :cond_690
    if-nez v23, :cond_4e5

    .line 3516
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_69f
    .catchall {:try_start_52e .. :try_end_69f} :catchall_1bf

    goto/16 :goto_4e5

    .line 3538
    :catch_6a1
    move-exception v27

    goto/16 :goto_526

    .line 3443
    :pswitch_data_6a4
    .packed-switch 0x0
        :pswitch_5d8
        :pswitch_4e5
        :pswitch_633
        :pswitch_64a
        :pswitch_659
        :pswitch_681
    .end packed-switch
.end method
