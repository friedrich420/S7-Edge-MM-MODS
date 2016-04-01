.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$UserState;,
        Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;,
        Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;,
        Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;,
        Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service;,
        Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;,
        Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final DISABLE_MAGNIFIER:Ljava/lang/String; = "disableMagnifier"

.field private static final ENABLE_MAGNIFIER:Ljava/lang/String; = "enableMagnifier"

.field private static final FUNCTION_DUMP:Ljava/lang/String; = "dump"

.field private static final FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE:Ljava/lang/String; = "registerUiTestAutomationService"

.field private static final GET_CLEARABLE_ACTIVE_NOTIFICATIONS_COUNT:Ljava/lang/String; = "getClearableActiveNotificationsCount"

.field private static final GET_WINDOW_TOKEN:Ljava/lang/String; = "getWindowToken"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final MESSAGE_ASSISTANT_PLUS:I = 0x1

.field private static final OWN_PROCESS_ID:I

.field private static final SET_MAGNIFICATION_SPEC:Ljava/lang/String; = "setMagnificationSpec"

.field private static final SET_SCREEN_CURTAIN:Ljava/lang/String; = "setScreenCurtain"

.field private static final SPEAK_DARK_SCREEN_STATE_DELAY_TIME:I = 0x9c4

.field private static final TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED:Ljava/lang/String; = "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

.field private static final WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS:I = 0xbb8

.field private static final WAIT_WINDOWS_TIMEOUT_MILLIS:I = 0x1388

.field private static final WINDOW_ID_UNKNOWN:I = -0x1

.field private static mConfirm:Z

.field private static final sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

.field private static sIdCounter:I

.field private static sNextWindowId:I


# instance fields
.field private final VOICE_ASSISTANT_PACKAGE_NAME:Ljava/lang/String;

.field cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

.field private isIMEOpen:Z

.field private isIMEVisible:Z

.field private isUniversalSwitchEnabled:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAssistantMenuMsgnr:Landroid/os/Messenger;

.field private mBTKeyboardState:Z

.field mCVDSeverity:F

.field mCVDType:I

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurtainModeIsRunning:Z

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field private final mEnabledServicesForFeedbackTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureListenerForLauncherMsngr:Landroid/os/Messenger;

.field private mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

.field private final mGlobalClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInputFilter:Z

.field private mInitialized:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mTempAccessibilityServiceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempComponentNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mUserManager:Landroid/os/UserManager;

.field mUserParameter:F

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWarningToast:Landroid/widget/Toast;

.field private final mWindowManagerService:Landroid/view/WindowManagerInternal;

.field private mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

.field private shouldRecogniseTwoFingerGestures:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 191
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "foo.bar"

    const-string v2, "FakeService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    .line 200
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, OWN_PROCESS_ID:I

    .line 206
    sput v3, sIdCounter:I

    .line 210
    sput-boolean v3, mConfirm:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 415
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 196
    const-string v3, "com.samsung.android.app.talkback"

    iput-object v3, p0, VOICE_ASSISTANT_PACKAGE_NAME:Ljava/lang/String;

    .line 214
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, mLock:Ljava/lang/Object;

    .line 216
    new-instance v3, Landroid/util/Pools$SimplePool;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v3, p0, mPendingEventPool:Landroid/util/Pools$Pool;

    .line 219
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v3, p0, mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 225
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mTempRect:Landroid/graphics/Rect;

    .line 227
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mTempRect1:Landroid/graphics/Rect;

    .line 229
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, mTempPoint:Landroid/graphics/Point;

    .line 251
    iput-boolean v2, p0, isIMEVisible:Z

    .line 253
    iput-boolean v2, p0, isIMEOpen:Z

    .line 255
    iput-boolean v2, p0, mBTKeyboardState:Z

    .line 258
    const-string/jumbo v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    iput-object v3, p0, mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 266
    iput-boolean v2, p0, isUniversalSwitchEnabled:Z

    .line 273
    iput-boolean v2, p0, shouldRecogniseTwoFingerGestures:Z

    .line 280
    iput-object v7, p0, mAssistantMenuMsgnr:Landroid/os/Messenger;

    .line 287
    iput-object v7, p0, mGestureListenerForLauncherMsngr:Landroid/os/Messenger;

    .line 297
    iput-object v7, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 298
    iput-boolean v2, p0, mCurtainModeIsRunning:Z

    .line 321
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 332
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 376
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, mTempComponentNameSet:Ljava/util/Set;

    .line 378
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mTempAccessibilityServiceInfoList:Ljava/util/List;

    .line 381
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 384
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 387
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 389
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, mUserStates:Landroid/util/SparseArray;

    .line 395
    iput v2, p0, mCurrentUserId:I

    .line 398
    const/4 v3, 0x3

    iput v3, p0, mCVDType:I

    .line 399
    const/4 v3, 0x0

    iput v3, p0, mCVDSeverity:F

    .line 400
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, mUserParameter:F

    .line 416
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 418
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v5, 0x103012b

    invoke-direct {v3, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, mContext:Landroid/content/Context;

    .line 421
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 422
    const-class v3, Landroid/view/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerInternal;

    iput-object v3, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    .line 423
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, mUserManager:Landroid/os/UserManager;

    .line 424
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 425
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 426
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 427
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "display"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 428
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, mDefaultDisplay:Landroid/view/Display;

    .line 429
    invoke-direct {p0}, registerBroadcastReceivers()V

    .line 430
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v5, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v3, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 433
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_118

    move v2, v4

    .line 434
    .local v2, "mProvisioned":Z
    :cond_118
    if-nez v2, :cond_12c

    .line 435
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, v5, v6}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, mTts:Landroid/speech/tts/TextToSpeech;

    .line 436
    iget-object v3, p0, mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v3, v5}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 439
    :cond_12c
    invoke-static {p1}, Lcom/android/server/accessibility/GestureWakeup;->getInstance(Landroid/content/Context;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v3

    iput-object v3, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 440
    iget-object v3, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v4, :cond_13f

    .line 441
    iget-object v3, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {v3}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    .line 444
    :cond_13f
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;

    invoke-direct {v4, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$DirectAccessBrocastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    new-instance v3, Lcom/android/server/accessibility/CVDCalculator;

    invoke-direct {v3}, Lcom/android/server/accessibility/CVDCalculator;-><init>()V

    iput-object v3, p0, cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 449
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Set;
    .param p3, "x3"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-boolean v0, p0, mCurtainModeIsRunning:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, mCurtainModeIsRunning:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, switchUser(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, removeUser(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-boolean v0, p0, isIMEVisible:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, isIMEVisible:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-boolean v0, p0, isIMEOpen:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, isIMEOpen:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-boolean v0, p0, mBTKeyboardState:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, mBTKeyboardState:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-boolean v0, p0, mHasInputFilter:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mGlobalClients:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 158
    invoke-direct {p0, p1}, showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    invoke-direct {p0}, getInteractionBridgeLocked()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object v0
.end method

.method static synthetic access$3708()I
    .registers 2

    .prologue
    .line 158
    sget v0, sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, sIdCounter:I

    return v0
.end method

.method static synthetic access$3800()Landroid/content/ComponentName;
    .registers 1

    .prologue
    .line 158
    sget-object v0, sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "x2"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mWarningToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 158
    iput-object p1, p0, mWarningToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "x2"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, addServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    invoke-direct {p0}, ensureWindowsAvailableTimed()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mGlobalInteractionConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, obtainPendingEventLocked(Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .prologue
    .line 158
    invoke-direct {p0, p1}, recyclePendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 158
    invoke-direct {p0, p1}, findWindowIdLocked(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$5800()I
    .registers 1

    .prologue
    .line 158
    sget v0, OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    invoke-direct {p0}, talkbackOffWarning()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    invoke-direct {p0}, checkTalkbackEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readOverlayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/speech/tts/TextToSpeech;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, updateDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readHWkeysDoubleTapEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readSTalkBackSettingsEnabled(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 158
    invoke-direct {p0, p1}, readUnivervalSwitchEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    iget v0, p0, mCurrentUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 158
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private addServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2498
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.universalswitch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2499
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeathLocked()V

    .line 2503
    :goto_11
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    :goto_1d
    return-void

    .line 2501
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onAdded()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_11

    .line 2505
    :catch_22
    move-exception v0

    goto :goto_1d
.end method

.method private canDispatchEventToServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z
    .registers 11
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "handledFeedbackTypes"    # I

    .prologue
    const/4 v4, 0x0

    .line 2541
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2568
    :cond_7
    :goto_7
    return v4

    .line 2545
    :cond_8
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1b

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v5

    if-nez v5, :cond_1b

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    .line 2551
    :cond_1b
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 2552
    .local v0, "eventType":I
    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_7

    .line 2556
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 2557
    .local v3, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4c

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2560
    .local v2, "packageName":Ljava/lang/String;
    :goto_34
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2561
    :cond_40
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 2562
    .local v1, "feedbackType":I
    and-int v5, p3, v1

    if-ne v5, v1, :cond_4a

    const/16 v5, 0x10

    if-ne v1, v5, :cond_7

    .line 2564
    :cond_4a
    const/4 v4, 0x1

    goto :goto_7

    .line 2557
    .end local v1    # "feedbackType":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4c
    const/4 v2, 0x0

    goto :goto_34
.end method

.method private canRequestAndRequestsEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v0, 0x0

    .line 3251
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestEnhancedWebAccessibility:Z

    if-nez v1, :cond_c

    .line 3258
    :cond_b
    :goto_b
    return v0

    .line 3254
    :cond_c
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 3256
    :cond_1a
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 7
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3199
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canReceiveEventsLocked()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 3229
    :cond_d
    :goto_d
    return v1

    .line 3203
    :cond_e
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v3, :cond_d

    .line 3206
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x11

    if-gt v3, v4, :cond_46

    .line 3211
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {p0, v3}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 3212
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3214
    iget-object v1, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3a

    iget-object v1, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_44

    .line 3216
    :cond_3a
    iget-object v1, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_44
    move v1, v2

    .line 3229
    goto :goto_d

    .line 3224
    :cond_46
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_44

    goto :goto_d
.end method

.method private checkTalkbackEnable()Z
    .registers 6

    .prologue
    .line 1374
    const/4 v1, 0x0

    .line 1375
    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enabled_accessibility_services"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1377
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 1378
    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_21
    const/4 v1, 0x1

    .line 1380
    :goto_22
    const-string v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTalkbackEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", accesibilityService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_44
    return v1

    .line 1378
    :cond_45
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private checkUniversalSwitchState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 11
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3090
    const-string v5, "AccessibilityManagerService"

    const-string v6, "checkUniversalSwitchState start:"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "universal_switch_enabled"

    invoke-static {v5, v6, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_35

    move v2, v3

    .line 3094
    .local v2, "universalSwitchEnabled":Z
    :goto_1a
    const-string v5, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUniversalSwitchState universalSwitchEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    if-nez v2, :cond_37

    .line 3117
    :cond_34
    :goto_34
    return v4

    .end local v2    # "universalSwitchEnabled":Z
    :cond_35
    move v2, v4

    .line 3091
    goto :goto_1a

    .line 3099
    .restart local v2    # "universalSwitchEnabled":Z
    :cond_37
    const-string v0, "com.samsung.android.universalswitch"

    .line 3101
    .local v0, "UNIVERSAL_SWITCH_NAME":Ljava/lang/String;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enabled_accessibility_services"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3105
    .local v1, "enabledServicesSetting":Ljava/lang/String;
    const-string v5, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUniversalSwitchState enabledServicesSetting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    if-eqz v1, :cond_34

    .line 3111
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_34

    .line 3114
    const-string v5, "com.samsung.android.universalswitch"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v4, v3

    .line 3115
    goto :goto_34
.end method

.method private static compareLocales(Ljava/util/Locale;Ljava/util/Locale;)I
    .registers 6
    .param p0, "primary"    # Ljava/util/Locale;
    .param p1, "other"    # Ljava/util/Locale;

    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "lang":Ljava/lang/String;
    if-eqz v1, :cond_10

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 902
    :cond_10
    const/4 v3, 0x0

    .line 915
    :goto_11
    return v3

    .line 905
    :cond_12
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_22

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 907
    :cond_22
    const/4 v3, 0x1

    goto :goto_11

    .line 910
    :cond_24
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, "variant":Ljava/lang/String;
    if-eqz v2, :cond_34

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 912
    :cond_34
    const/4 v3, 0x2

    goto :goto_11

    .line 915
    :cond_36
    const/4 v3, 0x3

    goto :goto_11
.end method

.method private curtainModeWarning(Ljava/lang/String;)V
    .registers 4
    .param p1, "descriptionText"    # Ljava/lang/String;

    .prologue
    .line 676
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    iput-object v1, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 677
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 678
    .local v0, "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v1, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_1e

    .line 680
    iget-object v1, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 682
    :cond_1e
    return-void
.end method

.method private ensureWindowsAvailableTimed()V
    .registers 13

    .prologue
    .line 3608
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3609
    :try_start_3
    iget-object v7, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v7, :cond_b

    .line 3610
    monitor-exit v8

    .line 3638
    :goto_a
    return-void

    .line 3614
    :cond_b
    iget-object v7, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v7, :cond_16

    .line 3615
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v6

    .line 3616
    .local v6, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v6}, onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3619
    .end local v6    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_16
    iget-object v7, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v7, :cond_1f

    .line 3620
    monitor-exit v8

    goto :goto_a

    .line 3637
    :catchall_1c
    move-exception v7

    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v7

    .line 3624
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3625
    .local v4, "startMillis":J
    :goto_23
    iget-object v7, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v7, :cond_43

    .line 3626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v4

    .line 3627
    .local v0, "elapsedMillis":J
    const-wide/16 v10, 0x1388

    sub-long v2, v10, v0

    .line 3628
    .local v2, "remainMillis":J
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-gtz v7, :cond_3b

    .line 3629
    monitor-exit v8
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_1c

    goto :goto_a

    .line 3632
    :cond_3b
    :try_start_3b
    iget-object v7, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v7, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_1c

    goto :goto_23

    .line 3633
    :catch_41
    move-exception v7

    goto :goto_23

    .line 3637
    .end local v0    # "elapsedMillis":J
    .end local v2    # "remainMillis":J
    :cond_43
    :try_start_43
    monitor-exit v8
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_1c

    goto :goto_a
.end method

.method private findWindowIdLocked(Landroid/os/IBinder;)I
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3554
    iget-object v3, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 3555
    .local v0, "globalIndex":I
    if-ltz v0, :cond_f

    .line 3556
    iget-object v3, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3563
    :goto_e
    return v3

    .line 3558
    :cond_f
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 3559
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 3560
    .local v1, "userIndex":I
    if-ltz v1, :cond_22

    .line 3561
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    goto :goto_e

    .line 3563
    :cond_22
    const/4 v3, -0x1

    goto :goto_e
.end method

.method private getBestAvailableLocale()Ljava/util/Locale;
    .registers 12

    .prologue
    .line 866
    iget-object v10, p0, mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v10, :cond_6

    .line 867
    const/4 v0, 0x0

    .line 896
    :cond_5
    :goto_5
    return-object v0

    .line 870
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 873
    .local v0, "PREFERRED_FALLBACK_LOCALE":Ljava/util/Locale;
    iget-object v10, p0, mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v10

    if-gez v10, :cond_5

    .line 879
    const/4 v2, 0x0

    .line 880
    .local v2, "bestLocale":Ljava/util/Locale;
    const/4 v3, -0x1

    .line 882
    .local v3, "bestScore":I
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v7

    .line 883
    .local v7, "locales":[Ljava/util/Locale;
    move-object v1, v7

    .local v1, "arr$":[Ljava/util/Locale;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_19
    if-ge v4, v5, :cond_39

    aget-object v6, v1, v4

    .line 884
    .local v6, "locale":Ljava/util/Locale;
    iget-object v10, p0, mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10, v6}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v9

    .line 885
    .local v9, "status":I
    invoke-static {v9}, isNotAvailableStatus(I)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 883
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 889
    :cond_2c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10, v6}, compareLocales(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v8

    .line 890
    .local v8, "score":I
    if-le v8, v3, :cond_29

    .line 891
    move-object v2, v6

    .line 892
    move v3, v8

    goto :goto_29

    .end local v6    # "locale":Ljava/util/Locale;
    .end local v8    # "score":I
    .end local v9    # "status":I
    :cond_39
    move-object v0, v2

    .line 896
    goto :goto_5
.end method

.method private getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    .registers 4
    .param p1, "windowId"    # I

    .prologue
    .line 3270
    iget-object v1, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 3271
    .local v0, "windowToken":Landroid/os/IBinder;
    if-nez v0, :cond_16

    .line 3272
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "windowToken":Landroid/os/IBinder;
    check-cast v0, Landroid/os/IBinder;

    .line 3274
    .restart local v0    # "windowToken":Landroid/os/IBinder;
    :cond_16
    if-eqz v0, :cond_1f

    .line 3275
    iget-object v1, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1, v0}, Landroid/view/WindowManagerInternal;->getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 3278
    :goto_1e
    return-object v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 2

    .prologue
    .line 407
    iget v0, p0, mCurrentUserId:I

    invoke-direct {p0, v0}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1284
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1286
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_12

    .line 1287
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 1306
    :cond_11
    return-object v4

    .line 1290
    :cond_12
    const/16 v0, 0x3a

    .line 1291
    .local v0, "ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR":C
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1293
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1294
    .local v4, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .line 1295
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1297
    :cond_24
    :goto_24
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1298
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1301
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_24

    .line 1302
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method private getInteractionBridgeLocked()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .registers 2

    .prologue
    .line 2269
    iget-object v0, p0, mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    if-nez v0, :cond_b

    .line 2270
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 2272
    :cond_b
    iget-object v0, p0, mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1467
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1468
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_14

    .line 1469
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .end local v0    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 1470
    .restart local v0    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1472
    :cond_14
    return-object v0
.end method

.method private hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 945
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 946
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 948
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_7
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    .line 952
    :goto_a
    return v1

    .line 949
    :catch_b
    move-exception v0

    .line 950
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private hasRunningServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 3266
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isDirectAccessDBEnabled(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1316
    const/4 v0, 0x0

    .line 1318
    .local v0, "actionCheckNum":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_accessibility"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_13

    .line 1320
    add-int/lit8 v0, v0, 0x1

    .line 1322
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_talkback"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_22

    .line 1324
    add-int/lit8 v0, v0, 0x1

    .line 1326
    :cond_22
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.app.talkback"

    invoke-direct {p0, v3, v4}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1327
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_s_talkback"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_3b

    .line 1329
    add-int/lit8 v0, v0, 0x1

    .line 1332
    :cond_3b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_samsung_screen_reader"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4a

    .line 1334
    add-int/lit8 v0, v0, 0x1

    .line 1336
    :cond_4a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_universal_switch"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_59

    .line 1338
    add-int/lit8 v0, v0, 0x1

    .line 1340
    :cond_59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_negative"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_68

    .line 1342
    add-int/lit8 v0, v0, 0x1

    .line 1344
    :cond_68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_greyscale"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_77

    .line 1346
    add-int/lit8 v0, v0, 0x1

    .line 1348
    :cond_77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_color_adjustment"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_92

    .line 1350
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind_test"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_92

    .line 1352
    add-int/lit8 v0, v0, 0x1

    .line 1355
    :cond_92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_access_control"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_ad

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_ad

    .line 1358
    add-int/lit8 v0, v0, 0x1

    .line 1360
    :cond_ad
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_ba

    .line 1362
    const/4 v0, 0x1

    .line 1364
    :cond_ba
    if-lez v0, :cond_bd

    :goto_bc
    return v1

    :cond_bd
    move v1, v2

    goto :goto_bc
.end method

.method private static isNotAvailableStatus(I)Z
    .registers 3
    .param p0, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 854
    if-eqz p0, :cond_9

    if-eq p0, v0, :cond_9

    const/4 v1, 0x2

    if-eq p0, v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 13
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v10, 0x0

    .line 2649
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 2651
    .local v1, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    iget-boolean v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 2653
    .local v5, "isEnabled":Z
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_c
    if-ge v3, v2, :cond_75

    .line 2654
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2655
    .local v4, "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2657
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2659
    .local v6, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    if-eqz v5, :cond_69

    .line 2660
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 2661
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 2653
    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2668
    :cond_39
    const-string v7, "AccessibilityManagerService"

    const-string v8, "Service turned off in binding stage itself"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2672
    :cond_45
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 2673
    if-nez v6, :cond_5a

    .line 2674
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .end local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-direct {v6, p0, v7, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2678
    .restart local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_56
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bindLocked()Z

    goto :goto_36

    .line 2675
    :cond_5a
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    goto :goto_36

    .line 2680
    :cond_63
    if-eqz v6, :cond_36

    .line 2681
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    goto :goto_36

    .line 2685
    :cond_69
    if-eqz v6, :cond_6f

    .line 2686
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    goto :goto_36

    .line 2688
    :cond_6f
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_36

    .line 2695
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_75
    if-eqz v5, :cond_96

    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_96

    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_96

    .line 2697
    iput-boolean v10, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 2698
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_enabled"

    iget v9, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2701
    :cond_96
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "isDefault"    # Z

    .prologue
    .line 2477
    :try_start_0
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 2478
    .local v3, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_b
    if-ge v1, v0, :cond_2f

    .line 2479
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2481
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v4, p2, :cond_2b

    .line 2482
    iget v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    invoke-direct {p0, v2, p1, v4}, canDispatchEventToServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2484
    iget v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    iget v5, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    .line 2485
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_2b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_2b} :catch_2e

    .line 2478
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2489
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v3    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_2e
    move-exception v4

    .line 2494
    :cond_2f
    return-void
.end method

.method private notifyClearAccessibilityCacheLocked()V
    .registers 5

    .prologue
    .line 2322
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 2323
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1c

    .line 2324
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2325
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyClearAccessibilityNodeInfoCache()V

    .line 2323
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 2327
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1c
    return-void
.end method

.method private notifyGestureLocked(IZ)Z
    .registers 7
    .param p1, "gestureId"    # I
    .param p2, "isDefault"    # Z

    .prologue
    .line 2285
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 2286
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_26

    .line 2287
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2288
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v3, :cond_23

    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v3, p2, :cond_23

    .line 2289
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGesture(I)V

    .line 2290
    const/4 v3, 0x1

    .line 2293
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_22
    return v3

    .line 2286
    .restart local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 2293
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_26
    const/4 v3, 0x0

    goto :goto_22
.end method

.method private notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isDefault"    # Z

    .prologue
    .line 2303
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 2304
    .local v2, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_30

    .line 2305
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2308
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    if-eqz v3, :cond_24

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_27

    .line 2304
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 2313
    :cond_27
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v3, p3, :cond_24

    .line 2314
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyKeyEvent(Landroid/view/KeyEvent;I)V

    .line 2315
    const/4 v3, 0x1

    .line 2318
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_2f
    return v3

    :cond_30
    const/4 v3, 0x0

    goto :goto_2f
.end method

.method private obtainPendingEventLocked(Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "sequence"    # I

    .prologue
    .line 3538
    iget-object v1, p0, mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 3539
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    if-nez v0, :cond_10

    .line 3540
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    .line 3542
    .restart local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_10
    iput-object p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    .line 3543
    iput p2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->policyFlags:I

    .line 3544
    iput p3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    .line 3545
    return-object v0
.end method

.method private onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2844
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitialized:Z

    .line 2845
    invoke-direct {p0, p1}, updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2846
    invoke-direct {p0, p1}, updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2847
    invoke-direct {p0, p1}, updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2848
    invoke-direct {p0, p1}, updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2849
    invoke-direct {p0, p1}, updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2850
    invoke-direct {p0, p1}, updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2851
    invoke-direct {p0, p1}, updateEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2852
    invoke-direct {p0, p1}, updateDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2853
    invoke-direct {p0, p1}, scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2854
    invoke-direct {p0, p1}, scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2855
    return-void
.end method

.method private persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 9
    .param p1, "settingName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2637
    .local p2, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2638
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2639
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 2640
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2642
    :cond_20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2644
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_28
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2646
    return-void
.end method

.method private readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3009
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1a

    move v0, v1

    .line 3012
    .local v0, "accessibilityEnabled":Z
    :goto_13
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eq v0, v3, :cond_1c

    .line 3013
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 3016
    :goto_19
    return v1

    .end local v0    # "accessibilityEnabled":Z
    :cond_1a
    move v0, v2

    .line 3009
    goto :goto_13

    .restart local v0    # "accessibilityEnabled":Z
    :cond_1c
    move v1, v2

    .line 3016
    goto :goto_19
.end method

.method private readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .registers 6
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2592
    .local p3, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2594
    .local v0, "settingValue":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 2595
    return-void
.end method

.method private readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 8
    .param p1, "names"    # Ljava/lang/String;
    .param p3, "doMerge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2609
    .local p2, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-nez p3, :cond_5

    .line 2610
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 2612
    :cond_5
    if-eqz p1, :cond_28

    .line 2613
    iget-object v1, p0, mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2614
    .local v1, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2615
    :cond_c
    :goto_c
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2616
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 2617
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 2620
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2621
    .local v0, "enabledService":Landroid/content/ComponentName;
    if-eqz v0, :cond_c

    .line 2622
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2626
    .end local v0    # "enabledService":Landroid/content/ComponentName;
    .end local v1    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v2    # "str":Ljava/lang/String;
    :cond_28
    return-void
.end method

.method private readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2988
    invoke-direct {p0, p1}, readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    .line 2989
    .local v0, "somthingChanged":Z
    invoke-direct {p0, p1}, readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2990
    invoke-direct {p0, p1}, readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2991
    invoke-direct {p0, p1}, readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2992
    invoke-direct {p0, p1}, readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2993
    invoke-direct {p0, p1}, readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2994
    invoke-direct {p0, p1}, readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2995
    invoke-direct {p0, p1}, readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2996
    invoke-direct {p0, p1}, readDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2997
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.talkback"

    invoke-direct {p0, v1, v2}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2998
    invoke-direct {p0, p1}, readHWkeysDoubleTapEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2999
    invoke-direct {p0, p1}, readSTalkBackSettingsEnabled(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3003
    :cond_40
    invoke-direct {p0, p1}, readUnivervalSwitchEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3005
    return v0
.end method

.method private readDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 3121
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->hasAdjustments(Landroid/content/Context;I)Z

    move-result v0

    .line 3123
    .local v0, "displayAdjustmentsEnabled":Z
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHasDisplayColorAdjustment:Z

    if-eq v0, v1, :cond_f

    .line 3124
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHasDisplayColorAdjustment:Z

    .line 3125
    const/4 v0, 0x1

    .line 3129
    .end local v0    # "displayAdjustmentsEnabled":Z
    :cond_f
    return v0
.end method

.method private readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3031
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1a

    move v0, v1

    .line 3035
    .local v0, "displayMagnificationEnabled":Z
    :goto_13
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eq v0, v3, :cond_1c

    .line 3036
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 3039
    :goto_19
    return v1

    .end local v0    # "displayMagnificationEnabled":Z
    :cond_1a
    move v0, v2

    .line 3031
    goto :goto_13

    .restart local v0    # "displayMagnificationEnabled":Z
    :cond_1c
    move v1, v2

    .line 3039
    goto :goto_19
.end method

.method private readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 22
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->clear()V

    .line 2395
    const-string/jumbo v17, "enabled_accessibility_services"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2400
    .local v5, "component_list_itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10c

    .line 2401
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ComponentName;

    .line 2402
    .local v16, "service_component":Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 2404
    .local v6, "component_name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v13

    .line 2405
    .local v13, "installedServiceCount":I
    const/4 v15, 0x0

    .line 2406
    .local v15, "isInstalled":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_49
    if-ge v11, v13, :cond_64

    .line 2407
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v14

    .line 2408
    .local v14, "installed_service_name":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_bb

    .line 2409
    const/4 v15, 0x1

    .line 2414
    .end local v14    # "installed_service_name":Ljava/lang/String;
    :cond_64
    if-nez v15, :cond_2d

    .line 2415
    const-string v17, "AccessibilityManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : removed from accessibility service because it is not installed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2418
    .local v8, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 2419
    .local v4, "accessibilityEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_9d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_be

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2420
    .local v7, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2422
    const/4 v4, 0x1

    .line 2423
    goto :goto_9d

    .line 2406
    .end local v4    # "accessibilityEnabled":Z
    .end local v7    # "enabledService":Landroid/content/ComponentName;
    .end local v8    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "installed_service_name":Ljava/lang/String;
    :cond_bb
    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    .line 2424
    .end local v14    # "installed_service_name":Ljava/lang/String;
    .restart local v4    # "accessibilityEnabled":Z
    .restart local v8    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_be
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 2425
    .local v9, "enabledServicesBuilderLength":I
    if-lez v9, :cond_cb

    .line 2426
    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2429
    :cond_cb
    const/4 v10, 0x0

    .line 2430
    .local v10, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "enabled_accessibility_services"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    if-eqz v4, :cond_109

    const/16 v17, 0x1

    :goto_f4
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->clear()V

    .line 2435
    const/16 v17, 0x0

    .line 2448
    .end local v4    # "accessibilityEnabled":Z
    .end local v6    # "component_name":Ljava/lang/String;
    .end local v8    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "enabledServicesBuilderLength":I
    .end local v10    # "enabledServicesSetting":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "installedServiceCount":I
    .end local v15    # "isInstalled":Z
    .end local v16    # "service_component":Landroid/content/ComponentName;
    :goto_108
    return v17

    .line 2432
    .restart local v4    # "accessibilityEnabled":Z
    .restart local v6    # "component_name":Ljava/lang/String;
    .restart local v8    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "enabledServicesBuilderLength":I
    .restart local v10    # "enabledServicesSetting":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "installedServiceCount":I
    .restart local v15    # "isInstalled":Z
    .restart local v16    # "service_component":Landroid/content/ComponentName;
    :cond_109
    const/16 v17, 0x0

    goto :goto_f4

    .line 2441
    .end local v4    # "accessibilityEnabled":Z
    .end local v6    # "component_name":Ljava/lang/String;
    .end local v8    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "enabledServicesBuilderLength":I
    .end local v10    # "enabledServicesSetting":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "installedServiceCount":I
    .end local v15    # "isInstalled":Z
    .end local v16    # "service_component":Landroid/content/ComponentName;
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_142

    .line 2442
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->clear()V

    .line 2443
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->clear()V

    .line 2445
    const/16 v17, 0x1

    goto :goto_108

    .line 2447
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, mTempComponentNameSet:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->clear()V

    .line 2448
    const/16 v17, 0x0

    goto :goto_108
.end method

.method private readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3059
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_script_injection"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1a

    move v0, v1

    .line 3062
    .local v0, "enhancedWeAccessibilityEnabled":Z
    :goto_13
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    if-eq v0, v3, :cond_1c

    .line 3063
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    .line 3066
    :goto_19
    return v1

    .end local v0    # "enhancedWeAccessibilityEnabled":Z
    :cond_1a
    move v0, v2

    .line 3059
    goto :goto_13

    .restart local v0    # "enhancedWeAccessibilityEnabled":Z
    :cond_1c
    move v1, v2

    .line 3066
    goto :goto_19
.end method

.method private readHWkeysDoubleTapEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3151
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_hwkey_doubletap_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1a

    move v0, v1

    .line 3154
    .local v0, "mHWkeysDoubleTapEnabled":Z
    :goto_13
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsHWkeysDoubleTapEnabled:Z

    if-eq v0, v3, :cond_1c

    .line 3155
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsHWkeysDoubleTapEnabled:Z

    .line 3158
    :goto_19
    return v1

    .end local v0    # "mHWkeysDoubleTapEnabled":Z
    :cond_1a
    move v0, v2

    .line 3151
    goto :goto_13

    .restart local v0    # "mHWkeysDoubleTapEnabled":Z
    :cond_1c
    move v1, v2

    .line 3158
    goto :goto_19
.end method

.method private readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3133
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "high_text_contrast_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1b

    move v0, v1

    .line 3137
    .local v0, "highTextContrastEnabled":Z
    :goto_14
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    if-eq v0, v3, :cond_1d

    .line 3138
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    .line 3141
    :goto_1a
    return v1

    .end local v0    # "highTextContrastEnabled":Z
    :cond_1b
    move v0, v2

    .line 3133
    goto :goto_14

    .restart local v0    # "highTextContrastEnabled":Z
    :cond_1d
    move v1, v2

    .line 3141
    goto :goto_1a
.end method

.method private readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 15
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2351
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2352
    :try_start_3
    iget-object v7, p0, mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2354
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v10, 0x8084

    iget v11, p0, mCurrentUserId:I

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 2361
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_1f
    if-ge v2, v1, :cond_81

    .line 2362
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2363
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2364
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string v7, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 2366
    const-string v7, "AccessibilityManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping accessibilty service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": it does not require the permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_7e

    .line 2361
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 2374
    :cond_67
    :try_start_67
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 2375
    .local v0, "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v7, p0, mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_73} :catch_a7
    .catchall {:try_start_67 .. :try_end_73} :catchall_7e

    goto :goto_64

    .line 2376
    .end local v0    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catch_74
    move-exception v7

    move-object v6, v7

    .line 2377
    .local v6, "xppe":Ljava/lang/Exception;
    :goto_76
    :try_start_76
    const-string v7, "AccessibilityManagerService"

    const-string v9, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v7, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 2390
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "xppe":Ljava/lang/Exception;
    :catchall_7e
    move-exception v7

    monitor-exit v8
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_7e

    throw v7

    .line 2381
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_81
    :try_start_81
    iget-object v7, p0, mTempAccessibilityServiceInfoList:Ljava/util/List;

    iget-object v9, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9f

    .line 2382
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2383
    iget-object v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v9, p0, mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2384
    iget-object v7, p0, mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2385
    const/4 v7, 0x1

    monitor-exit v8

    .line 2389
    :goto_9e
    return v7

    .line 2388
    :cond_9f
    iget-object v7, p0, mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2389
    const/4 v7, 0x0

    monitor-exit v8
    :try_end_a6
    .catchall {:try_start_81 .. :try_end_a6} :catchall_7e

    goto :goto_9e

    .line 2376
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_a7
    move-exception v7

    move-object v6, v7

    goto :goto_76
.end method

.method private readOverlayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 9
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3044
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_magnifier"

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_2c

    move v0, v2

    .line 3048
    .local v0, "overlayMagnificationEnabled":Z
    :goto_13
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sidesync_source_connect"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2e

    move v1, v2

    .line 3050
    .local v1, "sideSyncConnected":Z
    :goto_23
    if-nez v1, :cond_30

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    if-eq v0, v4, :cond_30

    .line 3051
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    .line 3054
    :goto_2b
    return v2

    .end local v0    # "overlayMagnificationEnabled":Z
    .end local v1    # "sideSyncConnected":Z
    :cond_2c
    move v0, v3

    .line 3044
    goto :goto_13

    .restart local v0    # "overlayMagnificationEnabled":Z
    :cond_2e
    move v1, v3

    .line 3048
    goto :goto_23

    .restart local v1    # "sideSyncConnected":Z
    :cond_30
    move v2, v3

    .line 3054
    goto :goto_2b
.end method

.method private readSTalkBackSettingsEnabled(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3168
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enabled_accessibility_s_talkback"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1b

    move v0, v1

    .line 3171
    .local v0, "mSTalkBackSettingsEnabled":Z
    :goto_14
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilitySTalkBackEnabled:Z

    if-eq v0, v3, :cond_1d

    .line 3172
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilitySTalkBackEnabled:Z

    .line 3175
    :goto_1a
    return v1

    .end local v0    # "mSTalkBackSettingsEnabled":Z
    :cond_1b
    move v0, v2

    .line 3168
    goto :goto_14

    .restart local v0    # "mSTalkBackSettingsEnabled":Z
    :cond_1d
    move v1, v2

    .line 3175
    goto :goto_1a
.end method

.method private readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3020
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "touch_exploration_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1b

    move v0, v1

    .line 3023
    .local v0, "touchExplorationEnabled":Z
    :goto_14
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v3, :cond_1d

    .line 3024
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 3027
    :goto_1a
    return v1

    .end local v0    # "touchExplorationEnabled":Z
    :cond_1b
    move v0, v2

    .line 3020
    goto :goto_14

    .restart local v0    # "touchExplorationEnabled":Z
    :cond_1d
    move v1, v2

    .line 3027
    goto :goto_1a
.end method

.method private readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2453
    iget-object v0, p0, mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2454
    const-string/jumbo v0, "touch_exploration_granted_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p0, mTempComponentNameSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2457
    iget-object v0, p0, mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2458
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2459
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2460
    iget-object v0, p0, mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2461
    const/4 v0, 0x1

    .line 2464
    :goto_2b
    return v0

    .line 2463
    :cond_2c
    iget-object v0, p0, mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2464
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private readUnivervalSwitchEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3075
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_switch_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_37

    move v0, v1

    .line 3078
    .local v0, "universalSwitchEnabled":Z
    :goto_14
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    if-eq v0, v3, :cond_39

    .line 3079
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    .line 3080
    iput-boolean v0, p0, isUniversalSwitchEnabled:Z

    .line 3081
    const-string v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed the state of universalSwitchEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    :goto_36
    return v1

    .end local v0    # "universalSwitchEnabled":Z
    :cond_37
    move v0, v2

    .line 3075
    goto :goto_14

    .restart local v0    # "universalSwitchEnabled":Z
    :cond_39
    move v1, v2

    .line 3085
    goto :goto_36
.end method

.method private recyclePendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .registers 3
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .prologue
    .line 3549
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->clear()V

    .line 3550
    iget-object v0, p0, mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 3551
    return-void
.end method

.method private registerBroadcastReceivers()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1476
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$8;

    invoke-direct {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$8;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1573
    .local v6, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1576
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1577
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1578
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1579
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1580
    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1582
    const-string v0, "ResponseAxT9Info"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1583
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$9;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1653
    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .registers 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1917
    .local p2, "windowTokens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local p3, "interactionConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1918
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_24

    .line 1919
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_21

    .line 1920
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1921
    .local v2, "windowId":I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1922
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 1923
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    .line 1924
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1928
    .end local v2    # "windowId":I
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :goto_20
    return v2

    .line 1918
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1928
    :cond_24
    const/4 v2, -0x1

    goto :goto_20
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .registers 5
    .param p1, "windowId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2337
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    .line 2338
    iget-object v1, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2339
    iget-object v1, p0, mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2348
    :goto_d
    return-void

    .line 2341
    :cond_e
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2342
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2343
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d
.end method

.method private removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2516
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2517
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.universalswitch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2519
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeathLocked()V

    .line 2523
    :goto_1d
    return-void

    .line 2521
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onRemoved()V

    goto :goto_1d
.end method

.method private removeUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2239
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2240
    :try_start_3
    iget-object v0, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2241
    monitor-exit v1

    .line 2242
    return-void

    .line 2241
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2704
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v0

    .line 2705
    .local v0, "clientState":I
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    if-eq v1, v0, :cond_26

    iget-object v1, p0, mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_18

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_26

    .line 2708
    :cond_18
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    .line 2709
    iget-object v1, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v2, 0x2

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2712
    :cond_26
    return-void
.end method

.method private scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2715
    iget-object v0, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2716
    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 2792
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2793
    :try_start_3
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2796
    .local v0, "label":Ljava/lang/String;
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2797
    .local v1, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v2, :cond_1d

    .line 2798
    monitor-exit v3

    .line 2840
    :goto_1c
    return-void

    .line 2800
    :cond_1d
    iget-object v2, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2e

    iget-object v2, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2802
    monitor-exit v3

    goto :goto_1c

    .line 2839
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2

    .line 2804
    .restart local v0    # "label":Ljava/lang/String;
    .restart local v1    # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_2e
    :try_start_2e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$11;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$11;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$10;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$10;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040332

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x1040333

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 2833
    iget-object v2, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 2835
    iget-object v2, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2837
    iget-object v2, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2838
    iget-object v2, p0, mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2839
    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_2e .. :try_end_9a} :catchall_2b

    goto :goto_1c
.end method

.method private switchUser(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 2172
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2173
    :try_start_5
    iget v8, p0, mCurrentUserId:I

    if-ne v8, p1, :cond_f

    iget-boolean v8, p0, mInitialized:Z

    if-eqz v8, :cond_f

    .line 2174
    monitor-exit v7

    .line 2236
    :goto_e
    return-void

    .line 2178
    :cond_f
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 2179
    .local v3, "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->onSwitchToAnotherUser()V

    .line 2182
    iget-object v8, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v8

    if-lez v8, :cond_2b

    .line 2183
    iget-object v8, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v9, 0x3

    iget v10, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2188
    :cond_2b
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2189
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_41

    move v0, v6

    .line 2191
    .local v0, "announceNewUser":Z
    :cond_41
    const/4 v1, 0x0

    .line 2192
    .local v1, "broadcastForColorChange":Z
    iget v8, p0, mCurrentUserId:I

    if-eq v8, p1, :cond_47

    .line 2193
    const/4 v1, 0x1

    .line 2197
    :cond_47
    iput p1, p0, mCurrentUserId:I

    .line 2199
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v5

    .line 2200
    .local v5, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v8

    if-eqz v8, :cond_5a

    .line 2202
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 2205
    :cond_5a
    invoke-direct {p0, v5}, readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    .line 2209
    invoke-direct {p0, v5}, onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2211
    if-eqz v0, :cond_6a

    .line 2213
    iget-object v8, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v9, 0x5

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2217
    :cond_6a
    if-eqz v1, :cond_ad

    .line 2218
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2219
    .local v2, "colorBlindMultiUserintent":Landroid/content/Intent;
    const-string v8, "com.samsung.settings.colorblind.ColorBlindMultiUserReceiver"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2221
    iget-object v8, p0, mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2223
    iget-object v8, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    if-nez v8, :cond_96

    .line 2224
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/accessibility/GestureWakeup;->getInstance(Landroid/content/Context;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v8

    iput-object v8, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 2225
    const-string v8, "AccessibilityManagerService"

    const-string/jumbo v9, "switchUser() mGesturewakeup make new!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_96
    iget-object v8, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v8

    if-ne v8, v6, :cond_b3

    .line 2228
    const-string v6, "AccessibilityManagerService"

    const-string/jumbo v8, "switchUser() mGesturewakeup start in userswitch"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    iget-object v6, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {v6}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    .line 2235
    .end local v2    # "colorBlindMultiUserintent":Landroid/content/Intent;
    :cond_ad
    :goto_ad
    monitor-exit v7

    goto/16 :goto_e

    .end local v0    # "announceNewUser":Z
    .end local v1    # "broadcastForColorChange":Z
    .end local v3    # "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_b0
    move-exception v6

    monitor-exit v7
    :try_end_b2
    .catchall {:try_start_5 .. :try_end_b2} :catchall_b0

    throw v6

    .line 2231
    .restart local v0    # "announceNewUser":Z
    .restart local v1    # "broadcastForColorChange":Z
    .restart local v2    # "colorBlindMultiUserintent":Landroid/content/Intent;
    .restart local v3    # "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .restart local v4    # "userManager":Landroid/os/UserManager;
    .restart local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_b3
    :try_start_b3
    const-string v6, "AccessibilityManagerService"

    const-string/jumbo v8, "switchUser() mGesturewakeup stop in userswitch"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object v6, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {v6}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()Z
    :try_end_c0
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_b0

    goto :goto_ad
.end method

.method private talkbackOffWarning()V
    .registers 5

    .prologue
    .line 925
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 926
    .local v0, "localHashMap":Ljava/util/HashMap;
    const-string/jumbo v2, "utteranceId"

    const-string/jumbo v3, "talkbackOff"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.app.talkback"

    invoke-direct {p0, v2, v3}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 929
    iget-object v2, p0, mContext:Landroid/content/Context;

    const v3, 0x1040871

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 933
    .local v1, "str":Ljava/lang/String;
    :goto_21
    const-string v2, "AccessibilityManagerService"

    const-string v3, "Talkack OFF TTS speak."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v2, p0, mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 935
    iget-object v2, p0, mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 936
    return-void

    .line 931
    .end local v1    # "str":Ljava/lang/String;
    :cond_38
    iget-object v2, p0, mContext:Landroid/content/Context;

    const v3, 0x1040873

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_21
.end method

.method private talkbackOnWarning()V
    .registers 6

    .prologue
    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 832
    .local v0, "localHashMap":Ljava/util/HashMap;
    const-string/jumbo v3, "utteranceId"

    const-string/jumbo v4, "talkbackOn"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.app.talkback"

    invoke-direct {p0, v3, v4}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 835
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040870

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 839
    .local v2, "str":Ljava/lang/String;
    :goto_21
    const-string v3, "AccessibilityManagerService"

    const-string v4, "Talkack ON TTS speak."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v3, p0, mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    .line 841
    .local v1, "status":I
    invoke-static {v1}, isNotAvailableStatus(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 842
    iget-object v3, p0, mTts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, getBestAvailableLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 844
    :cond_41
    iget-object v3, p0, mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 845
    return-void

    .line 837
    .end local v1    # "status":I
    .end local v2    # "str":Ljava/lang/String;
    :cond_48
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040872

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_21
.end method

.method private turnOffAccessibilityService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ServiceName"    # Ljava/lang/String;

    .prologue
    .line 1211
    const/16 v0, 0x3a

    .line 1213
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v13, 0x3a

    invoke-direct {v11, v13}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1214
    .local v11, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-direct/range {p0 .. p1}, getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 1217
    .local v5, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    if-ne v5, v13, :cond_18

    .line 1218
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1221
    .restart local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_18
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1224
    .local v12, "toggledService":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 1226
    .local v1, "accessibilityEnabled":Z
    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1228
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1229
    .local v10, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_29
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1230
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 1232
    const/4 v1, 0x1

    .line 1238
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_3c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
    .local v6, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_45
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1244
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 1247
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_5e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 1248
    .local v7, "enabledServicesBuilderLength":I
    if-lez v7, :cond_69

    .line 1249
    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1252
    :cond_69
    const/4 v8, 0x0

    .line 1253
    .local v8, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1254
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "enabled_accessibility_services"

    invoke-static {v13, v14, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1257
    if-eqz v8, :cond_8f

    .line 1258
    move-object v2, v11

    .line 1259
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1261
    :cond_7e
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8f

    .line 1262
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1263
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1265
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_7e

    .line 1266
    const/4 v1, 0x1

    .line 1274
    .end local v2    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_8f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "accessibility_enabled"

    if-eqz v1, :cond_9c

    const/4 v13, 0x1

    :goto_98
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1276
    return-void

    .line 1274
    :cond_9c
    const/4 v13, 0x0

    goto :goto_98
.end method

.method private turnOffTalkBack(Landroid/content/Context;)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x3a

    const/4 v8, 0x0

    .line 962
    const/16 v1, 0x3a

    .line 963
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, ""

    .line 964
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "com.samsung.android.app.talkback"

    invoke-direct {p0, v9, v10}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 965
    const-string v0, "com.samsung.android.app.talkback"

    .line 970
    :goto_13
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v6, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 972
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "enabled_accessibility_services"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 974
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_29

    .line 1000
    :cond_25
    :goto_25
    return v8

    .line 967
    .end local v5    # "enabledServicesSetting":Ljava/lang/String;
    .end local v6    # "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_26
    const-string v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    goto :goto_13

    .line 977
    .restart local v5    # "enabledServicesSetting":Ljava/lang/String;
    .restart local v6    # "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_29
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_25

    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v3, v6

    .line 983
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 985
    :cond_38
    :goto_38
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 986
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 988
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4b

    .line 989
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 992
    :cond_4b
    if-eqz v4, :cond_38

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_38

    .line 993
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 997
    .end local v4    # "componentNameString":Ljava/lang/String;
    :cond_57
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    .local v7, "talk_back_off":Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 999
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "enabled_accessibility_services"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1000
    const/4 v8, 0x1

    goto :goto_25
.end method

.method private turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "option_flag"    # I

    .prologue
    .line 1010
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1013
    .local v14, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v18, p2, 0x20

    if-lez v18, :cond_2f

    .line 1014
    const-string v18, "assistant_menu"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1015
    new-instance v5, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v5, "assistantMenu":Landroid/content/Intent;
    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.samsung.android.app.assistantmenu"

    const-string v20, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1018
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1022
    .end local v5    # "assistantMenu":Landroid/content/Intent;
    :cond_2f
    and-int/lit8 v18, p2, 0x10

    if-lez v18, :cond_121

    .line 1023
    const-string v18, "air_motion_engine"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1024
    new-instance v3, Landroid/content/Intent;

    const-string v18, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v3, "air_motion_changed":Landroid/content/Intent;
    const-string/jumbo v18, "isEnable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1026
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1028
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v18

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_121

    .line 1029
    const-string v18, "air_motion_call_accept"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9d

    .line 1030
    const-string v18, "air_motion_call_accept"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1031
    new-instance v11, Landroid/content/Intent;

    const-string v18, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v11, "motion_changed_callaccept":Landroid/content/Intent;
    const-string/jumbo v18, "isEnable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1033
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1035
    .end local v11    # "motion_changed_callaccept":Landroid/content/Intent;
    :cond_9d
    const-string/jumbo v18, "master_motion"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_121

    .line 1036
    const-string v18, "air_motion_wake_up"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1037
    const-string v18, "air_motion_turn"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1038
    const-string v18, "air_motion_scroll"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1040
    new-instance v13, Landroid/content/Intent;

    const-string v18, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v13, "motion_changed_wakeup":Landroid/content/Intent;
    const-string/jumbo v18, "isEnable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1042
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1044
    new-instance v12, Landroid/content/Intent;

    const-string v18, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1045
    .local v12, "motion_changed_scroll":Landroid/content/Intent;
    const-string/jumbo v18, "isEnable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1046
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1048
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v10, "motion_changed_browse":Landroid/content/Intent;
    const-string/jumbo v18, "isEnable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1056
    .end local v3    # "air_motion_changed":Landroid/content/Intent;
    .end local v10    # "motion_changed_browse":Landroid/content/Intent;
    .end local v12    # "motion_changed_scroll":Landroid/content/Intent;
    .end local v13    # "motion_changed_wakeup":Landroid/content/Intent;
    :cond_121
    and-int/lit8 v18, p2, 0x8

    if-lez v18, :cond_17a

    .line 1057
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v18

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3b1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v18

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3b1

    .line 1059
    const-string v18, "air_view_master_onoff"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1060
    const-string/jumbo v18, "pen_hovering"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1061
    const-string/jumbo v18, "finger_air_view"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1067
    :goto_160
    new-instance v6, Landroid/content/Intent;

    const-string v18, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v6, "finger_air_view_changed":Landroid/content/Intent;
    const-string/jumbo v18, "isEnable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1069
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1073
    .end local v6    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_17a
    and-int/lit8 v18, p2, 0x40

    if-lez v18, :cond_1b0

    .line 1074
    const-string v18, "access_control_use"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1075
    const-string v18, "access_control_enabled"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1076
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v7, "icIntent":Landroid/content/Intent;
    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.samsung.android.app.accesscontrol"

    const-string v20, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1079
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1083
    .end local v7    # "icIntent":Landroid/content/Intent;
    :cond_1b0
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-lez v18, :cond_20a

    .line 1084
    const-string v18, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3cb

    .line 1085
    const-string/jumbo v18, "sound_detector"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1087
    new-instance v9, Landroid/content/Intent;

    const-string v18, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v9, "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1089
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.samsung.settings.action.sound_detector"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1091
    new-instance v15, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v15, "sdIntent":Landroid/content/Intent;
    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.samsung.android.app.sounddetector"

    const-string v20, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1094
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1116
    .end local v9    # "mIntent":Landroid/content/Intent;
    .end local v15    # "sdIntent":Landroid/content/Intent;
    :cond_20a
    :goto_20a
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-lez v18, :cond_21e

    .line 1117
    const-string/jumbo v18, "toolbox_onoff"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1121
    :cond_21e
    and-int/lit8 v18, p2, 0x4

    if-lez v18, :cond_22e

    .line 1122
    const-string/jumbo v18, "pen_hovering"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1126
    :cond_22e
    and-int/lit8 v18, p2, 0x2

    if-lez v18, :cond_298

    .line 1127
    const-string/jumbo v18, "intelligent_sleep_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1128
    const-string/jumbo v18, "intelligent_rotation_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1129
    const-string/jumbo v18, "smart_pause"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1130
    new-instance v16, Landroid/content/Intent;

    const-string v18, "com.sec.SMART_PAUSE_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v16, "smart_pause_changed":Landroid/content/Intent;
    const-string/jumbo v18, "isEnable"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1132
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1133
    const-string/jumbo v18, "smart_scroll"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1134
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v17, "smart_scroll_changed":Landroid/content/Intent;
    const-string/jumbo v18, "isEnable"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1140
    .end local v16    # "smart_pause_changed":Landroid/content/Intent;
    .end local v17    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_298
    and-int/lit8 v18, p2, 0x1

    if-lez v18, :cond_2a8

    .line 1141
    const-string/jumbo v18, "multi_window_enabled"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1145
    :cond_2a8
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-lez v18, :cond_2bc

    .line 1146
    const-string/jumbo v18, "pen_writing_buddy"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    :cond_2bc
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-lez v18, :cond_2d0

    .line 1150
    const-string/jumbo v18, "surface_motion_engine"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1154
    :cond_2d0
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-lez v18, :cond_301

    .line 1155
    new-instance v4, Landroid/content/Intent;

    const-string v18, "android.settings.ALL_SOUND_MUTE"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v4, "all_sound_off_intent":Landroid/content/Intent;
    const-string v18, "all_sound_off"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    const-string/jumbo v18, "mute"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1158
    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1162
    .end local v4    # "all_sound_off_intent":Landroid/content/Intent;
    :cond_301
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    if-lez v18, :cond_33e

    .line 1163
    const-string/jumbo v18, "enabled_accessibility_samsung_screen_reader"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1164
    const-string/jumbo v18, "direct_samsung_screen_reader"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1165
    invoke-direct/range {p0 .. p1}, isDirectAccessDBEnabled(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_333

    .line 1166
    const-string/jumbo v18, "direct_access"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1168
    :cond_333
    const-string v18, "com.samsung.android.app.screenreader/com.samsung.android.app.screenreader.ScreenReaderService"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, turnOffAccessibilityService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1173
    :cond_33e
    const v18, 0x8000

    and-int v18, v18, p2

    if-lez v18, :cond_35c

    .line 1174
    const-string/jumbo v18, "universal_switch_enabled"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1175
    const-string v18, "com.samsung.android.universalswitch/com.samsung.android.universalswitch.SwitchControlService"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, turnOffAccessibilityService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1180
    :cond_35c
    const/high16 v18, 0x20000

    and-int v18, v18, p2

    if-lez v18, :cond_36e

    .line 1181
    const-string/jumbo v18, "finger_magnifier"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1185
    :cond_36e
    const/high16 v18, 0x40000

    and-int v18, v18, p2

    if-lez v18, :cond_38c

    .line 1186
    const-string/jumbo v18, "people_stripe"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1188
    const-string/jumbo v18, "task_edge"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1197
    :cond_38c
    const/high16 v18, 0x100000

    and-int v18, v18, p2

    if-lez v18, :cond_3b0

    .line 1198
    const-string v18, "aod_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1199
    const-string v18, "aod_night_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1200
    const-string v18, "Utils"

    const-string/jumbo v19, "turnOffAOD - 0x100000"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_3b0
    return-void

    .line 1063
    :cond_3b1
    const-string/jumbo v18, "finger_air_view"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1064
    const-string/jumbo v18, "finger_air_view_highlight"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_160

    .line 1095
    :cond_3cb
    const-string v18, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_20a

    .line 1096
    const-string/jumbo v18, "sound_detector"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1097
    const-string/jumbo v18, "doorbell_detector"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1103
    new-instance v8, Landroid/content/Intent;

    const-string v18, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v8, "mDoorIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1105
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.samsung.settings.action.doorbell_detector"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1107
    new-instance v15, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    .restart local v15    # "sdIntent":Landroid/content/Intent;
    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.samsung.android.app.advsounddetector"

    const-string v20, "com.samsung.android.app.advsounddetector.service.SoundDetectService"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1111
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_20a
.end method

.method private unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2572
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2573
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 2574
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2575
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbindLocked()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2576
    add-int/lit8 v1, v1, -0x1

    .line 2577
    add-int/lit8 v0, v0, -0x1

    .line 2573
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2580
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1c
    return-void
.end method

.method private updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2867
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2868
    .local v2, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2869
    .local v1, "boundServiceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_1c

    .line 2870
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2871
    .local v0, "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canRetrieveInteractiveWindowsLocked()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2872
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 2877
    .end local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_18
    return-void

    .line 2869
    .restart local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2876
    .end local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1c
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    goto :goto_18
.end method

.method private updateDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 3262
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->applyAdjustments(Landroid/content/Context;I)V

    .line 3263
    return-void
.end method

.method private updateEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 3233
    const/4 v0, 0x0

    .line 3234
    .local v0, "enabled":Z
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 3235
    .local v3, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v3, :cond_19

    .line 3236
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3237
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-direct {p0, v2}, canRequestAndRequestsEnhancedWebAccessibilityLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3238
    const/4 v0, 0x1

    .line 3242
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_19
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    if-eq v0, v4, :cond_2f

    .line 3243
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    .line 3244
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_script_injection"

    if-eqz v0, :cond_33

    const/4 v4, 0x1

    :goto_2a
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3248
    :cond_2f
    return-void

    .line 3235
    .restart local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3244
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_33
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2965
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 2966
    .local v2, "serviceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_26

    .line 2967
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2968
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-boolean v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    if-eqz v3, :cond_23

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_23

    .line 2972
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    .line 2977
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :goto_22
    return-void

    .line 2966
    .restart local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2976
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_26
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    goto :goto_22
.end method

.method private updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2719
    const/4 v2, 0x0

    .line 2720
    .local v2, "setInputFilter":Z
    const/4 v1, 0x0

    .line 2721
    .local v1, "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2722
    const/4 v0, 0x0

    .line 2723
    .local v0, "flags":I
    :try_start_6
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eqz v4, :cond_c

    .line 2724
    or-int/lit8 v0, v0, 0x1

    .line 2727
    :cond_c
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v4, :cond_16

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v4, :cond_16

    .line 2728
    or-int/lit8 v0, v0, 0x2

    .line 2731
    :cond_16
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.app.talkback"

    invoke-direct {p0, v4, v6}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2732
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v4, :cond_32

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v4, :cond_32

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsHWkeysDoubleTapEnabled:Z

    if-eqz v4, :cond_32

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilitySTalkBackEnabled:Z

    if-eqz v4, :cond_32

    .line 2734
    or-int/lit8 v0, v0, 0x10

    .line 2737
    :cond_32
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilitySTalkBackEnabled:Z

    if-eqz v4, :cond_3c

    .line 2738
    or-int/lit8 v0, v0, 0x20

    .line 2742
    :cond_3c
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    if-eqz v4, :cond_42

    .line 2743
    or-int/lit8 v0, v0, 0x4

    .line 2746
    :cond_42
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    if-eqz v4, :cond_48

    .line 2747
    or-int/lit8 v0, v0, 0x8

    .line 2757
    :cond_48
    invoke-direct {p0, p1}, checkUniversalSwitchState(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v3

    .line 2758
    .local v3, "universalSwitchState":Z
    const-string v4, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInputFilter universalSwitchState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    const-string v4, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInputFilter userState.mIsUniversalSwitchEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    if-eqz v4, :cond_88

    if-eqz v3, :cond_88

    .line 2762
    or-int/lit8 v0, v0, 0x40

    .line 2766
    :cond_88
    if-eqz v0, :cond_af

    .line 2767
    iget-boolean v4, p0, mHasInputFilter:Z

    if-nez v4, :cond_a1

    .line 2768
    const/4 v4, 0x1

    iput-boolean v4, p0, mHasInputFilter:Z

    .line 2769
    iget-object v4, p0, mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v4, :cond_9e

    .line 2770
    new-instance v4, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v6, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v4, p0, mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 2773
    :cond_9e
    iget-object v1, p0, mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 2774
    const/4 v2, 0x1

    .line 2776
    :cond_a1
    iget-object v4, p0, mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v4, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setEnabledFeatures(I)V

    .line 2785
    :cond_a6
    :goto_a6
    monitor-exit v5
    :try_end_a7
    .catchall {:try_start_6 .. :try_end_a7} :catchall_be

    .line 2786
    if-eqz v2, :cond_ae

    .line 2787
    iget-object v4, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    invoke-virtual {v4, v1}, Landroid/view/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 2789
    :cond_ae
    return-void

    .line 2778
    :cond_af
    :try_start_af
    iget-boolean v4, p0, mHasInputFilter:Z

    if-eqz v4, :cond_a6

    .line 2779
    const/4 v4, 0x0

    iput-boolean v4, p0, mHasInputFilter:Z

    .line 2780
    iget-object v4, p0, mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 2781
    const/4 v1, 0x0

    .line 2782
    const/4 v2, 0x1

    goto :goto_a6

    .line 2785
    .end local v3    # "universalSwitchState":Z
    :catchall_be
    move-exception v4

    monitor-exit v5
    :try_end_c0
    .catchall {:try_start_af .. :try_end_c0} :catchall_be

    throw v4
.end method

.method private updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2946
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 2947
    .local v2, "installedServiceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_48

    .line 2948
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2949
    .local v4, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2950
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_45

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x11

    if-gt v5, v6, :cond_45

    .line 2954
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2957
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 2947
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2962
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_48
    return-void
.end method

.method private updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2980
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_8

    .line 2981
    invoke-direct {p0, p1}, manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2985
    :goto_7
    return-void

    .line 2983
    :cond_8
    invoke-direct {p0, p1}, unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_7
.end method

.method private updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 3179
    const/4 v0, 0x0

    .line 3180
    .local v0, "enabled":Z
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 3181
    .local v3, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v3, :cond_19

    .line 3182
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3183
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-direct {p0, v2}, canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3184
    const/4 v0, 0x1

    .line 3188
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_19
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v4, :cond_30

    .line 3189
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 3190
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "touch_exploration_enabled"

    if-eqz v0, :cond_39

    const/4 v4, 0x1

    :goto_2b
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3194
    :cond_30
    iget-object v4, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    invoke-virtual {v4, v0}, Landroid/view/WindowManagerInternal;->setTouchExplorationEnabled(Z)V

    .line 3195
    return-void

    .line 3181
    .restart local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3190
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_39
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method private updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2880
    iget-boolean v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v5, :cond_35

    .line 2886
    const/4 v1, 0x0

    .line 2888
    .local v1, "boundServiceCanRetrieveInteractiveWindows":Z
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2889
    .local v3, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2890
    .local v2, "boundServiceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v2, :cond_1d

    .line 2891
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2892
    .local v0, "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->canRetrieveInteractiveWindowsLocked()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2893
    const/4 v1, 0x1

    .line 2898
    .end local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_1d
    if-eqz v1, :cond_35

    .line 2911
    iget-object v5, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v5, :cond_31

    .line 2912
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v5, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    .line 2913
    iget-object v5, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    iget-object v6, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    invoke-virtual {v5, v6, v7}, Landroid/view/WindowManagerInternal;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;I)V

    .line 2940
    .end local v1    # "boundServiceCanRetrieveInteractiveWindows":Z
    .end local v2    # "boundServiceCount":I
    .end local v3    # "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    .end local v4    # "i":I
    :cond_31
    :goto_31
    return-void

    .line 2890
    .restart local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .restart local v1    # "boundServiceCanRetrieveInteractiveWindows":Z
    .restart local v2    # "boundServiceCount":I
    .restart local v3    # "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    .restart local v4    # "i":I
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 2933
    .end local v0    # "boundService":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v1    # "boundServiceCanRetrieveInteractiveWindows":Z
    .end local v2    # "boundServiceCount":I
    .end local v3    # "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    .end local v4    # "i":I
    :cond_35
    iget-object v5, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-eqz v5, :cond_31

    .line 2934
    iput-object v6, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    .line 2935
    iget-object v5, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    invoke-virtual {v5, v6, v7}, Landroid/view/WindowManagerInternal;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;I)V

    .line 2937
    iget-object v5, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->clearWindowsLocked()V

    goto :goto_31
.end method


# virtual methods
.method public OnStartGestureWakeup()Z
    .registers 4

    .prologue
    .line 5893
    const/4 v1, 0x0

    .line 5895
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {v2}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 5899
    :goto_7
    return v1

    .line 5896
    :catch_8
    move-exception v0

    .line 5897
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public OnStopGestureWakeup()Z
    .registers 4

    .prologue
    .line 5909
    const/4 v1, 0x0

    .line 5911
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {v2}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 5915
    :goto_7
    return v1

    .line 5912
    :catch_8
    move-exception v0

    .line 5913
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method accessibilityFocusOnlyInActiveWindow()Z
    .registers 3

    .prologue
    .line 2150
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2151
    :try_start_3
    iget-object v0, p0, mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 2152
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    .registers 11
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1813
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1817
    :try_start_3
    iget-object v4, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 1819
    .local v0, "resolvedUserId":I
    sget v2, sNextWindowId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, sNextWindowId:I

    .line 1823
    .local v2, "windowId":I
    iget-object v4, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1824
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    const/4 v4, -0x1

    invoke-direct {v3, p0, v2, p2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    .line 1826
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 1827
    iget-object v4, p0, mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1828
    iget-object v4, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1846
    :goto_2e
    monitor-exit v5

    return v2

    .line 1834
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_30
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    invoke-direct {v3, p0, v2, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V

    .line 1836
    .restart local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    .line 1837
    invoke-direct {p0, v0}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1838
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1839
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2e

    .line 1847
    .end local v0    # "resolvedUserId":I
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2    # "windowId":I
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :catchall_4b
    move-exception v4

    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v4
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I
    .registers 7
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p2, "userId"    # I

    .prologue
    .line 1667
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1671
    :try_start_3
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 1676
    .local v0, "resolvedUserId":I
    invoke-direct {p0, v0}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1677
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1678
    iget-object v2, p0, mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1682
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v2

    monitor-exit v3

    .line 1692
    :goto_1f
    return v2

    .line 1684
    :cond_20
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1692
    iget v2, p0, mCurrentUserId:I

    if-ne v0, v2, :cond_32

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v2

    :goto_2d
    monitor-exit v3

    goto :goto_1f

    .line 1694
    .end local v0    # "resolvedUserId":I
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v2

    .line 1692
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_32
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public assistantMenuRegister(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 1394
    const-string v0, "AccessibilityManagerService"

    const-string v1, "assistantMenuRegister Set the listener from AMS"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    if-eqz p1, :cond_11

    .line 1396
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, mAssistantMenuMsgnr:Landroid/os/Messenger;

    .line 1401
    :goto_10
    return-void

    .line 1398
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, mAssistantMenuMsgnr:Landroid/os/Messenger;

    goto :goto_10
.end method

.method public assistantMenuUpdate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1412
    iget-object v5, p0, mAssistantMenuMsgnr:Landroid/os/Messenger;

    if-eqz v5, :cond_6b

    .line 1413
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v5, v6, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1415
    .local v1, "msgAssist":Landroid/os/Message;
    :try_start_a
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1417
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 1418
    .local v2, "id":J
    const-string v5, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Thread ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const-string v5, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityName"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "process ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v5, p0, mAssistantMenuMsgnr:Landroid/os/Messenger;

    invoke-virtual {v5, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_6b} :catch_6c

    .line 1426
    .end local v1    # "msgAssist":Landroid/os/Message;
    .end local v2    # "id":J
    .end local v4    # "name":Ljava/lang/String;
    :cond_6b
    :goto_6b
    return-void

    .line 1422
    .restart local v1    # "msgAssist":Landroid/os/Message;
    :catch_6c
    move-exception v0

    .line 1423
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "AccessibilityManagerService"

    const-string v6, "assistantMenuUpdate: err during get currentThread"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b
.end method

.method public disableMagnifier()V
    .registers 5

    .prologue
    .line 3568
    iget-object v1, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v2, "com.samsung.android.permission.CALL_OVERLAY_MAGNIFIER"

    const-string/jumbo v3, "disableMagnifier"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    :try_start_a
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    .line 3574
    :goto_10
    return-void

    .line 3571
    :catch_11
    move-exception v0

    .line 3572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3283
    move-object/from16 v0, p0

    iget-object v0, v0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-object/from16 v18, v0

    const-string v19, "android.permission.DUMP"

    const-string/jumbo v20, "dump"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v18 .. v20}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3285
    :try_start_15
    const-string v18, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3287
    move-object/from16 v0, p0

    iget-object v0, v0, mUserStates:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 3288
    .local v14, "userCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2c
    if-ge v8, v14, :cond_413

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, mUserStates:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 3290
    .local v15, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "User state[attributes:{id="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3291
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", currentUser="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mCurrentUserId:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c5

    const/16 v18, 0x1

    :goto_83
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3294
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", accessibilityEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3295
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", touchExplorationEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3296
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", mIsEnhancedWebAccessibilityEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3297
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", displayMagnificationEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3298
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", mIsFilterKeyEventsEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3299
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", mIsAccessibilitySTalkBackEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilitySTalkBackEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3300
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", mIsOverlayMagnificationEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3301
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", mHasDisplayColorAdjustment="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHasDisplayColorAdjustment:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3302
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", mAccessibilityFocusOnlyInActiveWindow="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3303
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", mIsHWkeysDoubleTapEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsHWkeysDoubleTapEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3304
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", mIsUniversalSwitchEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3306
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v15}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v18

    if-eqz v18, :cond_259

    .line 3307
    const-string v18, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3308
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v15}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3309
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3311
    :cond_259
    const-string/jumbo v18, "}"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3312
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3315
    const-string v18, "  installed services: {"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3316
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3317
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    .line 3318
    .local v9, "installedServiceCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_27b
    if-ge v10, v9, :cond_2c9

    .line 3319
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3320
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3318
    add-int/lit8 v10, v10, 0x1

    goto :goto_27b

    .line 3291
    .end local v9    # "installedServiceCount":I
    .end local v10    # "j":I
    :cond_2c5
    const/16 v18, 0x0

    goto/16 :goto_83

    .line 3322
    .restart local v9    # "installedServiceCount":I
    .restart local v10    # "j":I
    :cond_2c9
    const-string v18, "  }"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3323
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3326
    const-string v18, "  enabled services: {"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3327
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3329
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3330
    .local v7, "enabled_service_itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    const/4 v6, 0x0

    .line 3331
    .local v6, "enabled_service_counter":I
    :goto_2ea
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_332

    .line 3332
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 3333
    .local v13, "service_component":Landroid/content/ComponentName;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3334
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3335
    add-int/lit8 v6, v6, 0x1

    .line 3336
    goto :goto_2ea

    .line 3338
    .end local v13    # "service_component":Landroid/content/ComponentName;
    :cond_332
    const-string v18, "  }"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3339
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3342
    const-string v18, "  binding services: {"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3343
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3345
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3346
    .local v5, "binding_service_itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    .line 3347
    .local v4, "binding_service_counter":I
    :goto_353
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_39b

    .line 3348
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 3349
    .restart local v13    # "service_component":Landroid/content/ComponentName;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3350
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3351
    add-int/lit8 v4, v4, 0x1

    .line 3352
    goto :goto_353

    .line 3354
    .end local v13    # "service_component":Landroid/content/ComponentName;
    :cond_39b
    const-string v18, "  }"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3355
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3359
    const-string v18, "  bound services:{"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3360
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3361
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v12

    .line 3362
    .local v12, "serviceCount":I
    const/4 v10, 0x0

    :goto_3bc
    if-ge v10, v12, :cond_403

    .line 3363
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3364
    .local v11, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " - "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3365
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3366
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3362
    add-int/lit8 v10, v10, 0x1

    goto :goto_3bc

    .line 3368
    .end local v11    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :cond_403
    const-string v18, "  }"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3369
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3288
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2c

    .line 3372
    .end local v4    # "binding_service_counter":I
    .end local v5    # "binding_service_itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v6    # "enabled_service_counter":I
    .end local v7    # "enabled_service_itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v9    # "installedServiceCount":I
    .end local v10    # "j":I
    .end local v12    # "serviceCount":I
    .end local v15    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_413
    move-object/from16 v0, p0

    iget-object v0, v0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_478

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    .line 3374
    .local v17, "windowCount":I
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_432
    move/from16 v0, v17

    if-ge v10, v0, :cond_478

    .line 3375
    if-lez v10, :cond_444

    .line 3376
    const/16 v18, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 3377
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3379
    :cond_444
    const-string v18, "Window["

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3380
    move-object/from16 v0, p0

    iget-object v0, v0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3381
    .local v16, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3382
    const/16 v18, 0x5d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 3374
    add-int/lit8 v10, v10, 0x1

    goto :goto_432

    .line 3385
    .end local v10    # "j":I
    .end local v16    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v17    # "windowCount":I
    :cond_478
    const-string v18, "-------------------------------------------------------------------------------"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3386
    monitor-exit v19

    .line 3387
    return-void

    .line 3386
    .end local v8    # "i":I
    .end local v14    # "userCount":I
    :catchall_483
    move-exception v18

    monitor-exit v19
    :try_end_485
    .catchall {:try_start_15 .. :try_end_485} :catchall_483

    throw v18
.end method

.method public enableMagnifier(IIF)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    .line 3577
    iget-object v1, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v2, "com.samsung.android.permission.CALL_OVERLAY_MAGNIFIER"

    const-string/jumbo v3, "enableMagnifier"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 3579
    :try_start_a
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    .line 3580
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 3584
    :goto_15
    return-void

    .line 3581
    :catch_16
    move-exception v0

    .line 3582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15
.end method

.method public enableMagnifierByDisplayID(IIFI)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F
    .param p4, "displayid"    # I

    .prologue
    .line 3587
    iget-object v1, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v2, "com.samsung.android.permission.CALL_OVERLAY_MAGNIFIER"

    const-string/jumbo v3, "enableMagnifier"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    :try_start_a
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p4}, Landroid/hardware/display/IDisplayManager;->setCurrentDisplayIdMagnifier(I)V

    .line 3590
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    .line 3591
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 3595
    :goto_1a
    return-void

    .line 3592
    :catch_1b
    move-exception v0

    .line 3593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a
.end method

.method getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .registers 3
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2125
    invoke-direct {p0}, getInteractionBridgeLocked()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method getActiveWindowId()I
    .registers 2

    .prologue
    .line 2156
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0
.end method

.method public getClearableActiveNotificationsCount(Ljava/lang/String;)I
    .registers 13
    .param p1, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 649
    iget-object v8, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v9, "com.samsung.android.permission.TALKBACK_NOTIFICATION"

    const-string/jumbo v10, "getClearableActiveNotificationsCount"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string/jumbo v8, "notification"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v6

    .line 652
    .local v6, "notificationStubManager":Landroid/app/INotificationManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 653
    .local v5, "mCurrentUserId":I
    const/4 v4, 0x0

    .line 654
    .local v4, "mCountable":I
    const/4 v0, 0x0

    .line 656
    .local v0, "actives":[Landroid/service/notification/StatusBarNotification;
    :try_start_1b
    invoke-interface {v6, p1}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 657
    if-nez v0, :cond_23

    .line 658
    const/4 v8, 0x0

    .line 668
    :goto_22
    return v8

    .line 660
    :cond_23
    move-object v1, v0

    .local v1, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_26
    if-ge v2, v3, :cond_40

    aget-object v7, v1, v2

    .line 661
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v5, v8, :cond_3c

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isClearable()Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_37} :catch_3f

    move-result v8

    if-eqz v8, :cond_3c

    .line 662
    add-int/lit8 v4, v4, 0x1

    .line 660
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 665
    .end local v1    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_3f
    move-exception v8

    :cond_40
    move v8, v4

    .line 668
    goto :goto_22
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .registers 14
    .param p1, "feedbackType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1750
    const/4 v3, 0x0

    .line 1751
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1755
    :try_start_4
    iget-object v8, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v8, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 1761
    .local v2, "resolvedUserId":I
    invoke-direct {p0, v2}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v7

    .line 1762
    .local v7, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 1763
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    monitor-exit v9

    .line 1781
    :goto_19
    return-object v8

    .line 1766
    :cond_1a
    iget-object v3, p0, mEnabledServicesForFeedbackTempList:Ljava/util/List;

    .line 1767
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1768
    iget-object v6, v7, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1769
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :cond_21
    if-eqz p1, :cond_47

    .line 1770
    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v10

    shl-int v0, v8, v10

    .line 1771
    .local v0, "feedbackTypeBit":I
    xor-int/lit8 v8, v0, -0x1

    and-int/2addr p1, v8

    .line 1772
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 1773
    .local v5, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    if-ge v1, v5, :cond_21

    .line 1774
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1775
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    and-int/2addr v8, v0

    if-eqz v8, :cond_44

    .line 1776
    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1773
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 1780
    .end local v0    # "feedbackTypeBit":I
    .end local v1    # "i":I
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5    # "serviceCount":I
    :cond_47
    monitor-exit v9

    move-object v8, v3

    .line 1781
    goto :goto_19

    .line 1780
    .end local v2    # "resolvedUserId":I
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    .end local v7    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_4a
    move-exception v8

    monitor-exit v9
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_4a

    throw v8
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1728
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1732
    :try_start_3
    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 1736
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 1737
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1740
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1741
    monitor-exit v4

    .line 1743
    .end local v0    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_27
    return-object v0

    :cond_28
    iget-object v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v4

    goto :goto_27

    .line 1744
    .end local v1    # "resolvedUserId":I
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_2c
    move-exception v3

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method getWindowBounds(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2136
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2137
    :try_start_3
    iget-object v1, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2138
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_19

    .line 2139
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Landroid/os/IBinder;
    check-cast v0, Landroid/os/IBinder;

    .line 2141
    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_27

    .line 2142
    iget-object v1, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1, v0, p2}, Landroid/view/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 2143
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2144
    const/4 v1, 0x1

    .line 2146
    :goto_26
    return v1

    .line 2141
    .end local v0    # "token":Landroid/os/IBinder;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1

    .line 2146
    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public getWindowToken(I)Landroid/os/IBinder;
    .registers 7
    .param p1, "windowId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2040
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v3, "android.permission.RETRIEVE_WINDOW_TOKEN"

    const-string/jumbo v4, "getWindowToken"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2047
    :try_start_e
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 2050
    .local v0, "resolvedUserId":I
    iget v2, p0, mCurrentUserId:I

    if-eq v0, v2, :cond_1e

    .line 2051
    monitor-exit v3

    .line 2060
    :goto_1d
    return-object v1

    .line 2053
    :cond_1e
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 2054
    monitor-exit v3

    goto :goto_1d

    .line 2061
    .end local v0    # "resolvedUserId":I
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v2

    .line 2056
    .restart local v0    # "resolvedUserId":I
    :cond_2b
    :try_start_2b
    iget-object v2, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2057
    .local v1, "token":Landroid/os/IBinder;
    if-eqz v1, :cond_37

    .line 2058
    monitor-exit v3

    goto :goto_1d

    .line 2060
    :cond_37
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_28

    move-object v1, v2

    goto :goto_1d
.end method

.method public interrupt(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 1787
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1791
    :try_start_3
    iget-object v6, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v3

    .line 1794
    .local v3, "resolvedUserId":I
    iget v6, p0, mCurrentUserId:I

    if-eq v3, v6, :cond_f

    .line 1795
    monitor-exit v7

    .line 1808
    :cond_e
    return-void

    .line 1797
    :cond_f
    invoke-direct {p0, v3}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v6

    iget-object v5, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1798
    .local v5, "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2b

    .line 1799
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1b
    if-ge v1, v0, :cond_e

    .line 1800
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1802
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_start_23
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v6}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2e

    .line 1799
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1798
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "resolvedUserId":I
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .end local v5    # "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catchall_2b
    move-exception v6

    :try_start_2c
    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v6

    .line 1803
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "resolvedUserId":I
    .restart local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .restart local v5    # "services":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/accessibility/AccessibilityManagerService$Service;>;"
    :catch_2e
    move-exception v2

    .line 1804
    .local v2, "re":Landroid/os/RemoteException;
    const-string v6, "AccessibilityManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error during sending interrupt request to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method public isColorBlind([I)Z
    .registers 7
    .param p1, "nums"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 479
    iget-object v1, p0, cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/CVDCalculator;->setNum([I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 482
    :cond_f
    iget-object v1, p0, cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {v1}, Lcom/android/server/accessibility/CVDCalculator;->calculate()V

    .line 483
    iget-object v1, p0, cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {v1}, Lcom/android/server/accessibility/CVDCalculator;->getCVDType()I

    move-result v1

    iput v1, p0, mCVDType:I

    .line 484
    iget-object v1, p0, cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {v1}, Lcom/android/server/accessibility/CVDCalculator;->getCVDSeverity()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, mCVDSeverity:F

    .line 485
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, mUserParameter:F

    .line 486
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_cvdtype"

    iget v3, p0, mCVDType:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 487
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_cvdseverity"

    iget v3, p0, mCVDSeverity:F

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 488
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_user_parameter"

    iget v3, p0, mUserParameter:F

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 490
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_test"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 493
    iget v1, p0, mCVDType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_74

    .line 494
    const/4 v0, 0x0

    .line 496
    :cond_74
    return v0

    .line 499
    :cond_75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method isIMEVisible()Z
    .registers 2

    .prologue
    .line 1662
    iget-boolean v0, p0, isIMEOpen:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, isIMEVisible:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isLastExploreWindowIsSIPType(I)Z
    .registers 5
    .param p1, "windowId"    # I

    .prologue
    .line 2106
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 2107
    .local v0, "mWindowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_11

    .line 2108
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v1

    .line 2109
    .local v1, "windowType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 2110
    const/4 v2, 0x1

    .line 2113
    .end local v1    # "windowType":I
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public isScreenCurtainRunning()Z
    .registers 4

    .prologue
    .line 550
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "isScreenCurtainRunning"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0}, checkTalkbackEnable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 552
    const/4 v0, 0x0

    .line 554
    :goto_11
    return v0

    :cond_12
    iget-boolean v0, p0, mCurtainModeIsRunning:Z

    goto :goto_11
.end method

.method isTopActivityCalenders()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5876
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5877
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 5878
    .local v2, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v6, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CURRENT Activity ::"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 5880
    .local v1, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.android.calendar/.AllInOneActivity"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    move v3, v4

    .line 5883
    :goto_49
    return v3

    :cond_4a
    move v3, v5

    goto :goto_49
.end method

.method public isTwoFingerGestureRecognitionEnabled()Z
    .registers 2

    .prologue
    .line 1871
    iget-boolean v0, p0, shouldRecogniseTwoFingerGestures:Z

    return v0
.end method

.method public isUniversalSwitchEnabled()Z
    .registers 2

    .prologue
    .line 1875
    iget-boolean v0, p0, isUniversalSwitchEnabled:Z

    return v0
.end method

.method notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2089
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2090
    :try_start_3
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 2091
    .local v1, "localClone":Landroid/view/KeyEvent;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z

    move-result v0

    .line 2092
    .local v0, "handled":Z
    if-nez v0, :cond_13

    .line 2093
    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v2}, notifyKeyEventLocked(Landroid/view/KeyEvent;IZ)Z

    move-result v0

    .line 2095
    :cond_13
    monitor-exit v3

    return v0

    .line 2096
    .end local v0    # "handled":Z
    .end local v1    # "localClone":Landroid/view/KeyEvent;
    :catchall_15
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method onGesture(I)Z
    .registers 5
    .param p1, "gestureId"    # I

    .prologue
    .line 2065
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2066
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, notifyGestureLocked(IZ)Z

    move-result v0

    .line 2067
    .local v0, "handled":Z
    if-nez v0, :cond_f

    .line 2068
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, notifyGestureLocked(IZ)Z

    move-result v0

    .line 2084
    :cond_f
    monitor-exit v2

    return v0

    .line 2085
    .end local v0    # "handled":Z
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method onMagnificationStateChanged()V
    .registers 1

    .prologue
    .line 2168
    invoke-direct {p0}, notifyClearAccessibilityCacheLocked()V

    .line 2169
    return-void
.end method

.method onTouchInteractionEnd()V
    .registers 2

    .prologue
    .line 2164
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionEnd()V

    .line 2165
    return-void
.end method

.method onTouchInteractionStart()V
    .registers 2

    .prologue
    .line 2160
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionStart()V

    .line 2161
    return-void
.end method

.method public openGlobalActions()V
    .registers 2

    .prologue
    .line 1463
    iget-object v0, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->showGlobalActions()V

    .line 1464
    return-void
.end method

.method public reboot(Z)V
    .registers 7
    .param p1, "isConfirm"    # Z

    .prologue
    .line 1452
    sput-boolean p1, mConfirm:Z

    .line 1453
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1456
    .local v1, "mPowerManager":Landroid/os/IPowerManager;
    :try_start_d
    sget-boolean v2, mConfirm:Z

    const-string v3, "Assistant Menu"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    .line 1460
    :goto_15
    return-void

    .line 1457
    :catch_16
    move-exception v0

    .line 1458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FunctionEventManager"

    const-string v3, "PowerOff - RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method recognizeTwoFingerGestures()Z
    .registers 2

    .prologue
    .line 1867
    iget-boolean v0, p0, shouldRecogniseTwoFingerGestures:Z

    return v0
.end method

.method public registerGestureListenerForLauncher(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 5850
    if-eqz p1, :cond_b

    .line 5851
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, mGestureListenerForLauncherMsngr:Landroid/os/Messenger;

    .line 5852
    const/4 v0, 0x1

    .line 5855
    :goto_a
    return v0

    .line 5854
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, mGestureListenerForLauncherMsngr:Landroid/os/Messenger;

    .line 5855
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 10
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 1935
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v3, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string/jumbo v4, "registerUiTestAutomationService"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    sget-object v2, sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 1940
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1941
    :try_start_12
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1943
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 1944
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UiAutomationService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "already registered!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1977
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_3b
    move-exception v2

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_3b

    throw v2

    .line 1949
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3e
    :try_start_3e
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_46} :catch_7b
    .catchall {:try_start_3e .. :try_end_46} :catchall_3b

    .line 1956
    :try_start_46
    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;
    invoke-static {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$2302(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1957
    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$2402(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/accessibilityservice/IAccessibilityServiceClient;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1960
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 1961
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 1962
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    .line 1963
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 1965
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    .line 1968
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    .line 1970
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1971
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1972
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    sget-object v4, sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1973
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    sget-object v4, sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1976
    invoke-direct {p0, v1}, onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1977
    monitor-exit v3

    .line 1978
    :goto_7a
    return-void

    .line 1950
    :catch_7b
    move-exception v0

    .line 1951
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    const-string v4, "Couldn\'t register for the death of a UiTestAutomationService!"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1953
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_46 .. :try_end_84} :catchall_3b

    goto :goto_7a
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 11
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 1880
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1884
    :try_start_3
    iget-object v6, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 1886
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1887
    .local v3, "token":Landroid/os/IBinder;
    iget-object v6, p0, mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v8, p0, mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v6, v8}, removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    .line 1889
    .local v1, "removedWindowId":I
    if-ltz v1, :cond_1c

    .line 1894
    monitor-exit v7

    .line 1912
    :goto_1b
    return-void

    .line 1896
    :cond_1c
    iget-object v6, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1897
    .local v4, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v4, :cond_3f

    .line 1898
    iget-object v6, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1899
    .local v5, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    iget-object v8, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v6, v8}, removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    .line 1902
    .local v2, "removedWindowIdForUser":I
    if-ltz v2, :cond_3c

    .line 1908
    monitor-exit v7

    goto :goto_1b

    .line 1911
    .end local v0    # "i":I
    .end local v1    # "removedWindowId":I
    .end local v2    # "removedWindowIdForUser":I
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "userCount":I
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_39
    move-exception v6

    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v6

    .line 1897
    .restart local v0    # "i":I
    .restart local v1    # "removedWindowId":I
    .restart local v2    # "removedWindowIdForUser":I
    .restart local v3    # "token":Landroid/os/IBinder;
    .restart local v4    # "userCount":I
    .restart local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1911
    .end local v2    # "removedWindowIdForUser":I
    .end local v5    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3f
    :try_start_3f
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_39

    goto :goto_1b
.end method

.method restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "oldSetting"    # Ljava/lang/String;
    .param p2, "newSetting"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2256
    iget-object v1, p0, mTempComponentNameSet:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v3}, readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 2257
    iget-object v1, p0, mTempComponentNameSet:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v1, v2}, readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 2258
    invoke-direct {p0, v3}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2259
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2260
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v2, p0, mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2261
    const-string/jumbo v1, "enabled_accessibility_services"

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v1, v2, v3}, persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 2265
    invoke-direct {p0, v0}, onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2266
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    .registers 12
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1699
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1703
    :try_start_5
    iget-object v4, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 1706
    .local v0, "resolvedUserId":I
    iget v4, p0, mCurrentUserId:I

    if-eq v0, v4, :cond_11

    .line 1707
    monitor-exit v3

    .line 1723
    :cond_10
    :goto_10
    return v1

    .line 1709
    :cond_11
    iget-object v4, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1710
    iget-object v4, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateActiveAndAccessibilityFocusedWindowLocked(IJI)V

    .line 1712
    iget-object v4, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1713
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 1714
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 1716
    :cond_37
    iget-boolean v4, p0, mHasInputFilter:Z

    if-eqz v4, :cond_4d

    iget-object v4, p0, mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v4, :cond_4d

    .line 1717
    iget-object v4, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1720
    :cond_4d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1721
    invoke-direct {p0, v0}, getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    .line 1722
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_62

    .line 1723
    sget v3, OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-ne v3, v4, :cond_10

    move v1, v2

    goto :goto_10

    .line 1722
    .end local v0    # "resolvedUserId":I
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public setColorBlind(ZF)Z
    .registers 11
    .param p1, "enable"    # Z
    .param p2, "userParameter"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "mDNIe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdnie/MdnieManager;

    .line 468
    .local v0, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_cvdtype"

    const/4 v3, 0x3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, mCVDType:I

    .line 469
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind_cvdseverity"

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iput v1, p0, mCVDSeverity:F

    .line 470
    const-string v1, "3"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 471
    iget-object v1, p0, cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    const/4 v2, 0x0

    iget v3, p0, mCVDType:I

    iget v4, p0, mCVDSeverity:F

    float-to-double v4, v4

    float-to-double v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z

    move-result v1

    .line 474
    :goto_50
    return v1

    :cond_51
    iget-object v1, p0, cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    const/4 v2, 0x1

    iget v3, p0, mCVDType:I

    iget v4, p0, mCVDSeverity:F

    float-to-double v4, v4

    float-to-double v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z

    move-result v1

    goto :goto_50
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 6
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 3598
    iget-object v1, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v2, "com.samsung.android.permission.CALL_OVERLAY_MAGNIFIER"

    const-string/jumbo v3, "setMagnificationSpec"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 3600
    :try_start_a
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 3604
    :goto_f
    return-void

    .line 3601
    :catch_10
    move-exception v0

    .line 3602
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public setScreenCurtain()V
    .registers 15

    .prologue
    .line 564
    iget-object v10, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v11, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v12, "setScreenCurtain"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v10, "AccessibilityManagerService"

    const-string/jumbo v11, "setScreenCurtain ()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0}, checkTalkbackEnable()Z

    move-result v10

    if-nez v10, :cond_1d

    iget-boolean v10, p0, mCurtainModeIsRunning:Z

    if-nez v10, :cond_1d

    .line 646
    :cond_1c
    :goto_1c
    return-void

    .line 569
    :cond_1d
    iget-boolean v10, p0, mCurtainModeIsRunning:Z

    if-eqz v10, :cond_c9

    const/4 v10, 0x0

    :goto_22
    iput-boolean v10, p0, mCurtainModeIsRunning:Z

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "descriptionText":Ljava/lang/String;
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x104086d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, "mDarkScreenText":Ljava/lang/String;
    iget-boolean v10, p0, mCurtainModeIsRunning:Z

    if-eqz v10, :cond_cc

    .line 573
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x104086e

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_41
    invoke-direct {p0, v0}, curtainModeWarning(Ljava/lang/String;)V

    .line 579
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string/jumbo v11, "mDNIe"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/mdnie/MdnieManager;

    .line 583
    .local v7, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    iget-boolean v10, p0, mCurtainModeIsRunning:Z

    invoke-virtual {v7, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    .line 584
    iget-boolean v10, p0, mCurtainModeIsRunning:Z

    if-nez v10, :cond_1c

    .line 585
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "high_contrast"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_dd

    const/4 v8, 0x1

    .line 587
    .local v8, "mNegativeColorCheck":Z
    :goto_6b
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_df

    const/4 v2, 0x1

    .line 589
    .local v2, "mColorBlindCheck":Z
    :goto_7d
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "greyscale_mode"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e1

    const/4 v5, 0x1

    .line 591
    .local v5, "mGreyscaleModeCheck":Z
    :goto_90
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "powersaving_switch"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e3

    const/4 v9, 0x1

    .line 593
    .local v9, "mPowerSavingModeCheck":Z
    :goto_a3
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "blackgrey_powersaving_mode"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e5

    const/4 v6, 0x1

    .line 595
    .local v6, "mGreyscalePowerSavingModeCheck":Z
    :goto_b5
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v4

    .line 596
    .local v4, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v4, :cond_130

    .line 597
    invoke-virtual {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v10

    if-eqz v10, :cond_e7

    .line 598
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeEmergencyMode(Z)Z

    goto/16 :goto_1c

    .line 569
    .end local v0    # "descriptionText":Ljava/lang/String;
    .end local v2    # "mColorBlindCheck":Z
    .end local v3    # "mDarkScreenText":Ljava/lang/String;
    .end local v4    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v5    # "mGreyscaleModeCheck":Z
    .end local v6    # "mGreyscalePowerSavingModeCheck":Z
    .end local v7    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    .end local v8    # "mNegativeColorCheck":Z
    .end local v9    # "mPowerSavingModeCheck":Z
    :cond_c9
    const/4 v10, 0x1

    goto/16 :goto_22

    .line 575
    .restart local v0    # "descriptionText":Ljava/lang/String;
    .restart local v3    # "mDarkScreenText":Ljava/lang/String;
    :cond_cc
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x104086f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_41

    .line 585
    .restart local v7    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_dd
    const/4 v8, 0x0

    goto :goto_6b

    .line 587
    .restart local v8    # "mNegativeColorCheck":Z
    :cond_df
    const/4 v2, 0x0

    goto :goto_7d

    .line 589
    .restart local v2    # "mColorBlindCheck":Z
    :cond_e1
    const/4 v5, 0x0

    goto :goto_90

    .line 591
    .restart local v5    # "mGreyscaleModeCheck":Z
    :cond_e3
    const/4 v9, 0x0

    goto :goto_a3

    .line 593
    .restart local v9    # "mPowerSavingModeCheck":Z
    :cond_e5
    const/4 v6, 0x0

    goto :goto_b5

    .line 600
    .restart local v4    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v6    # "mGreyscalePowerSavingModeCheck":Z
    :cond_e7
    if-eqz v8, :cond_f2

    if-eqz v5, :cond_f2

    .line 601
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1c

    .line 602
    :cond_f2
    if-eqz v5, :cond_fb

    .line 603
    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1c

    .line 604
    :cond_fb
    if-eqz v6, :cond_10d

    if-eqz v9, :cond_10d

    .line 606
    const/4 v10, 0x1

    :try_start_100
    sget-object v11, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_105} :catch_107

    goto/16 :goto_1c

    .line 607
    :catch_107
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c

    .line 610
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10d
    if-eqz v8, :cond_115

    .line 611
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1c

    .line 612
    :cond_115
    if-eqz v2, :cond_1c

    .line 614
    const/4 v10, 0x1

    :try_start_118
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "color_blind_user_parameter"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v11

    invoke-virtual {p0, v10, v11}, setColorBlind(ZF)Z
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_128} :catch_12a

    goto/16 :goto_1c

    .line 615
    :catch_12a
    move-exception v1

    .line 616
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c

    .line 620
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_130
    if-eqz v8, :cond_13b

    if-eqz v5, :cond_13b

    .line 621
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1c

    .line 622
    :cond_13b
    if-eqz v6, :cond_14d

    if-eqz v9, :cond_14d

    .line 624
    const/4 v10, 0x1

    :try_start_140
    sget-object v11, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_145} :catch_147

    goto/16 :goto_1c

    .line 625
    :catch_147
    move-exception v1

    .line 626
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c

    .line 628
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_14d
    if-eqz v5, :cond_156

    .line 629
    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1c

    .line 630
    :cond_156
    if-eqz v8, :cond_15e

    .line 631
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1c

    .line 632
    :cond_15e
    if-eqz v2, :cond_1c

    .line 634
    const/4 v10, 0x1

    :try_start_161
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "color_blind_user_parameter"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v11

    invoke-virtual {p0, v10, v11}, setColorBlind(ZF)Z
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_171} :catch_173

    goto/16 :goto_1c

    .line 635
    :catch_173
    move-exception v1

    .line 636
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c
.end method

.method public setTalkbackMode()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 691
    const-string v5, "AccessibilityManagerService"

    const-string v6, "Called AccessibilityManagerService setTalkbackMode()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v0, ""

    .line 693
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.app.talkback"

    invoke-direct {p0, v5, v6}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 694
    const-string v0, "com.samsung.android.app.talkback"

    .line 699
    :goto_17
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 700
    const-string v5, "AccessibilityManagerService"

    const-string/jumbo v6, "talkback package not installed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_27
    :goto_27
    return-void

    .line 696
    :cond_28
    const-string v0, "com.google.android.marvin.talkback"

    goto :goto_17

    .line 703
    :cond_2b
    const-string v5, "com.samsung.android.app.talkback"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 704
    invoke-direct {p0}, checkTalkbackEnable()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 705
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, turnOffTalkBack(Landroid/content/Context;)Z

    .line 706
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v4, "talk_back_off":Landroid/content/Intent;
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 708
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "com.samsung.SMT"

    invoke-direct {p0, v5, v6}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 709
    const-string v5, "AccessibilityManagerService"

    const-string v6, "If device don\'t have SamsungTTS, We can\'t provide Triple tap function"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 712
    :cond_5e
    new-instance v3, Landroid/os/Handler;

    iget-object v5, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 713
    .local v3, "mHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    new-instance v3, Landroid/os/Handler;

    .end local v3    # "mHandler":Landroid/os/Handler;
    iget-object v5, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 728
    .restart local v3    # "mHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27

    .line 734
    .end local v3    # "mHandler":Landroid/os/Handler;
    .end local v4    # "talk_back_off":Landroid/content/Intent;
    :cond_85
    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x1fffff

    invoke-direct {p0, v5, v6}, turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 735
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enabled_accessibility_services"

    const-string v7, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 740
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 742
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .restart local v4    # "talk_back_off":Landroid/content/Intent;
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 746
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 747
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 748
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "app_id"

    const-string v6, "com.samsung.android.app.talkback"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string/jumbo v5, "feature"

    const-string v6, "VAON"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string/jumbo v5, "extra"

    const-string v6, "SWDA"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 752
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 754
    const-string v5, "com.samsung.android.providers.context"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_27

    .line 759
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "talk_back_off":Landroid/content/Intent;
    :cond_f9
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "com.samsung.SMT"

    invoke-direct {p0, v5, v6}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10c

    .line 760
    const-string v5, "AccessibilityManagerService"

    const-string v6, "If device don\'t have SamsungTTS, We can\'t provide Triple tap function"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 764
    :cond_10c
    iget-object v5, p0, mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v5, :cond_119

    .line 765
    const-string v5, "AccessibilityManagerService"

    const-string v6, "TTS is empty"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 768
    :cond_119
    invoke-direct {p0}, checkTalkbackEnable()Z

    move-result v5

    if-eqz v5, :cond_16a

    .line 769
    const-string v5, "AccessibilityManagerService"

    const-string/jumbo v6, "home tripletap talkback on"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v5, p0, mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v5

    if-nez v5, :cond_27

    .line 771
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, turnOffTalkBack(Landroid/content/Context;)Z

    .line 772
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .restart local v4    # "talk_back_off":Landroid/content/Intent;
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 775
    new-instance v3, Landroid/os/Handler;

    iget-object v5, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 776
    .restart local v3    # "mHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$5;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$5;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    new-instance v3, Landroid/os/Handler;

    .end local v3    # "mHandler":Landroid/os/Handler;
    iget-object v5, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 791
    .restart local v3    # "mHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$6;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$6;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_27

    .line 798
    .end local v3    # "mHandler":Landroid/os/Handler;
    .end local v4    # "talk_back_off":Landroid/content/Intent;
    :cond_16a
    const-string v5, "AccessibilityManagerService"

    const-string/jumbo v6, "home tripletap talkback off"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v5, p0, mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v5

    if-nez v5, :cond_27

    .line 801
    new-instance v3, Landroid/os/Handler;

    iget-object v5, p0, mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 802
    .restart local v3    # "mHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$7;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$7;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 816
    invoke-direct {p0}, talkbackOnWarning()V

    goto/16 :goto_27
.end method

.method public setTwoFingerGestureRecognitionEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 1863
    iput-boolean p1, p0, shouldRecogniseTwoFingerGestures:Z

    .line 1864
    return-void
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .registers 6
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 539
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "mDNIe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdnie/MdnieManager;

    .line 540
    .local v0, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    move-result v1

    return v1
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "result"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "mDNIe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdnie/MdnieManager;

    .line 515
    .local v0, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z

    move-result v1

    return v1
.end method

.method public setmDNIeNegative(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 527
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "mDNIe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdnie/MdnieManager;

    .line 528
    .local v0, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    move-result v1

    return v1
.end method

.method public shutdown(Z)V
    .registers 6
    .param p1, "isConfirm"    # Z

    .prologue
    .line 1435
    sput-boolean p1, mConfirm:Z

    .line 1436
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1439
    .local v1, "mPowerManager":Landroid/os/IPowerManager;
    :try_start_d
    sget-boolean v2, mConfirm:Z

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    .line 1443
    :goto_13
    return-void

    .line 1440
    :catch_14
    move-exception v0

    .line 1441
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FunctionEventManager"

    const-string v3, "PowerOff - RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "touchExplorationEnabled"    # Z

    .prologue
    .line 2001
    iget-object v1, p0, mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v2, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string/jumbo v3, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    iget-object v1, p0, mWindowManagerService:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2036
    :goto_12
    return-void

    .line 2007
    :cond_13
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2009
    :try_start_16
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2012
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 2013
    monitor-exit v2

    goto :goto_12

    .line 2035
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1

    .line 2016
    .restart local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_25
    const/4 v1, 0x1

    :try_start_26
    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 2017
    iput-boolean p2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 2018
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    .line 2019
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 2021
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    .line 2023
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2024
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2025
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2026
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2027
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2030
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    .line 2034
    invoke-direct {p0, v0}, onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2035
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_26 .. :try_end_53} :catchall_22

    goto :goto_12
.end method

.method public unregisterGestureListenerForLauncher()V
    .registers 2

    .prologue
    .line 5866
    const/4 v0, 0x0

    iput-object v0, p0, mGestureListenerForLauncherMsngr:Landroid/os/Messenger;

    .line 5867
    return-void
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .registers 7
    .param p1, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .prologue
    .line 1982
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1983
    :try_start_3
    invoke-direct {p0}, getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1985
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    if-eqz v1, :cond_30

    if-eqz p1, :cond_30

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_30

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_30

    .line 1990
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 1995
    monitor-exit v2

    .line 1996
    return-void

    .line 1992
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UiAutomationService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not registered!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1995
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_4f
    move-exception v1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method
