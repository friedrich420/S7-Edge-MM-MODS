.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$ControlWakeKey;,
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field public static final FLAG_MONITOR_KEY_FILTER:I = 0x1

.field public static final FLAG_MONITOR_MOTION_FILTER:I = 0x2

.field public static final FLAG_MONITOR_NO_FILTER:I = 0x0

.field public static final FLAG_MONITOR_SOURCE_CLASS_POINTER_FILTER:I = 0x4

.field public static final FLAG_MONITOR_TOOL_TYPE_FINGER_FILTER:I = 0x10

.field public static final FLAG_MONITOR_TOOL_TYPE_STYLUS_FILTER:I = 0x8

.field private static final HOME_KEY_SCANCODE:Ljava/lang/String; = "172"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_DISPLAY_INPUT_DROP:I = 0x9

.field private static final MSG_NOTIFY_SLUG:I = 0x8

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_TOUCHPAD_ON_OFF:I = 0x7

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field private static final MSG_VR_PROXIMITY_EVENT_CHANGED:I = 0x10

.field private static final MSG_VR_TA_EVENT_CHANGED:I = 0x11

.field private static final SMART_HALLIC_FLIP_BACKOPEN:I = 0x2

.field private static final SMART_HALLIC_FLIP_CLOSE:I = 0x0

.field private static final SMART_HALLIC_FLIP_OPEN:I = 0x1

.field public static final SW_BACKFOLDING:I = 0x1d

.field public static final SW_BACKFOLDING_BIT:I = 0x20000000

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_COVER_ATTACH:I = 0x1b

.field public static final SW_COVER_ATTACH_BIT:I = 0x8000000

.field public static final SW_FLIP:I = 0x15

.field public static final SW_FLIP_BIT:I = 0x200000

.field public static final SW_FOLDING:I = 0x1c

.field public static final SW_FOLDING_BIT:I = 0x10000000

.field public static final SW_GLOVE:I = 0x16

.field public static final SW_GLOVE_BIT:I = 0x400000

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_PEN_INSERT:I = 0x13

.field public static final SW_PEN_INSERT_BIT:I = 0x80000

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field public static final SW_W1:I = 0x1a

.field public static final SW_W1_BIT:I = 0x4000000

.field static final TAG:Ljava/lang/String; = "InputManager"

.field private static final WM_ACTION_WAKE_UP:I = 0x2

.field private static final bDSSEnabled:Z = true

.field private static final isDualLcd:Z


# instance fields
.field private final COVER_TEST_MODE:Ljava/lang/String;

.field private mAddingGamepadIntentPending:Z

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mCurrentCoverType:I

.field private mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field mFlipMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mIsBlockKeys:Z

.field private mIsKidsMode:Z

.field private mIsShowHoverPointer:Z

.field private mKeyboardLayoutIntent:Landroid/app/PendingIntent;

.field private mKeyboardLayoutNotificationShown:Z

.field private mLastFlipMotionState:I

.field private mLastSmartHallFlipState:I

.field private mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

.field private mMissingKeyboardLayoutNotificationPending:Z

.field private mMotionManagerCallbacks:Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPtr:J

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field mSmartHallSensorListener:Landroid/hardware/scontext/SContextListener;

.field private mSuspendibleDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchpadOnOffToast:Landroid/widget/Toast;

.field private mUnVerifiedCoverAttachCallbacks:Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;

.field final mUseDevInputEventForAudioJack:Z

.field mVRManagerService:Lcom/android/internal/app/IVRManagerService;

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWasBackfolded:Z

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

.field private numGamePads:I

.field private previousStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 540
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 223
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mTabletModeLock:Ljava/lang/Object;

    .line 225
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 231
    new-instance v1, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v1}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v1, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 234
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mInputDevicesLock:Ljava/lang/Object;

    .line 236
    new-array v1, v2, [Landroid/view/InputDevice;

    iput-object v1, p0, mInputDevices:[Landroid/view/InputDevice;

    .line 237
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTempFullKeyboards:Ljava/util/ArrayList;

    .line 249
    iput v2, p0, numGamePads:I

    .line 250
    iput-boolean v2, p0, mAddingGamepadIntentPending:Z

    .line 262
    iput-object v4, p0, mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 266
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mVibratorLock:Ljava/lang/Object;

    .line 267
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mVibratorTokens:Ljava/util/HashMap;

    .line 272
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mInputFilterLock:Ljava/lang/Object;

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mSuspendibleDevices:Ljava/util/HashMap;

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, previousStatus:Z

    .line 282
    iput v3, p0, mCurrentCoverType:I

    .line 287
    iput-object v4, p0, mPowerManager:Landroid/os/PowerManager;

    .line 288
    iput-object v4, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 289
    iput v3, p0, mLastSmartHallFlipState:I

    .line 290
    iput-boolean v2, p0, mWasBackfolded:Z

    .line 292
    iput v2, p0, mLastFlipMotionState:I

    .line 356
    iput-boolean v2, p0, mIsShowHoverPointer:Z

    .line 365
    iput-boolean v2, p0, mIsBlockKeys:Z

    .line 367
    iput-boolean v2, p0, mIsKidsMode:Z

    .line 503
    const-string v1, "cover_test_mode"

    iput-object v1, p0, COVER_TEST_MODE:Ljava/lang/String;

    .line 507
    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3761
    iput-object v4, p0, mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    .line 3833
    new-instance v1, Lcom/android/server/input/InputManagerService$21;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$21;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v1, p0, mSmartHallSensorListener:Landroid/hardware/scontext/SContextListener;

    .line 3886
    new-instance v1, Lcom/android/server/input/InputManagerService$22;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$22;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v1, p0, mFlipMotionListener:Landroid/hardware/scontext/SContextListener;

    .line 541
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 542
    new-instance v1, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mUseDevInputEventForAudioJack:Z

    .line 546
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mUseDevInputEventForAudioJack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    invoke-static {p0, v1, v2}, nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v2

    iput-wide v2, p0, mPtr:J

    .line 550
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    new-instance v2, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v2, p0, v4}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 553
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 554
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/input/InputManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    iget-boolean v0, p0, mKeyboardLayoutNotificationShown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/input/InputManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, showTouchpadOnOffToast(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1}, sendSGReport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, sendVRProximityEventChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, sendVRTAEventChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/input/InputManagerService;ZZZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, setDisplayInputDrop(ZZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/input/InputManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    iget-wide v0, p0, mPtr:J

    return-wide v0
.end method

.method static synthetic access$1900(JLandroid/view/InputEvent;IIIIII)I
    .registers 11
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/InputEvent;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .prologue
    .line 165
    invoke-static/range {p0 .. p8}, nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, hideMissingKeyboardLayoutNotification()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(JZ)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .prologue
    .line 165
    invoke-static {p0, p1, p2}, nativeSetSubInteractive(JZ)V

    return-void
.end method

.method static synthetic access$2400(JZ)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .prologue
    .line 165
    invoke-static {p0, p1, p2}, nativeSetMouseCursorVisibility(JZ)V

    return-void
.end method

.method static synthetic access$2500(JI)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 165
    invoke-static {p0, p1, p2}, nativeSetMouseControlType(JI)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "x2"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/view/InputEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(JZ)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .prologue
    .line 165
    invoke-static {p0, p1, p2}, nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/input/InputManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    iget v0, p0, mLastSmartHallFlipState:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/input/InputManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, mLastSmartHallFlipState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/view/InputDevice;

    .prologue
    .line 165
    invoke-direct {p0, p1}, showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$ControlWakeKey;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$ControlWakeKey;)Lcom/android/server/input/InputManagerService$ControlWakeKey;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Lcom/android/server/input/InputManagerService$ControlWakeKey;

    .prologue
    .line 165
    iput-object p1, p0, mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Z)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, sysfsRead(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/input/InputManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/input/InputManagerService;ZZZI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, setDisplayInputDropForMillisecond(ZZZI)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/input/InputManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, mLastFlipMotionState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # [Landroid/view/InputDevice;

    .prologue
    .line 165
    invoke-direct {p0, p1}, deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 6
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 2416
    monitor-enter p1

    .line 2417
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 2418
    iget-wide v0, p0, mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, nativeCancelVibrate(JII)V

    .line 2419
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 2421
    :cond_11
    monitor-exit p1

    .line 2422
    return-void

    .line 2421
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 2462
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 2474
    :cond_b
    :goto_b
    return v1

    .line 2466
    :cond_c
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 2469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2473
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private checkInjectEventsPermission(II)Z
    .registers 5
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .prologue
    .line 2740
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 6
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 1515
    array-length v2, p0

    .line 1516
    .local v2, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_15

    .line 1517
    aget-object v1, p0, v0

    .line 1518
    .local v1, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1519
    const/4 v3, 0x1

    .line 1522
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :goto_11
    return v3

    .line 1516
    .restart local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1522
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_15
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 22
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 1175
    const/4 v13, 0x0

    .line 1176
    .local v13, "numFullKeyboardsAdded":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1179
    const/16 v16, 0x0

    .line 1183
    .local v16, "tempNumGamePads":I
    move-object/from16 v0, p0

    iget-object v0, v0, mInputDevicesLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1184
    :try_start_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mInputDevicesChangedPending:Z

    move/from16 v17, v0

    if-nez v17, :cond_26

    .line 1185
    monitor-exit v18

    .line 1327
    :goto_25
    return-void

    .line 1187
    :cond_26
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mInputDevicesChangedPending:Z

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, mInputDevicesChangedListeners:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 1190
    .local v15, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    if-ge v3, v15, :cond_57

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mInputDevicesChangedListeners:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 1195
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, mInputDevices:[Landroid/view/InputDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v11, v0

    .line 1196
    .local v11, "numDevices":I
    mul-int/lit8 v17, v11, 0x2

    move/from16 v0, v17

    new-array v2, v0, [I
    :try_end_66
    .catchall {:try_start_1c .. :try_end_66} :catchall_e4

    .line 1197
    .local v2, "deviceIdAndGeneration":[I
    const/4 v3, 0x0

    move v14, v13

    .end local v13    # "numFullKeyboardsAdded":I
    .local v14, "numFullKeyboardsAdded":I
    :goto_68
    if-ge v3, v11, :cond_ca

    .line 1198
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v0, v0, mInputDevices:[Landroid/view/InputDevice;

    move-object/from16 v17, v0

    aget-object v4, v17, v3

    .line 1199
    .local v4, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v17, v3, 0x2

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v19

    aput v19, v2, v17

    .line 1200
    mul-int/lit8 v17, v3, 0x2

    add-int/lit8 v17, v17, 0x1

    invoke-virtual {v4}, Landroid/view/InputDevice;->getGeneration()I

    move-result v19

    aput v19, v2, v17

    .line 1202
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v17

    if-nez v17, :cond_c8

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v17

    if-eqz v17, :cond_c8

    .line 1203
    invoke-virtual {v4}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_bd

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v17, v0
    :try_end_a4
    .catchall {:try_start_6a .. :try_end_a4} :catchall_284

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "numFullKeyboardsAdded":I
    .restart local v13    # "numFullKeyboardsAdded":I
    :try_start_a6
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1212
    :goto_ab
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v17

    if-nez v17, :cond_b9

    invoke-virtual {v4}, Landroid/view/InputDevice;->isGamePad()Z
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_e4

    move-result v17

    if-eqz v17, :cond_b9

    .line 1213
    add-int/lit8 v16, v16, 0x1

    .line 1197
    :cond_b9
    add-int/lit8 v3, v3, 0x1

    move v14, v13

    .end local v13    # "numFullKeyboardsAdded":I
    .restart local v14    # "numFullKeyboardsAdded":I
    goto :goto_68

    .line 1207
    :cond_bd
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v0, v0, mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c8
    move v13, v14

    .end local v14    # "numFullKeyboardsAdded":I
    .restart local v13    # "numFullKeyboardsAdded":I
    goto :goto_ab

    .line 1217
    .end local v4    # "inputDevice":Landroid/view/InputDevice;
    .end local v13    # "numFullKeyboardsAdded":I
    .restart local v14    # "numFullKeyboardsAdded":I
    :cond_ca
    monitor-exit v18
    :try_end_cb
    .catchall {:try_start_bd .. :try_end_cb} :catchall_284

    .line 1220
    const/4 v3, 0x0

    :goto_cc
    if-ge v3, v15, :cond_e7

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 1220
    add-int/lit8 v3, v3, 0x1

    goto :goto_cc

    .line 1217
    .end local v2    # "deviceIdAndGeneration":[I
    .end local v3    # "i":I
    .end local v11    # "numDevices":I
    .end local v14    # "numFullKeyboardsAdded":I
    .end local v15    # "numListeners":I
    .restart local v13    # "numFullKeyboardsAdded":I
    :catchall_e4
    move-exception v17

    :goto_e5
    :try_start_e5
    monitor-exit v18
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v17

    .line 1224
    .end local v13    # "numFullKeyboardsAdded":I
    .restart local v2    # "deviceIdAndGeneration":[I
    .restart local v3    # "i":I
    .restart local v11    # "numDevices":I
    .restart local v14    # "numFullKeyboardsAdded":I
    .restart local v15    # "numListeners":I
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1f0

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1229
    .local v12, "numFullKeyboards":I
    const/4 v8, 0x0

    .line 1230
    .local v8, "missingLayoutForExternalKeyboard":Z
    const/4 v9, 0x0

    .line 1231
    .local v9, "missingLayoutForExternalKeyboardAdded":Z
    const/4 v10, 0x0

    .line 1232
    .local v10, "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    const/4 v6, 0x0

    .line 1233
    .local v6, "keyboardMissingLayout":Landroid/view/InputDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1234
    const/4 v3, 0x0

    :goto_10e
    if-ge v3, v12, :cond_138

    .line 1235
    :try_start_110
    move-object/from16 v0, p0

    iget-object v0, v0, mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    .line 1236
    .restart local v4    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 1238
    .local v7, "layout":Ljava/lang/String;
    if-nez v7, :cond_133

    .line 1239
    const/4 v8, 0x1

    .line 1240
    if-ge v3, v14, :cond_133

    .line 1241
    const/4 v9, 0x1

    .line 1242
    if-nez v6, :cond_136

    .line 1243
    move-object v6, v4

    .line 1234
    :cond_133
    :goto_133
    add-int/lit8 v3, v3, 0x1

    goto :goto_10e

    .line 1245
    :cond_136
    const/4 v10, 0x1

    goto :goto_133

    .line 1250
    .end local v4    # "inputDevice":Landroid/view/InputDevice;
    .end local v7    # "layout":Ljava/lang/String;
    :cond_138
    monitor-exit v18
    :try_end_139
    .catchall {:try_start_110 .. :try_end_139} :catchall_1db

    .line 1251
    if-eqz v8, :cond_1e4

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "ultra_powersaving_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e4

    .line 1252
    if-eqz v9, :cond_171

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Sip_SupportKcmForHwKeyboard"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_171

    .line 1253
    if-eqz v10, :cond_1de

    .line 1257
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    .line 1304
    :cond_171
    :goto_171
    move-object/from16 v0, p0

    iget-object v0, v0, mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1307
    move-object/from16 v0, p0

    iget v0, v0, numGamePads:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1d8

    .line 1308
    const-string v17, "InputManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Number of connected gamepad is changed to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    move-object/from16 v0, p0

    iget v0, v0, numGamePads:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_252

    .line 1311
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAddingGamepadIntentPending:Z

    .line 1312
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSystemReady:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d2

    .line 1313
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.samsung.android.input.GAMEPAD_DEVICE_ADDED"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1314
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1324
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1d2
    :goto_1d2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, numGamePads:I

    :cond_1d8
    move v13, v14

    .line 1327
    .end local v14    # "numFullKeyboardsAdded":I
    .restart local v13    # "numFullKeyboardsAdded":I
    goto/16 :goto_25

    .line 1250
    .end local v13    # "numFullKeyboardsAdded":I
    .restart local v14    # "numFullKeyboardsAdded":I
    :catchall_1db
    move-exception v17

    :try_start_1dc
    monitor-exit v18
    :try_end_1dd
    .catchall {:try_start_1dc .. :try_end_1dd} :catchall_1db

    throw v17

    .line 1259
    :cond_1de
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_171

    .line 1262
    :cond_1e4
    move-object/from16 v0, p0

    iget-boolean v0, v0, mKeyboardLayoutNotificationShown:Z

    move/from16 v17, v0

    if-eqz v17, :cond_171

    .line 1263
    invoke-direct/range {p0 .. p0}, hideMissingKeyboardLayoutNotification()V

    goto :goto_171

    .line 1268
    .end local v6    # "keyboardMissingLayout":Landroid/view/InputDevice;
    .end local v8    # "missingLayoutForExternalKeyboard":Z
    .end local v9    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v10    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    .end local v12    # "numFullKeyboards":I
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1269
    .restart local v12    # "numFullKeyboards":I
    const/4 v8, 0x0

    .line 1270
    .restart local v8    # "missingLayoutForExternalKeyboard":Z
    const/4 v9, 0x0

    .line 1271
    .restart local v9    # "missingLayoutForExternalKeyboardAdded":Z
    const/4 v10, 0x0

    .line 1272
    .restart local v10    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    const/4 v6, 0x0

    .line 1274
    .restart local v6    # "keyboardMissingLayout":Landroid/view/InputDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1275
    const/4 v3, 0x0

    :goto_206
    if-ge v3, v12, :cond_230

    .line 1276
    :try_start_208
    move-object/from16 v0, p0

    iget-object v0, v0, mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    .line 1277
    .restart local v4    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 1279
    .restart local v7    # "layout":Ljava/lang/String;
    if-nez v7, :cond_22b

    .line 1280
    const/4 v8, 0x1

    .line 1281
    if-ge v3, v14, :cond_22b

    .line 1282
    const/4 v9, 0x1

    .line 1283
    if-nez v6, :cond_22e

    .line 1284
    move-object v6, v4

    .line 1275
    :cond_22b
    :goto_22b
    add-int/lit8 v3, v3, 0x1

    goto :goto_206

    .line 1286
    :cond_22e
    const/4 v10, 0x1

    goto :goto_22b

    .line 1291
    .end local v4    # "inputDevice":Landroid/view/InputDevice;
    .end local v7    # "layout":Ljava/lang/String;
    :cond_230
    monitor-exit v18
    :try_end_231
    .catchall {:try_start_208 .. :try_end_231} :catchall_249

    .line 1293
    if-eqz v8, :cond_171

    if-eqz v9, :cond_171

    .line 1294
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mMissingKeyboardLayoutNotificationPending:Z

    .line 1295
    if-eqz v10, :cond_24c

    .line 1296
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    goto/16 :goto_171

    .line 1291
    :catchall_249
    move-exception v17

    :try_start_24a
    monitor-exit v18
    :try_end_24b
    .catchall {:try_start_24a .. :try_end_24b} :catchall_249

    throw v17

    .line 1298
    :cond_24c
    move-object/from16 v0, p0

    iput-object v6, v0, mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    goto/16 :goto_171

    .line 1317
    :cond_252
    move-object/from16 v0, p0

    iget v0, v0, numGamePads:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1d2

    .line 1318
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAddingGamepadIntentPending:Z

    .line 1319
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSystemReady:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d2

    .line 1320
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.samsung.android.input.GAMEPAD_DEVICE_REMOVED"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1321
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1d2

    .line 1217
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "keyboardMissingLayout":Landroid/view/InputDevice;
    .end local v8    # "missingLayoutForExternalKeyboard":Z
    .end local v9    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v10    # "multipleMissingLayoutsForExternalKeyboardsAdded":Z
    .end local v12    # "numFullKeyboards":I
    :catchall_284
    move-exception v17

    move v13, v14

    .end local v14    # "numFullKeyboardsAdded":I
    .restart local v13    # "numFullKeyboardsAdded":I
    goto/16 :goto_e5
.end method

.method private deliverTabletModeChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .prologue
    .line 1415
    iget-object v2, p0, mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1417
    iget-object v3, p0, mTabletModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1418
    :try_start_8
    iget-object v2, p0, mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1419
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_1f

    .line 1420
    iget-object v2, p0, mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1419
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1423
    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_31

    .line 1424
    const/4 v0, 0x0

    :goto_21
    if-ge v0, v1, :cond_34

    .line 1425
    iget-object v2, p0, mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 1424
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1423
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 1428
    .restart local v0    # "i":I
    .restart local v1    # "numListeners":I
    :cond_34
    return-void
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2735
    iget-object v0, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private getBlockKeysSetting(Z)Z
    .registers 10
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2312
    move v1, p1

    .line 2314
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "parental_control_block_key"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_18

    move-result v4

    if-ne v4, v2, :cond_16

    move v1, v2

    .line 2320
    :goto_15
    return v1

    :cond_16
    move v1, v3

    .line 2314
    goto :goto_15

    .line 2317
    :catch_18
    move-exception v0

    .line 2318
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getBlockKeysSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    .prologue
    .line 3584
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 3585
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 3586
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 3587
    const-string v0, "InputManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    :cond_1d
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 3584
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCoverTestModeSetting(I)I
    .registers 6
    .param p1, "defaultValue"    # I

    .prologue
    .line 2272
    move v0, p1

    .line 2274
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cover_test_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 2279
    :goto_e
    return v0

    .line 2277
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3126
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3130
    :cond_7
    return-object v1
.end method

.method private getDiffKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    const/4 v2, 0x0

    .line 2950
    iget-boolean v3, p0, mSystemReady:Z

    if-nez v3, :cond_7

    move-object v1, v2

    .line 2997
    :cond_6
    :goto_6
    return-object v1

    .line 2954
    :cond_7
    invoke-virtual {p0, p1}, getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2955
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_f

    move-object v1, v2

    .line 2956
    goto :goto_6

    .line 2959
    :cond_f
    const-string v3, "InputManager"

    const-string/jumbo v4, "loading keyboard layout for BKB-10"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    const-string v3, ".*arabic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*bulgarian"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*english_uk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*french_ca"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*greek"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*hebrew"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*italian"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*norwegian"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*spanish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*swiss_french"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*swiss_german"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, ".*turkish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 2972
    :cond_77
    const-string v3, "_bkb10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2975
    :cond_7d
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "overlay KLD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 2979
    .local v1, "result":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/input/InputManagerService$20;

    invoke-direct {v3, p0, v1}, Lcom/android/server/input/InputManagerService$20;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2992
    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-nez v3, :cond_6

    .line 2993
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 2995
    goto/16 :goto_6
.end method

.method private getDoubleTapTimeout()I
    .registers 2

    .prologue
    .line 2808
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .registers 11

    .prologue
    .line 2752
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2755
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2757
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2758
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 2760
    .local v1, "confreader":Ljava/io/FileReader;
    :try_start_13
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_63
    .catchall {:try_start_13 .. :try_end_18} :catchall_8e

    .line 2761
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_18
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 2762
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2763
    const-string/jumbo v7, "devices"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2766
    :cond_25
    :goto_25
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2767
    const-string/jumbo v7, "device"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_32} :catch_56
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_32} :catch_9a
    .catchall {:try_start_18 .. :try_end_32} :catchall_97

    move-result v7

    if-nez v7, :cond_48

    .line 2780
    if-eqz v2, :cond_3a

    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_60

    :cond_3a
    move-object v1, v2

    .line 2783
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :cond_3b
    :goto_3b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 2770
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :cond_48
    const/4 v7, 0x0

    :try_start_49
    const-string/jumbo v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2771
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_25

    .line 2772
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_55} :catch_56
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_55} :catch_9a
    .catchall {:try_start_49 .. :try_end_55} :catchall_97

    goto :goto_25

    .line 2775
    .end local v4    # "name":Ljava/lang/String;
    :catch_56
    move-exception v7

    move-object v1, v2

    .line 2780
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :goto_58
    if-eqz v1, :cond_3b

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_3b

    :catch_5e
    move-exception v7

    goto :goto_3b

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_60
    move-exception v7

    move-object v1, v2

    .line 2781
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_3b

    .line 2777
    :catch_63
    move-exception v3

    .line 2778
    .local v3, "e":Ljava/lang/Exception;
    :goto_64
    :try_start_64
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_64 .. :try_end_86} :catchall_8e

    .line 2780
    if-eqz v1, :cond_3b

    :try_start_88
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_3b

    :catch_8c
    move-exception v7

    goto :goto_3b

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_8e
    move-exception v7

    :goto_8f
    if-eqz v1, :cond_94

    :try_start_91
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    :cond_94
    :goto_94
    throw v7

    :catch_95
    move-exception v8

    goto :goto_94

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catchall_97
    move-exception v7

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_8f

    .line 2777
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_9a
    move-exception v3

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_64

    .line 2775
    :catch_9d
    move-exception v7

    goto :goto_58
.end method

.method private getGloveModeSetting(Z)Z
    .registers 10
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2198
    move v1, p1

    .line 2200
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_adjust_touch"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_17

    move-result v4

    if-ne v4, v2, :cond_15

    move v1, v2

    .line 2206
    :goto_14
    return v1

    :cond_15
    move v1, v3

    .line 2200
    goto :goto_14

    .line 2202
    :catch_17
    move-exception v0

    .line 2203
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getGloveModeSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method private getHoverTapSlop()I
    .registers 2

    .prologue
    .line 2803
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .registers 2

    .prologue
    .line 2798
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatDelay()I
    .registers 2

    .prologue
    .line 2793
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .registers 2

    .prologue
    .line 2788
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    const/4 v6, 0x0

    .line 2828
    iget-boolean v7, p0, mSystemReady:Z

    if-nez v7, :cond_7

    move-object v5, v6

    .line 2893
    :cond_6
    :goto_6
    return-object v5

    .line 2832
    :cond_7
    invoke-virtual {p0, p1}, getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 2833
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v4, :cond_f

    move-object v5, v6

    .line 2834
    goto :goto_6

    .line 2838
    :cond_f
    const/4 v3, 0x0

    .line 2839
    .local v3, "isOldType":Z
    iget-object v7, p0, mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2840
    :try_start_13
    iget-object v8, p0, mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v8

    .line 2841
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_3c

    .line 2842
    iget-object v8, p0, mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v8, v1

    .line 2843
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 2844
    invoke-virtual {v2}, Landroid/view/InputDevice;->getVendorId()I

    move-result v8

    const/16 v9, 0x4e8

    if-ne v8, v9, :cond_3c

    invoke-virtual {v2}, Landroid/view/InputDevice;->getProductId()I

    move-result v8

    const/16 v9, 0x7021

    if-ne v8, v9, :cond_3c

    .line 2845
    const/4 v3, 0x1

    .line 2850
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_3c
    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_103

    .line 2852
    if-eqz v3, :cond_b5

    .line 2853
    const-string v7, "InputManager"

    const-string/jumbo v8, "loading keyboard layout for BKB-10"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    const-string v7, ".*arabic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*bulgarian"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*english_uk"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*french_ca"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*greek"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*hebrew"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*italian"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*norwegian"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*norwegian_sami"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*spanish"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*swiss_french"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*swiss_german"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string v7, ".*turkish"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 2867
    :cond_af
    const-string v7, "_bkb10"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2871
    :cond_b5
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "overlay KLD: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    .line 2875
    .local v5, "result":[Ljava/lang/String;
    new-instance v7, Lcom/android/server/input/InputManagerService$19;

    invoke-direct {v7, p0, v5}, Lcom/android/server/input/InputManagerService$19;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v4, v7}, visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2888
    const/4 v7, 0x0

    aget-object v7, v5, v7

    if-nez v7, :cond_6

    .line 2889
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 2891
    goto/16 :goto_6

    .line 2841
    .end local v5    # "result":[Ljava/lang/String;
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_ff
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 2850
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_103
    move-exception v6

    :try_start_104
    monitor-exit v7
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw v6
.end method

.method private getKidsModeSetting(Z)Z
    .registers 10
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2324
    move v1, p1

    .line 2326
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "kids_home_mode"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_18

    move-result v4

    if-ne v4, v2, :cond_16

    move v1, v2

    .line 2332
    :goto_15
    return v1

    :cond_16
    move v1, v3

    .line 2326
    goto :goto_15

    .line 2329
    :catch_18
    move-exception v0

    .line 2330
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getKidsModeSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1667
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    .line 1668
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "identifier and descriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1671
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    if-nez v1, :cond_22

    .line 1672
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1677
    :goto_21
    return-object v1

    .line 1674
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1675
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1676
    const-string v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method private getLongPressTimeout()I
    .registers 2

    .prologue
    .line 2813
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPenHoveringSetting(Z)Z
    .registers 10
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2338
    move v1, p1

    .line 2340
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, mContext:Landroid/content/Context;

    if-eqz v4, :cond_19

    .line 2341
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_1c

    move-result v4

    if-ne v4, v2, :cond_1a

    move v1, v2

    .line 2348
    :cond_19
    :goto_19
    return v1

    :cond_1a
    move v1, v3

    .line 2341
    goto :goto_19

    .line 2345
    :catch_1c
    move-exception v0

    .line 2346
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getPenHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .registers 2

    .prologue
    .line 2823
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .registers 2

    .prologue
    .line 2818
    iget-object v0, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .registers 5

    .prologue
    .line 1964
    const/4 v0, 0x0

    .line 1966
    .local v0, "speed":I
    :try_start_1
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 1970
    :goto_f
    return v0

    .line 1968
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private getShowFingerHoveringSetting(Z)Z
    .registers 10
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2285
    move v1, p1

    .line 2287
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view_pointer"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_27

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_29

    move-result v4

    if-ne v4, v2, :cond_27

    move v1, v2

    .line 2294
    :goto_26
    return v1

    :cond_27
    move v1, v3

    .line 2287
    goto :goto_26

    .line 2291
    :catch_29
    move-exception v0

    .line 2292
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getShowFingerHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private getShowHoveringSetting(Z)Z
    .registers 10
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2300
    move v1, p1

    .line 2302
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering_pointer"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_18

    move-result v4

    if-ne v4, v2, :cond_16

    move v1, v2

    .line 2307
    :goto_15
    return v1

    :cond_16
    move v1, v3

    .line 2302
    goto :goto_15

    .line 2304
    :catch_18
    move-exception v0

    .line 2305
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getShowHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private getShowTouchesSetting(I)I
    .registers 6
    .param p1, "defaultValue"    # I

    .prologue
    .line 2261
    move v0, p1

    .line 2263
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 2267
    :goto_f
    return v0

    .line 2265
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private getSideSyncFromSetting(Z)Z
    .registers 10
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2354
    move v1, p1

    .line 2356
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sidesync_source_presentation"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_18

    move-result v4

    if-ne v4, v2, :cond_16

    move v1, v2

    .line 2361
    :goto_15
    return v1

    :cond_16
    move v1, v3

    .line 2356
    goto :goto_15

    .line 2358
    :catch_18
    move-exception v0

    .line 2359
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getSideSyncSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private getSuspendibleDevices(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 3135
    iget-object v0, p0, mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get suspendable device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    return-void
.end method

.method private declared-synchronized getVRManagerService()Lcom/android/internal/app/IVRManagerService;
    .registers 3

    .prologue
    .line 3596
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_1e

    .line 3597
    const-string/jumbo v0, "vr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    iput-object v0, p0, mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    .line 3598
    iget-object v0, p0, mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_1e

    .line 3599
    const-string v0, "InputManager"

    const-string/jumbo v1, "warning: no VR_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    :cond_1e
    iget-object v0, p0, mVRManagerService:Lcom/android/internal/app/IVRManagerService;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 3596
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .registers 3

    .prologue
    .line 2746
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1808
    invoke-virtual {p0, p1}, getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 1809
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_4e

    .line 1813
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    invoke-direct {p0, v5}, getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1814
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v6

    .line 1816
    :try_start_11
    iget-object v5, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v0

    .line 1817
    .local v0, "changed":Z
    iget-object v5, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_4f

    move-result-object v4

    .line 1820
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1d
    iget-object v5, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1822
    monitor-exit v6
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_56

    .line 1824
    if-eqz v0, :cond_4e

    .line 1825
    iget-object v5, p0, mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v5, :cond_31

    .line 1826
    iget-object v5, p0, mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 1827
    const/4 v5, 0x0

    iput-object v5, p0, mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1829
    :cond_31
    if-eqz v4, :cond_4b

    .line 1830
    invoke-virtual {p0, v4}, getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 1831
    .local v3, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v3, :cond_4b

    .line 1832
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1834
    iget-object v5, p0, mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1838
    .end local v3    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_4b
    invoke-direct {p0}, reloadKeyboardLayouts()V

    .line 1841
    .end local v0    # "changed":Z
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_4e
    return-void

    .line 1820
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_4f
    move-exception v5

    :try_start_50
    iget-object v7, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v7}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v5

    .line 1822
    :catchall_56
    move-exception v5

    monitor-exit v6
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_56

    throw v5
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1476
    iget-boolean v0, p0, mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_14

    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, mKeyboardLayoutNotificationShown:Z

    .line 1478
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x1040a5c

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1485
    iput-object v3, p0, mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 1488
    :cond_14
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;II)Z
    .registers 20
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1047
    if-nez p1, :cond_b

    .line 1048
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "event must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1050
    :cond_b
    if-eqz p3, :cond_20

    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_20

    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_20

    .line 1053
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mode is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1056
    :cond_20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1057
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1058
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1063
    .local v12, "ident":J
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerService;->getDssScaleFactor(I)F

    move-result v15

    .line 1064
    .local v15, "scaleFactorf":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v15, v2

    if-lez v2, :cond_48

    .line 1065
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-eqz v2, :cond_48

    .line 1066
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v11, v0

    .line 1067
    .local v11, "ev":Landroid/view/MotionEvent;
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->scale(F)V

    .line 1072
    .end local v11    # "ev":Landroid/view/MotionEvent;
    :cond_48
    move-object/from16 v0, p0

    iget-wide v2, v0, mPtr:J

    const/16 v9, 0x7530

    const/high16 v10, 0x8000000

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v8, p3

    invoke-static/range {v2 .. v10}, nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
    :try_end_59
    .catchall {:try_start_2c .. :try_end_59} :catchall_80

    move-result v14

    .line 1075
    .local v14, "result":I
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1077
    packed-switch v14, :pswitch_data_ce

    .line 1089
    :pswitch_60
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v2, 0x0

    :goto_7f
    return v2

    .line 1075
    .end local v14    # "result":I
    .end local v15    # "scaleFactorf":F
    :catchall_80
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1079
    .restart local v14    # "result":I
    .restart local v15    # "scaleFactorf":F
    :pswitch_85
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " permission denied."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1083
    :pswitch_ab
    const/4 v2, 0x1

    goto :goto_7f

    .line 1085
    :pswitch_ad
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timed out."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v2, 0x0

    goto :goto_7f

    .line 1077
    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_85
        :pswitch_60
        :pswitch_ad
    .end packed-switch
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2729
    iget-object v0, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2689
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2690
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2691
    .local v0, "action":I
    const/16 v2, 0x433

    if-eq v1, v2, :cond_10

    const/16 v2, 0x434

    if-ne v1, v2, :cond_20

    :cond_10
    if-nez v0, :cond_20

    .line 2693
    iget-object v2, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2707
    :cond_20
    iget-object v2, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v2

    return v2
.end method

.method private interceptKeyBeforeQuickAccess(IFF)V
    .registers 5
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 2722
    iget-object v0, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQuickAccess(IFF)V

    .line 2723
    return-void
.end method

.method private interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 2715
    iget-object v0, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method private isKeyboardCover(I)Z
    .registers 3
    .param p1, "coverType"    # I

    .prologue
    .line 2627
    const/16 v0, 0x9

    if-eq p1, v0, :cond_8

    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 2628
    :cond_8
    const/4 v0, 0x1

    .line 2630
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static native nativeAddOrRemoveVirtualGamePadDevice(JZ)I
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeCoverEventFinished(J)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeGetInboundQueueLength(J)I
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativeRedirectTouchToDisplay(JZII)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeReloadPointerIcon(JII)V
.end method

.method private static native nativeSendDuplicatedKeyToFocus(JZ)V
.end method

.method private static native nativeSetBlockKeys(JZ)V
.end method

.method private static native nativeSetCoverHeight(JI)V
.end method

.method private static native nativeSetCoverTestModeType(JI)V
.end method

.method private static native nativeSetCoverVerify(JI)V
.end method

.method private static native nativeSetDisplayInputDrop(JZZZ)V
.end method

.method private static native nativeSetDisplayViewport(JZIIIIIIIIIIII)V
.end method

.method private static native nativeSetFlipCoverTouchEnabled(JZ)V
.end method

.method private static native nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetGloveMode(JZ)V
.end method

.method private static native nativeSetHoverIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetKidsMode(JZ)V
.end method

.method private static native nativeSetLedState(JZ)I
.end method

.method private static native nativeSetMonitorChannelFilter(JLandroid/view/InputChannel;I)V
.end method

.method private static native nativeSetMouseControlType(JI)V
.end method

.method private static native nativeSetMouseCursorVisibility(JZ)V
.end method

.method private static native nativeSetPenHovering(JZ)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetShowFingerHovering(JZ)V
.end method

.method private static native nativeSetShowHovering(JZ)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetStartedShutdown(JZ)V
.end method

.method private static native nativeSetSubInteractive(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .registers 13
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 2644
    const-string v6, "MaybeSluggish"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 2645
    if-eqz p1, :cond_38

    .line 2647
    iget-object v6, p1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2648
    .local v2, "getInfo":[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_16
    if-ge v3, v4, :cond_3a

    aget-object v5, v1, v3

    .line 2649
    .local v5, "str":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 2650
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2651
    .local v0, "app_activity":[Ljava/lang/String;
    aget-object v6, v0, v8

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2652
    const-string p3, "Invalid"

    .line 2648
    .end local v0    # "app_activity":[Ljava/lang/String;
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2654
    .restart local v0    # "app_activity":[Ljava/lang/String;
    :cond_35
    aget-object p3, v0, v8

    goto :goto_32

    .line 2659
    .end local v0    # "app_activity":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "getInfo":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_38
    const-string p3, "SYSTEM"

    .line 2662
    :cond_3a
    iget-object v6, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, p3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2663
    const-wide/16 v6, 0x0

    .line 2666
    :goto_47
    return-wide v6

    :cond_48
    iget-object v6, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v6, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_47
.end method

.method private notifyConfigurationChanged(J)V
    .registers 4
    .param p1, "whenNanos"    # J

    .prologue
    .line 2486
    iget-object v0, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 2487
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 3
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 2636
    iget-object v0, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    .line 2637
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 2491
    iget-object v1, p0, mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2492
    :try_start_3
    iget-boolean v0, p0, mInputDevicesChangedPending:Z

    if-nez v0, :cond_16

    .line 2493
    const/4 v0, 0x1

    iput-boolean v0, p0, mInputDevicesChangedPending:Z

    .line 2494
    iget-object v0, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x1

    iget-object v3, p0, mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2498
    :cond_16
    iput-object p1, p0, mInputDevices:[Landroid/view/InputDevice;

    .line 2499
    monitor-exit v1

    .line 2500
    return-void

    .line 2499
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private notifySwitch(JII)V
    .registers 22
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    .line 2505
    const-string v14, "InputManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "notifySwitch: values="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mask="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    and-int/lit8 v14, p4, 0x1

    if-eqz v14, :cond_3d

    .line 2510
    and-int/lit8 v14, p3, 0x1

    if-nez v14, :cond_144

    const/4 v12, 0x1

    .line 2511
    .local v12, "lidOpen":Z
    :goto_34
    move-object/from16 v0, p0

    iget-object v14, v0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v12}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 2514
    .end local v12    # "lidOpen":Z
    :cond_3d
    move/from16 v0, p4

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_53

    .line 2515
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_147

    const/4 v11, 0x1

    .line 2516
    .local v11, "lensCovered":Z
    :goto_4a
    move-object/from16 v0, p0

    iget-object v14, v0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v11}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 2520
    .end local v11    # "lensCovered":Z
    :cond_53
    const/high16 v14, 0x80000

    and-int v14, v14, p4

    if-eqz v14, :cond_69

    .line 2521
    const/high16 v14, 0x80000

    and-int v14, v14, p3

    if-nez v14, :cond_14a

    const/4 v13, 0x1

    .line 2522
    .local v13, "penInsert":Z
    :goto_60
    move-object/from16 v0, p0

    iget-object v14, v0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v13}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPenSwitchChanged(JZ)V

    .line 2525
    .end local v13    # "penInsert":Z
    :cond_69
    const/high16 v14, 0x200000

    and-int v14, v14, p4

    if-eqz v14, :cond_b9

    .line 2526
    const/high16 v14, 0x200000

    and-int v14, v14, p3

    if-eqz v14, :cond_14d

    const/4 v8, 0x1

    .line 2527
    .local v8, "coverOpen":Z
    :goto_76
    invoke-direct/range {p0 .. p0}, getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v7

    .line 2529
    .local v7, "cm":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v7, :cond_91

    .line 2531
    if-nez v8, :cond_8c

    if-nez v8, :cond_91

    :try_start_80
    move-object/from16 v0, p0

    iget v14, v0, mCurrentCoverType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isKeyboardCover(I)Z

    move-result v14

    if-nez v14, :cond_91

    .line 2533
    :cond_8c
    move-wide/from16 v0, p1

    invoke-interface {v7, v0, v1, v8}, Lcom/samsung/android/cover/ICoverManager;->notifyCoverSwitchStateChanged(JZ)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_91} :catch_150

    .line 2542
    :cond_91
    :goto_91
    if-nez v8, :cond_a1

    if-nez v8, :cond_aa

    move-object/from16 v0, p0

    iget v14, v0, mCurrentCoverType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isKeyboardCover(I)Z

    move-result v14

    if-eqz v14, :cond_aa

    .line 2543
    :cond_a1
    move-object/from16 v0, p0

    iget-object v14, v0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v8}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCoverSwitchStateChanged(JZ)V

    .line 2547
    :cond_aa
    move-object/from16 v0, p0

    iget-object v14, v0, mMotionManagerCallbacks:Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

    if-eqz v14, :cond_b9

    .line 2548
    move-object/from16 v0, p0

    iget-object v14, v0, mMotionManagerCallbacks:Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v8}, Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;->notifyCoverSwitchStateChanged(JZ)V

    .line 2553
    .end local v7    # "cm":Lcom/samsung/android/cover/ICoverManager;
    .end local v8    # "coverOpen":Z
    :cond_b9
    const/high16 v14, 0x400000

    and-int v14, v14, p4

    if-eqz v14, :cond_cf

    .line 2554
    const/high16 v14, 0x400000

    and-int v14, v14, p3

    if-eqz v14, :cond_15a

    const/4 v10, 0x1

    .line 2555
    .local v10, "gloveEnable":Z
    :goto_c6
    move-object/from16 v0, p0

    iget-object v14, v0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v10}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyGloveSwitchChanged(JZ)V

    .line 2558
    .end local v10    # "gloveEnable":Z
    :cond_cf
    const/high16 v14, 0x4000000

    and-int v14, v14, p4

    if-eqz v14, :cond_e7

    .line 2559
    const/high16 v14, 0x4000000

    and-int v14, v14, p3

    if-eqz v14, :cond_15d

    const/4 v5, 0x1

    .line 2560
    .local v5, "attach":Z
    :goto_dc
    invoke-direct/range {p0 .. p0}, getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v7

    .line 2562
    .restart local v7    # "cm":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v7, :cond_e7

    .line 2563
    :try_start_e2
    move-wide/from16 v0, p1

    invoke-interface {v7, v0, v1, v5}, Lcom/samsung/android/cover/ICoverManager;->notifyCoverAttachStateChanged(JZ)V
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_e7} :catch_160

    .line 2572
    .end local v5    # "attach":Z
    .end local v7    # "cm":Lcom/samsung/android/cover/ICoverManager;
    :cond_e7
    :goto_e7
    const/high16 v14, 0x8000000

    and-int v14, v14, p4

    if-eqz v14, :cond_fd

    .line 2573
    const/high16 v14, 0x8000000

    and-int v14, v14, p3

    if-eqz v14, :cond_16a

    const/4 v6, 0x1

    .line 2574
    .local v6, "attached":Z
    :goto_f4
    move-object/from16 v0, p0

    iget-object v14, v0, mUnVerifiedCoverAttachCallbacks:Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v6}, Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;->notifyUnverifiedCoverAttachChanged(JZ)V

    .line 2610
    .end local v6    # "attached":Z
    :cond_fd
    move-object/from16 v0, p0

    iget-boolean v14, v0, mUseDevInputEventForAudioJack:Z

    if-eqz v14, :cond_116

    move/from16 v0, p4

    and-int/lit16 v14, v0, 0xd4

    if-eqz v14, :cond_116

    .line 2611
    move-object/from16 v0, p0

    iget-object v14, v0, mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v14, v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 2615
    :cond_116
    and-int/lit8 v14, p4, 0x2

    if-eqz v14, :cond_143

    .line 2616
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 2617
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v14, -0x1

    and-long v14, v14, p1

    long-to-int v14, v14

    iput v14, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2618
    const/16 v14, 0x20

    shr-long v14, p1, v14

    long-to-int v14, v14

    iput v14, v4, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2619
    and-int/lit8 v14, p3, 0x2

    if-eqz v14, :cond_16c

    const/4 v14, 0x1

    :goto_131
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2620
    move-object/from16 v0, p0

    iget-object v14, v0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v15, 0x6

    invoke-virtual {v14, v15, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 2623
    .end local v4    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_143
    return-void

    .line 2510
    :cond_144
    const/4 v12, 0x0

    goto/16 :goto_34

    .line 2515
    :cond_147
    const/4 v11, 0x0

    goto/16 :goto_4a

    .line 2521
    :cond_14a
    const/4 v13, 0x0

    goto/16 :goto_60

    .line 2526
    :cond_14d
    const/4 v8, 0x0

    goto/16 :goto_76

    .line 2538
    .restart local v7    # "cm":Lcom/samsung/android/cover/ICoverManager;
    .restart local v8    # "coverOpen":Z
    :catch_150
    move-exception v9

    .line 2539
    .local v9, "e":Landroid/os/RemoteException;
    const-string v14, "InputManager"

    const-string v15, "RemoteException in notifyCoverSwitchStateChanged: "

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_91

    .line 2554
    .end local v7    # "cm":Lcom/samsung/android/cover/ICoverManager;
    .end local v8    # "coverOpen":Z
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_15a
    const/4 v10, 0x0

    goto/16 :goto_c6

    .line 2559
    :cond_15d
    const/4 v5, 0x0

    goto/16 :goto_dc

    .line 2565
    .restart local v5    # "attach":Z
    .restart local v7    # "cm":Lcom/samsung/android/cover/ICoverManager;
    :catch_160
    move-exception v9

    .line 2566
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v14, "InputManager"

    const-string v15, "RemoteException in notifyCoverAttachStateChanged: "

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e7

    .line 2573
    .end local v5    # "attach":Z
    .end local v7    # "cm":Lcom/samsung/android/cover/ICoverManager;
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_16a
    const/4 v6, 0x0

    goto :goto_f4

    .line 2619
    .restart local v4    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_16c
    const/4 v14, 0x0

    goto :goto_131
.end method

.method private notifyVRProximityEventChanged(I)V
    .registers 5
    .param p1, "event"    # I

    .prologue
    .line 2899
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVRProximityEventChanged event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    iget-object v0, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2902
    return-void
.end method

.method private notifyVRTAEventChanged(I)V
    .registers 5
    .param p1, "event"    # I

    .prologue
    .line 2906
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVRTAEventChanged event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v0, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v1, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2909
    return-void
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 1167
    iget-object v1, p0, mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1168
    :try_start_3
    iget-object v0, p0, mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1169
    monitor-exit v1

    .line 1170
    return-void

    .line 1169
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private onTabletModeChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 1408
    iget-object v1, p0, mTabletModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1409
    :try_start_3
    iget-object v0, p0, mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1410
    monitor-exit v1

    .line 1411
    return-void

    .line 1410
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private registerBlockKeysSettingObserver()V
    .registers 6

    .prologue
    .line 2212
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "parental_control_block_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$15;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$15;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2220
    return-void
.end method

.method private registerCoverTestModeSettingObserver()V
    .registers 6

    .prologue
    .line 2136
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_test_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$10;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2144
    return-void
.end method

.method private registerGloveModeSettingObserver()V
    .registers 6

    .prologue
    .line 2187
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_adjust_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$14;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2195
    return-void
.end method

.method private registerKidsModeSettingObserver()V
    .registers 6

    .prologue
    .line 2223
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$16;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$16;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2231
    return-void
.end method

.method private registerPenHoveringSettingObserver()V
    .registers 6

    .prologue
    .line 2236
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$17;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$17;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2244
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .prologue
    .line 1953
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$8;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1961
    return-void
.end method

.method private registerShowFingerHoveringPointerSettingObserver()V
    .registers 6

    .prologue
    .line 2160
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_air_view_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$12;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2168
    return-void
.end method

.method private registerShowFingerHoveringSettingObserver()V
    .registers 6

    .prologue
    .line 2149
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$11;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2157
    return-void
.end method

.method private registerShowHoveringPointerSettingObserver()V
    .registers 6

    .prologue
    .line 2173
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$13;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2181
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .prologue
    .line 2124
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$9;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2132
    return-void
.end method

.method private registerSideSyncSettingObserver()V
    .registers 6

    .prologue
    .line 2249
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sidesync_source_presentation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$18;

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$18;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2257
    return-void
.end method

.method private reloadDeviceAliases()V
    .registers 3

    .prologue
    .line 794
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1}, nativeReloadDeviceAliases(J)V

    .line 795
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .registers 3

    .prologue
    .line 787
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1}, nativeReloadKeyboardLayouts(J)V

    .line 788
    return-void
.end method

.method private sendSGReport(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1862
    const-string/jumbo v1, "sys.config.bigdata_enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "sys.isdumpstaterunning"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1876
    :cond_2e
    :goto_2e
    return-void

    .line 1868
    :cond_2f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1869
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SG_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1871
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_2e

    .line 1872
    const-string/jumbo v1, "from"

    const v2, 0x11d29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1873
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1874
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2e
.end method

.method private sendVRProximityEventChanged(I)V
    .registers 7
    .param p1, "event"    # I

    .prologue
    .line 2912
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendVRProximityEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    invoke-direct {p0}, getVRManagerService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 2915
    .local v1, "vm":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_27

    .line 2916
    const/4 v2, 0x1

    if-ne p1, v2, :cond_28

    .line 2917
    const/16 v2, 0x10

    :try_start_24
    invoke-interface {v1, v2}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V

    .line 2926
    :cond_27
    :goto_27
    return-void

    .line 2919
    :cond_28
    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_27

    .line 2923
    :catch_2e
    move-exception v0

    .line 2924
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputManager"

    const-string v3, "RemoteException in notifyCoverAttachStateChanged: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method private sendVRTAEventChanged(I)V
    .registers 7
    .param p1, "event"    # I

    .prologue
    .line 2929
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendVRTAEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    invoke-direct {p0}, getVRManagerService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 2932
    .local v1, "vm":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_37

    .line 2933
    const/4 v2, 0x1

    if-ne p1, v2, :cond_27

    .line 2934
    const/16 v2, 0x100

    :try_start_24
    invoke-interface {v1, v2}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V

    .line 2935
    :cond_27
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2f

    .line 2936
    const/16 v2, 0x200

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V

    .line 2937
    :cond_2f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_37

    .line 2938
    const/16 v2, 0x400

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_37} :catch_38

    .line 2944
    :cond_37
    :goto_37
    return-void

    .line 2941
    :catch_38
    move-exception v0

    .line 2942
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputManager"

    const-string v3, "RemoteException in notifyCoverAttachStateChanged: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method private setDisplayInputDrop(ZZZ)V
    .registers 6
    .param p1, "mainDropped"    # Z
    .param p2, "subDropped"    # Z
    .param p3, "canceled"    # Z

    .prologue
    .line 828
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, nativeSetDisplayInputDrop(JZZZ)V

    .line 829
    return-void
.end method

.method private setDisplayInputDropForMillisecond(ZZZI)V
    .registers 9
    .param p1, "mainDropped"    # Z
    .param p2, "subDropped"    # Z
    .param p3, "canceled"    # Z
    .param p4, "milliseconds"    # I

    .prologue
    const/16 v2, 0x9

    .line 833
    invoke-direct {p0, p1, p2, p3}, setDisplayInputDrop(ZZZ)V

    .line 835
    iget-object v1, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->removeMessages(I)V

    .line 836
    iget-object v1, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 837
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 838
    return-void
.end method

.method private setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V
    .registers 20
    .param p1, "external"    # Z
    .param p2, "viewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    .line 855
    move-object/from16 v0, p0

    iget-wide v2, v0, mPtr:J

    move-object/from16 v0, p2

    iget v5, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v12, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    move/from16 v16, v0

    move/from16 v4, p1

    invoke-static/range {v2 .. v16}, nativeSetDisplayViewport(JZIIIIIIIIIIII)V

    .line 862
    return-void
.end method

.method private setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .registers 5
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    const/4 v1, 0x1

    .line 843
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_9

    .line 844
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    .line 847
    :cond_9
    iget-boolean v0, p2, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_11

    .line 848
    invoke-direct {p0, v1, p2}, setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    .line 852
    :cond_10
    :goto_10
    return-void

    .line 849
    :cond_11
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_10

    .line 850
    invoke-direct {p0, v1, p1}, setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    goto :goto_10
.end method

.method private setPointerSpeedUnchecked(I)V
    .registers 4
    .param p1, "speed"    # I

    .prologue
    .line 1947
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1949
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeSetPointerSpeed(JI)V

    .line 1950
    return-void
.end method

.method private setSuspendibleDevices(Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3139
    iget-object v5, p0, mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3140
    const-string v5, "InputManager"

    const-string v6, "Not exist SuspendibleDevices"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    :cond_11
    :goto_11
    return v8

    .line 3143
    :cond_12
    const-string v5, "all"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 3144
    iget-object v5, p0, mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 3145
    .local v4, "targetdevices":[Ljava/lang/String;
    iget-object v5, p0, mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3146
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2e
    if-ge v1, v2, :cond_6a

    aget-object v3, v0, v1

    .line 3147
    .local v3, "targetdevice":Ljava/lang/String;
    iget-object v5, p0, mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p2, :cond_64

    move v6, v7

    :goto_3d
    invoke-direct {p0, v5, v6}, sysfsWrite(Ljava/lang/String;I)Z

    .line 3148
    const-string v6, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p2, :cond_66

    const-string/jumbo v5, "enabled"

    :goto_56
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_64
    move v6, v8

    .line 3147
    goto :goto_3d

    .line 3148
    :cond_66
    const-string/jumbo v5, "disabled"

    goto :goto_56

    .end local v3    # "targetdevice":Ljava/lang/String;
    :cond_6a
    move v8, v7

    .line 3150
    goto :goto_11

    .line 3151
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "targetdevices":[Ljava/lang/String;
    :cond_6c
    iget-object v5, p0, mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3152
    iget-object v5, p0, mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p2, :cond_7f

    move v8, v7

    :cond_7f
    invoke-direct {p0, v5, v8}, sysfsWrite(Ljava/lang/String;I)Z

    .line 3153
    const-string v6, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_a6

    const-string/jumbo v5, "enabled"

    :goto_98
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 3154
    goto/16 :goto_11

    .line 3153
    :cond_a6
    const-string/jumbo v5, "disabled"

    goto :goto_98
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .registers 12
    .param p1, "device"    # Landroid/view/InputDevice;

    .prologue
    const/4 v4, 0x0

    const v9, 0x1040a5c

    const/4 v1, 0x0

    .line 1432
    iget-boolean v0, p0, mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_77

    .line 1433
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1c

    .line 1435
    const-string/jumbo v0, "input_device_identifier"

    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1437
    :cond_1c
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1440
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1443
    .local v6, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1444
    .local v8, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1040a5d

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10804c1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 1461
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v9, v7, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1467
    const/4 v0, 0x1

    iput-boolean v0, p0, mKeyboardLayoutNotificationShown:Z

    .line 1469
    iput-object p1, p0, mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 1472
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_77
    return-void
.end method

.method private showTouchpadOnOffToast(I)V
    .registers 6
    .param p1, "keyCode"    # I

    .prologue
    .line 1846
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1847
    .local v0, "r":Landroid/content/res/Resources;
    const/16 v2, 0x433

    if-ne p1, v2, :cond_2c

    const v2, 0x1040a5a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1851
    .local v1, "text":Ljava/lang/String;
    :goto_11
    iget-object v2, p0, mTouchpadOnOffToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1d

    .line 1852
    iget-object v2, p0, mTouchpadOnOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1853
    const/4 v2, 0x0

    iput-object v2, p0, mTouchpadOnOffToast:Landroid/widget/Toast;

    .line 1855
    :cond_1d
    iget-object v2, p0, mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, mTouchpadOnOffToast:Landroid/widget/Toast;

    .line 1857
    iget-object v2, p0, mTouchpadOnOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1858
    return-void

    .line 1847
    .end local v1    # "text":Ljava/lang/String;
    :cond_2c
    const v2, 0x1040a5b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method private sysfsCheck(Ljava/lang/String;)Z
    .registers 8
    .param p1, "sysfs"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 3031
    const/4 v2, 0x0

    .line 3034
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_14

    .line 3038
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_16

    move-object v2, v3

    .line 3041
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_10
    return v4

    .line 3035
    :catch_11
    move-exception v0

    .line 3036
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    goto :goto_10

    .line 3040
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_14
    move-exception v1

    .line 3041
    .local v1, "io":Ljava/io/IOException;
    :goto_15
    goto :goto_10

    .line 3040
    .end local v1    # "io":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_16
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_15
.end method

.method private sysfsRead(Ljava/lang/String;Z)I
    .registers 16
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "makeFile"    # Z

    .prologue
    const/4 v9, -0x1

    .line 3069
    const/4 v0, 0x0

    .line 3070
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v8, -0x1

    .line 3074
    .local v8, "value":I
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_12} :catch_23
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_84
    .catchall {:try_start_3 .. :try_end_12} :catchall_bf

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 3098
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_13
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1a} :catch_9b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_84
    .catchall {:try_start_13 .. :try_end_1a} :catchall_bf

    move-result v8

    .line 3111
    if-eqz v0, :cond_21

    .line 3112
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_b3

    .line 3113
    const/4 v0, 0x0

    :cond_21
    :goto_21
    move v9, v8

    .line 3120
    :cond_22
    :goto_22
    return v9

    .line 3076
    :catch_23
    move-exception v2

    .line 3077
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_84
    .catchall {:try_start_24 .. :try_end_27} :catchall_bf

    .line 3079
    if-eqz p2, :cond_8f

    .line 3081
    :try_start_29
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3082
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 3083
    const-string v10, "InputManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "create new file:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4d} :catch_7f
    .catchall {:try_start_29 .. :try_end_4d} :catchall_bf

    .line 3084
    const/4 v9, 0x0

    .line 3111
    if-eqz v0, :cond_22

    .line 3112
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_55

    .line 3113
    const/4 v0, 0x0

    goto :goto_22

    .line 3115
    :catch_55
    move-exception v5

    .line 3116
    .local v5, "ie":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 3087
    .end local v5    # "ie":Ljava/io/IOException;
    :cond_5a
    :try_start_5a
    const-string v10, "InputManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file already exists:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_73} :catch_7f
    .catchall {:try_start_5a .. :try_end_73} :catchall_bf

    .line 3111
    if-eqz v0, :cond_22

    .line 3112
    :try_start_75
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7a

    .line 3113
    const/4 v0, 0x0

    goto :goto_22

    .line 3115
    :catch_7a
    move-exception v5

    .line 3116
    .restart local v5    # "ie":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 3090
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_7f
    move-exception v6

    .line 3091
    .local v6, "io":Ljava/io/IOException;
    :try_start_80
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84
    .catchall {:try_start_80 .. :try_end_83} :catchall_bf

    goto :goto_13

    .line 3107
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "io":Ljava/io/IOException;
    :catch_84
    move-exception v3

    .line 3108
    .local v3, "ee":Ljava/io/IOException;
    :try_start_85
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_bf

    .line 3111
    if-eqz v0, :cond_21

    .line 3112
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_b9

    .line 3113
    const/4 v0, 0x0

    goto :goto_21

    .line 3111
    .end local v3    # "ee":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_8f
    if-eqz v0, :cond_22

    .line 3112
    :try_start_91
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_96

    .line 3113
    const/4 v0, 0x0

    goto :goto_22

    .line 3115
    :catch_96
    move-exception v5

    .line 3116
    .restart local v5    # "ie":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 3099
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_9b
    move-exception v7

    .line 3100
    .local v7, "ne":Ljava/lang/NumberFormatException;
    :try_start_9c
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3101
    if-eqz v0, :cond_a5

    .line 3102
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a4} :catch_84
    .catchall {:try_start_9c .. :try_end_a4} :catchall_bf

    .line 3103
    const/4 v0, 0x0

    .line 3111
    :cond_a5
    if-eqz v0, :cond_22

    .line 3112
    :try_start_a7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ad

    .line 3113
    const/4 v0, 0x0

    goto/16 :goto_22

    .line 3115
    :catch_ad
    move-exception v5

    .line 3116
    .restart local v5    # "ie":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_22

    .line 3115
    .end local v5    # "ie":Ljava/io/IOException;
    .end local v7    # "ne":Ljava/lang/NumberFormatException;
    :catch_b3
    move-exception v5

    .line 3116
    .restart local v5    # "ie":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_21

    .line 3115
    .end local v5    # "ie":Ljava/io/IOException;
    .restart local v3    # "ee":Ljava/io/IOException;
    :catch_b9
    move-exception v5

    .line 3116
    .restart local v5    # "ie":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_21

    .line 3110
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v5    # "ie":Ljava/io/IOException;
    :catchall_bf
    move-exception v9

    .line 3111
    if-eqz v0, :cond_c6

    .line 3112
    :try_start_c2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c7

    .line 3113
    const/4 v0, 0x0

    .line 3117
    :cond_c6
    :goto_c6
    throw v9

    .line 3115
    :catch_c7
    move-exception v5

    .line 3116
    .restart local v5    # "ie":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c6
.end method

.method private sysfsWrite(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 3160
    const/4 v2, 0x0

    .line 3163
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_22

    .line 3168
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 3169
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_2f

    .line 3179
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1c
    return v4

    .line 3164
    :catch_1d
    move-exception v0

    .line 3165
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1c

    .line 3170
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 3171
    .local v0, "e":Ljava/io/IOException;
    :goto_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3173
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 3174
    :catch_2a
    move-exception v1

    .line 3175
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 3170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2f
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_23
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3046
    const/4 v2, 0x0

    .line 3049
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 3054
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 3055
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 3065
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 3050
    :catch_19
    move-exception v0

    .line 3051
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 3056
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 3057
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3059
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 3060
    :catch_26
    move-exception v1

    .line 3061
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 3056
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method

.method private updateKeyboardLayouts()V
    .registers 5

    .prologue
    .line 1493
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1494
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1501
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1503
    :try_start_10
    iget-object v1, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    .line 1505
    :try_start_15
    iget-object v1, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1507
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_26

    .line 1510
    invoke-direct {p0}, reloadKeyboardLayouts()V

    .line 1511
    return-void

    .line 1505
    :catchall_1f
    move-exception v1

    :try_start_20
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1507
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 11
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1560
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1561
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v7, "intent":Landroid/content/Intent;
    const/16 v0, 0x80

    invoke-virtual {v1, v7, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1564
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1565
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v4, v8, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1566
    .local v4, "priority":I
    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    goto :goto_17

    .line 1568
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "priority":I
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2e
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 10
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1572
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v6

    .line 1573
    .local v6, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v6, :cond_23

    .line 1574
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1576
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1579
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_23} :catch_24

    .line 1583
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_23
    :goto_23
    return-void

    .line 1580
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 25
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1587
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1588
    .local v13, "metaData":Landroid/os/Bundle;
    if-nez v13, :cond_7

    .line 1660
    :goto_6
    return-void

    .line 1592
    :cond_7
    const-string v2, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1593
    .local v10, "configResId":I
    if-nez v10, :cond_40

    .line 1594
    const-string v2, "InputManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1599
    :cond_40
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1600
    .local v16, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v16, :cond_ae

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1602
    .local v6, "collection":Ljava/lang/String;
    :goto_4e
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b1

    .line 1603
    move/from16 v8, p4

    .line 1609
    .local v8, "priority":I
    :goto_5a
    :try_start_5a
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1610
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_67} :catch_7b

    move-result-object v15

    .line 1612
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_68
    const-string/jumbo v2, "keyboard-layouts"

    invoke-static {v15, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1615
    :goto_6e
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1616
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_110

    move-result-object v11

    .line 1617
    .local v11, "element":Ljava/lang/String;
    if-nez v11, :cond_b3

    .line 1654
    :try_start_77
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_6

    .line 1656
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v11    # "element":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_7b
    move-exception v12

    .line 1657
    .local v12, "ex":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Could not parse keyboard layout resource from receiver "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1600
    .end local v6    # "collection":Ljava/lang/String;
    .end local v8    # "priority":I
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_ae
    const-string v6, ""

    goto :goto_4e

    .line 1605
    .restart local v6    # "collection":Ljava/lang/String;
    :cond_b1
    const/4 v8, 0x0

    .restart local v8    # "priority":I
    goto :goto_5a

    .line 1620
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "element":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_b3
    :try_start_b3
    const-string/jumbo v2, "keyboard-layout"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 1621
    sget-object v2, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v3, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_c1
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_110

    move-result-object v9

    .line 1624
    .local v9, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    :try_start_c3
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1626
    .local v14, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1628
    .local v5, "label":Ljava/lang/String;
    const/4 v2, 0x2

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1631
    .local v7, "keyboardLayoutResId":I
    if-eqz v14, :cond_db

    if-eqz v5, :cond_db

    if-nez v7, :cond_115

    .line 1632
    :cond_db
    const-string v2, "InputManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_c3 .. :try_end_10b} :catchall_135

    .line 1645
    :cond_10b
    :goto_10b
    :try_start_10b
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_110

    goto/16 :goto_6e

    .line 1654
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "element":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    :catchall_110
    move-exception v2

    :try_start_111
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_115} :catch_7b

    .line 1637
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v7    # "keyboardLayoutResId":I
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    .restart local v11    # "element":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    :cond_115
    :try_start_115
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v14}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1639
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz p3, :cond_12f

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    :cond_12f
    move-object/from16 v2, p5

    .line 1640
    invoke-interface/range {v2 .. v8}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_134
    .catchall {:try_start_115 .. :try_end_134} :catchall_135

    goto :goto_10b

    .line 1645
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v14    # "name":Ljava/lang/String;
    :catchall_135
    move-exception v2

    :try_start_136
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 1648
    .end local v9    # "a":Landroid/content/res/TypedArray;
    :cond_13a
    const-string v2, "InputManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Skipping unrecognized element \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' in keyboard layout resource from receiver "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_136 .. :try_end_176} :catchall_110

    goto/16 :goto_6e
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1742
    const-string v2, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v3, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v2, v3}, checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1744
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1746
    :cond_12
    if-nez p2, :cond_1d

    .line 1747
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1750
    :cond_1d
    invoke-direct {p0, p1}, getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1751
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1753
    :try_start_24
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, "oldLayout":Ljava/lang/String;
    if-nez v1, :cond_40

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1755
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1757
    :cond_40
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1760
    iget-object v2, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_5a
    .catchall {:try_start_24 .. :try_end_5a} :catchall_61

    .line 1763
    :cond_5a
    :try_start_5a
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1765
    monitor-exit v3

    .line 1766
    return-void

    .line 1763
    .end local v1    # "oldLayout":Ljava/lang/String;
    :catchall_61
    move-exception v2

    iget-object v4, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v2

    .line 1765
    :catchall_68
    move-exception v2

    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_68

    throw v2
.end method

.method public addOrRemoveVirtualGamePadDevice(Z)I
    .registers 5
    .param p1, "add"    # Z

    .prologue
    .line 2112
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrRemoveVirtualGamePadDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeAddOrRemoveVirtualGamePadDevice(JZ)I

    move-result v0

    return v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2397
    iget-object v2, p0, mVibratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2398
    :try_start_3
    iget-object v1, p0, mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 2399
    .local v0, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v1, p1, :cond_13

    .line 2400
    :cond_11
    monitor-exit v2

    .line 2405
    :goto_12
    return-void

    .line 2402
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 2404
    invoke-direct {p0, v0}, cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    goto :goto_12

    .line 2402
    .end local v0    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public coverEventFinished()V
    .registers 3

    .prologue
    .line 2072
    const-string v0, "InputManager"

    const-string v1, "Cover event finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1}, nativeCoverEventFinished(J)V

    .line 2074
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2436
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_33

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump InputManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2458
    :cond_32
    :goto_32
    return-void

    .line 2444
    :cond_33
    const-string v1, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2445
    iget-wide v2, p0, mPtr:J

    invoke-static {v2, v3}, nativeDump(J)Ljava/lang/String;

    move-result-object v0

    .line 2446
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 2447
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32
.end method

.method public enablePatialScreen(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 3023
    if-eqz p1, :cond_b

    .line 3024
    const-string v0, "/sys/class/sec/tsp2/cmd"

    const-string/jumbo v1, "partial_screen_enable,1"

    invoke-direct {p0, v0, v1}, sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3028
    :goto_a
    return-void

    .line 3026
    :cond_b
    const-string v0, "/sys/class/sec/tsp2/cmd"

    const-string/jumbo v1, "partial_screen_enable,0"

    invoke-direct {p0, v0, v1}, sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2672
    iget-object v1, p0, mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2673
    :try_start_3
    iget-object v0, p0, mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v0, :cond_f

    .line 2675
    :try_start_7
    iget-object v0, p0, mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_18
    .catchall {:try_start_7 .. :try_end_c} :catchall_15

    .line 2679
    :goto_c
    const/4 v0, 0x0

    :try_start_d
    monitor-exit v1

    .line 2683
    :goto_e
    return v0

    .line 2681
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 2682
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 2683
    const/4 v0, 0x1

    goto :goto_e

    .line 2681
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0

    .line 2676
    :catch_18
    move-exception v0

    goto :goto_c
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1683
    invoke-direct {p0, p1}, getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1684
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1685
    const/4 v1, 0x0

    .line 1687
    .local v1, "layout":Ljava/lang/String;
    :try_start_8
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    if-nez v1, :cond_24

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1690
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1696
    :cond_24
    monitor-exit v3

    return-object v1

    .line 1697
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public getInboundQueueLength()I
    .registers 5

    .prologue
    .line 2101
    const/4 v0, 0x0

    .line 2102
    .local v0, "count":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_f

    .line 2103
    iget-wide v2, p0, mPtr:J

    invoke-static {v2, v3}, nativeGetInboundQueueLength(J)I

    move-result v0

    .line 2106
    :cond_f
    return v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7
    .param p1, "deviceId"    # I

    .prologue
    .line 1101
    iget-object v4, p0, mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1102
    :try_start_3
    iget-object v3, p0, mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 1103
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 1104
    iget-object v3, p0, mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v3, v1

    .line 1105
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v3

    if-ne v3, p1, :cond_15

    .line 1106
    monitor-exit v4

    .line 1110
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :goto_14
    return-object v2

    .line 1103
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1109
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_18
    monitor-exit v4

    .line 1110
    const/4 v2, 0x0

    goto :goto_14

    .line 1109
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_1b
    move-exception v3

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .prologue
    .line 1119
    iget-object v4, p0, mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1120
    :try_start_3
    iget-object v3, p0, mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 1121
    .local v0, "count":I
    new-array v2, v0, [I

    .line 1122
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_18

    .line 1123
    iget-object v3, p0, mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    aput v3, v2, v1

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1125
    :cond_18
    monitor-exit v4

    return-object v2

    .line 1126
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_1a
    move-exception v3

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v3
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 3

    .prologue
    .line 1134
    iget-object v1, p0, mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1135
    :try_start_3
    iget-object v0, p0, mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v1

    return-object v0

    .line 1136
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getKeyCodeState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .prologue
    .line 874
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, nativeGetKeyCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 7
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1540
    if-nez p1, :cond_c

    .line 1541
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1544
    :cond_c
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    .line 1545
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$7;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1552
    aget-object v1, v0, v4

    if-nez v1, :cond_39

    .line 1553
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_39
    aget-object v1, v0, v4

    return-object v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .prologue
    .line 1527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1535
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1728
    invoke-direct {p0, p1}, getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1730
    :try_start_7
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, "layouts":[Ljava/lang/String;
    if-eqz v1, :cond_12

    array-length v2, v1

    if-nez v2, :cond_26

    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1733
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1735
    :cond_26
    monitor-exit v3

    return-object v1

    .line 1736
    .end local v1    # "layouts":[Ljava/lang/String;
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getScanCodeState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .prologue
    .line 887
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, nativeGetScanCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getSmartHallFlipState()I
    .registers 2

    .prologue
    .line 3830
    iget v0, p0, mLastSmartHallFlipState:I

    return v0
.end method

.method public getSwitchState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .prologue
    .line 900
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, nativeGetSwitchState(JIII)I

    move-result v0

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .prologue
    .line 1332
    if-nez p1, :cond_b

    .line 1333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1336
    :cond_b
    iget-object v1, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1337
    :try_start_e
    iget-object v0, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1338
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .prologue
    .line 917
    if-nez p3, :cond_b

    .line 918
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_b
    if-eqz p4, :cond_11

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_1a

    .line 921
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_1a
    iget-wide v0, p0, mPtr:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, nativeHasKeys(JII[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    .line 1043
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public isInTabletMode()I
    .registers 4

    .prologue
    .line 1372
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1374
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1376
    :cond_13
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public isShowHoveringPointer()Z
    .registers 2

    .prologue
    .line 2002
    iget-boolean v0, p0, mIsShowHoverPointer:Z

    return v0
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 2480
    iget-object v1, p0, mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_a

    .line 2481
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1}, nativeMonitor(J)V

    .line 2482
    return-void

    .line 2480
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 11
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 934
    if-nez p1, :cond_d

    .line 935
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "inputChannelName must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 939
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 940
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 941
    .local v2, "uid":I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3c

    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.permission.MONITOR_INPUT"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3c

    .line 946
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 950
    :cond_3c
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 951
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget-wide v4, p0, mPtr:J

    aget-object v3, v0, v7

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v8}, nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 952
    aget-object v3, v0, v7

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 953
    aget-object v3, v0, v8

    return-object v3
.end method

.method public notifyWindowFocusChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1943
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, setCustomHoverIcon(Landroid/graphics/Bitmap;II)V

    .line 1944
    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 2408
    iget-object v1, p0, mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2409
    :try_start_3
    iget-object v0, p0, mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 2412
    invoke-direct {p0, p1}, cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 2413
    return-void

    .line 2410
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public redirectTouchToDisplay(ZII)V
    .registers 6
    .param p1, "redirected"    # Z
    .param p2, "mainId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 799
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, nativeRedirectTouchToDisplay(JZII)V

    .line 800
    return-void
.end method

.method public registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3519
    invoke-static {p1}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .registers 6
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 964
    if-nez p1, :cond_b

    .line 965
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_b
    iget-wide v0, p0, mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 969
    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 9
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .prologue
    .line 1141
    if-nez p1, :cond_b

    .line 1142
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1145
    :cond_b
    iget-object v5, p0, mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1146
    :try_start_e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1147
    .local v1, "callingPid":I
    iget-object v4, p0, mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 1148
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1163
    .end local v1    # "callingPid":I
    :catchall_22
    move-exception v4

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v4

    .line 1152
    .restart local v1    # "callingPid":I
    :cond_25
    :try_start_25
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    .line 1155
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_2a
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1156
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_39
    .catchall {:try_start_2a .. :try_end_32} :catchall_22

    .line 1162
    :try_start_32
    iget-object v4, p0, mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1163
    monitor-exit v5

    .line 1164
    return-void

    .line 1157
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_39
    move-exception v2

    .line 1159
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_22
.end method

.method public registerMouseCustomIcon(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3555
    invoke-static {p1}, Landroid/view/PointerIcon;->setMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 9
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    .prologue
    .line 1381
    const-string v4, "android.permission.TABLET_MODE"

    const-string/jumbo v5, "registerTabletModeChangedListener()"

    invoke-direct {p0, v4, v5}, checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1383
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1385
    :cond_13
    if-nez p1, :cond_1e

    .line 1386
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1389
    :cond_1e
    iget-object v5, p0, mTabletModeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1390
    :try_start_21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1391
    .local v1, "callingPid":I
    iget-object v4, p0, mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 1392
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1404
    .end local v1    # "callingPid":I
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_35

    throw v4

    .line 1395
    .restart local v1    # "callingPid":I
    :cond_38
    :try_start_38
    new-instance v3, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 1398
    .local v3, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_3d
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1399
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_45} :catch_4c
    .catchall {:try_start_3d .. :try_end_45} :catchall_35

    .line 1403
    :try_start_45
    iget-object v4, p0, mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1404
    monitor-exit v5

    .line 1405
    return-void

    .line 1400
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_4c
    move-exception v2

    .line 1401
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_35
.end method

.method public reloadMousePointerIcon(IIILandroid/graphics/Point;I)V
    .registers 9
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "customIconId"    # I
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 3563
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIconStyle1 pointerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iconType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_57

    .line 3565
    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->setMousePointerIcon(IILandroid/graphics/Point;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    .line 3566
    invoke-virtual {p0, p1, p5}, reloadPointerIcon(II)V

    .line 3569
    :cond_57
    return-void
.end method

.method public reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I
    .registers 10
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 3572
    const-string v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMouseIconStyle2 pointerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    const/4 v0, 0x0

    .line 3574
    .local v0, "customIconId":I
    const/4 v1, -0x1

    invoke-static {v1, p3}, Landroid/view/PointerIcon;->setMouseCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 3575
    invoke-static {p2, v0, p4}, Landroid/view/PointerIcon;->setMousePointerIcon(IILandroid/graphics/Point;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    .line 3576
    invoke-virtual {p0, p1, p5}, reloadPointerIcon(II)V

    .line 3578
    :cond_59
    return v0
.end method

.method public reloadPointerIcon(II)V
    .registers 5
    .param p1, "pointerType"    # I
    .param p2, "flag"    # I

    .prologue
    .line 1999
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2}, nativeReloadPointerIcon(JII)V

    .line 2000
    return-void
.end method

.method public reloadPointerIcon(IIILandroid/graphics/Point;I)V
    .registers 9
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "customIconId"    # I
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 3527
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIconStyle1 pointerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iconType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_57

    .line 3529
    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->setPointerIcon(IILandroid/graphics/Point;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    .line 3530
    invoke-virtual {p0, p1, p5}, reloadPointerIcon(II)V

    .line 3533
    :cond_57
    return-void
.end method

.method public reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I
    .registers 11
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    const/16 v4, 0xff

    .line 3536
    const-string v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHoveringSpenIconStyle2 pointerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    const/4 v0, 0x0

    .line 3540
    .local v0, "customIconId":I
    const/16 v1, 0x16

    if-ne p2, v1, :cond_5f

    .line 3541
    invoke-static {v4, p3}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 3546
    :goto_54
    invoke-static {p2, v0, p4}, Landroid/view/PointerIcon;->setPointerIcon(IILandroid/graphics/Point;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    .line 3547
    invoke-virtual {p0, p1, p5}, reloadPointerIcon(II)V

    .line 3549
    :cond_5e
    return v0

    .line 3542
    :cond_5f
    const/16 v1, 0x17

    if-ne p2, v1, :cond_69

    .line 3543
    const/4 v1, 0x0

    invoke-static {v4, v1}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_54

    .line 3545
    :cond_69
    const/4 v1, -0x1

    invoke-static {v1, p3}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_54
.end method

.method public removeHoveringSpenCustomIcon(I)V
    .registers 3
    .param p1, "customIconId"    # I

    .prologue
    .line 3523
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    .line 3524
    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1771
    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v4, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v3, v4}, checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1773
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1775
    :cond_13
    if-nez p2, :cond_1e

    .line 1776
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1779
    :cond_1e
    invoke-direct {p0, p1}, getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1780
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v4

    .line 1782
    :try_start_25
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1783
    .local v1, "oldLayout":Ljava/lang/String;
    if-nez v1, :cond_41

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1784
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1786
    :cond_41
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1787
    .local v2, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 1789
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1792
    :cond_5c
    if-eqz v2, :cond_70

    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 1794
    iget-object v3, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_70
    .catchall {:try_start_25 .. :try_end_70} :catchall_77

    .line 1797
    :cond_70
    :try_start_70
    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1799
    monitor-exit v4

    .line 1800
    return-void

    .line 1797
    .end local v1    # "oldLayout":Ljava/lang/String;
    .end local v2    # "removed":Z
    :catchall_77
    move-exception v3

    iget-object v5, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v3

    .line 1799
    :catchall_7e
    move-exception v3

    monitor-exit v4
    :try_end_80
    .catchall {:try_start_70 .. :try_end_80} :catchall_7e

    throw v3
.end method

.method public removeMouseCustomIcon(I)V
    .registers 3
    .param p1, "customIconId"    # I

    .prologue
    .line 3559
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->setMouseCustomIcon(ILandroid/graphics/Bitmap;)I

    .line 3560
    return-void
.end method

.method public sendDuplicatedKeyToFocus(Z)V
    .registers 2
    .param p1, "redirected"    # Z

    .prologue
    .line 804
    return-void
.end method

.method public setCoverVerify(I)V
    .registers 7
    .param p1, "verify"    # I

    .prologue
    .line 2080
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCoverVerify = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    invoke-direct {p0, p1}, isKeyboardCover(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2083
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2085
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2086
    .local v0, "keyboardheight":I
    iget-wide v2, p0, mPtr:J

    invoke-static {v2, v3, v0}, nativeSetCoverHeight(JI)V

    .line 2087
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keyboardheight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    .end local v0    # "keyboardheight":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_4a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_59

    .line 2091
    iget-wide v2, p0, mPtr:J

    invoke-static {v2, v3, p1}, nativeSetCoverVerify(JI)V

    .line 2093
    iput p1, p0, mCurrentCoverType:I

    .line 2096
    :cond_59
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1703
    const-string v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v2, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1705
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1707
    :cond_13
    if-nez p2, :cond_1e

    .line 1708
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1711
    :cond_1e
    invoke-direct {p0, p1}, getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1714
    :try_start_25
    iget-object v1, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1718
    iget-object v1, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_3a

    .line 1721
    :cond_33
    :try_start_33
    iget-object v1, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1723
    monitor-exit v2

    .line 1724
    return-void

    .line 1721
    :catchall_3a
    move-exception v1

    iget-object v3, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1723
    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public setCustomHoverIcon(Landroid/graphics/Bitmap;II)V
    .registers 8
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "hotSpotX"    # I
    .param p3, "hotSpotY"    # I

    .prologue
    .line 2427
    const/4 v0, 0x0

    .line 2428
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz p1, :cond_9

    .line 2429
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {p1, v1, v2}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v0

    .line 2431
    :cond_9
    iget-wide v2, p0, mPtr:J

    invoke-static {v2, v3, v0}, nativeSetHoverIcon(JLandroid/view/PointerIcon;)V

    .line 2432
    return-void
.end method

.method public setDisplayViewportsInternal(Ljava/util/ArrayList;Landroid/hardware/display/DisplayViewport;)V
    .registers 8
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;",
            "Landroid/hardware/display/DisplayViewport;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "defaultViewports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/DisplayViewport;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 810
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 811
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayViewport;

    .line 812
    .local v0, "defaultViewport":Landroid/hardware/display/DisplayViewport;
    iget-boolean v2, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v2, :cond_16

    .line 813
    invoke-direct {p0, v3, v0}, setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    .line 810
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 817
    .end local v0    # "defaultViewport":Landroid/hardware/display/DisplayViewport;
    :cond_19
    iget-boolean v2, p2, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v2, :cond_21

    .line 818
    invoke-direct {p0, v4, p2}, setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    .line 825
    :cond_20
    :goto_20
    return-void

    .line 820
    :cond_21
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayViewport;

    .line 821
    .restart local v0    # "defaultViewport":Landroid/hardware/display/DisplayViewport;
    iget-boolean v2, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v2, :cond_20

    .line 822
    invoke-direct {p0, v4, v0}, setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    goto :goto_20
.end method

.method public setEnableTSP(IZ)Z
    .registers 6
    .param p1, "cmdtype"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3003
    sget-object v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->TSP_CMDTYPE_SPAY:Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->getvalue()I

    move-result v0

    if-ne p1, v0, :cond_2f

    .line 3004
    if-eqz p2, :cond_1d

    .line 3005
    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v1, "spay_enable,1"

    invoke-direct {p0, v0, v1}, sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3007
    const-string/jumbo v0, "persist.service.tspcmd.spay"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    .line 3009
    :cond_1d
    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v1, "spay_enable,0"

    invoke-direct {p0, v0, v1}, sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3011
    const-string/jumbo v0, "persist.service.tspcmd.spay"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 3014
    :cond_2f
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableTSP cmdtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public setFlipCoverTouchEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2064
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    .line 2065
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeSetFlipCoverTouchEnabled(JZ)V

    .line 2067
    :cond_d
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .registers 4
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    .prologue
    .line 1883
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V

    .line 1884
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .prologue
    .line 1887
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2}, nativeSetInputDispatchMode(JZZ)V

    .line 1888
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 8
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 1010
    iget-object v2, p0, mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1011
    :try_start_3
    iget-object v0, p0, mInputFilter:Landroid/view/IInputFilter;

    .line 1012
    .local v0, "oldFilter":Landroid/view/IInputFilter;
    if-ne v0, p1, :cond_9

    .line 1013
    monitor-exit v2

    .line 1039
    :goto_8
    return-void

    .line 1016
    :cond_9
    if-eqz v0, :cond_19

    .line 1017
    const/4 v1, 0x0

    iput-object v1, p0, mInputFilter:Landroid/view/IInputFilter;

    .line 1018
    iget-object v1, p0, mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 1019
    const/4 v1, 0x0

    iput-object v1, p0, mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_34

    .line 1021
    :try_start_16
    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_39
    .catchall {:try_start_16 .. :try_end_19} :catchall_34

    .line 1027
    :cond_19
    :goto_19
    if-eqz p1, :cond_2a

    .line 1028
    :try_start_1b
    iput-object p1, p0, mInputFilter:Landroid/view/IInputFilter;

    .line 1029
    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v1, p0, mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_34

    .line 1031
    :try_start_25
    iget-object v1, p0, mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_3b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    .line 1037
    :cond_2a
    :goto_2a
    :try_start_2a
    iget-wide v4, p0, mPtr:J

    if-eqz p1, :cond_37

    const/4 v1, 0x1

    :goto_2f
    invoke-static {v4, v5, v1}, nativeSetInputFilterEnabled(JZ)V

    .line 1038
    monitor-exit v2

    goto :goto_8

    .end local v0    # "oldFilter":Landroid/view/IInputFilter;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_34

    throw v1

    .line 1037
    .restart local v0    # "oldFilter":Landroid/view/IInputFilter;
    :cond_37
    const/4 v1, 0x0

    goto :goto_2f

    .line 1022
    :catch_39
    move-exception v1

    goto :goto_19

    .line 1032
    :catch_3b
    move-exception v1

    goto :goto_2a
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;)V
    .registers 4
    .param p1, "windowHandles"    # [Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1879
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V

    .line 1880
    return-void
.end method

.method public setLedState(Z)I
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 994
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeSetLedState(JZ)I

    move-result v0

    return v0
.end method

.method public setMonitorChannelFilter(Landroid/view/InputChannel;I)V
    .registers 5
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "monitorFilter"    # I

    .prologue
    .line 985
    if-nez p1, :cond_b

    .line 986
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_b
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2}, nativeSetMonitorChannelFilter(JLandroid/view/InputChannel;I)V

    .line 989
    return-void
.end method

.method public setMotionManagerCallbacks(Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

    .prologue
    .line 583
    iput-object p1, p0, mMotionManagerCallbacks:Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

    .line 584
    return-void
.end method

.method public setStartedShutdown(Z)V
    .registers 4
    .param p1, "isStarted"    # Z

    .prologue
    .line 2056
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    .line 2057
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeSetStartedShutdown(JZ)V

    .line 2059
    :cond_d
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 1891
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeSetSystemUiVisibility(JI)V

    .line 1892
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 8
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .prologue
    .line 1344
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1346
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_13
    if-nez p1, :cond_1e

    .line 1349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_1e
    if-nez p3, :cond_28

    .line 1352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calibration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_28
    if-ltz p2, :cond_2d

    const/4 v0, 0x3

    if-le p2, v0, :cond_36

    .line 1355
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_36
    iget-object v1, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1360
    :try_start_39
    iget-object v0, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1362
    iget-wide v2, p0, mPtr:J

    invoke-static {v2, v3}, nativeReloadCalibration(J)V
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_4d

    .line 1365
    :cond_46
    :try_start_46
    iget-object v0, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1367
    monitor-exit v1

    .line 1368
    return-void

    .line 1365
    :catchall_4d
    move-exception v0

    iget-object v2, p0, mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v0

    .line 1367
    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public setUnVerifiedCoverAttachCallbacks(Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;

    .prologue
    .line 577
    iput-object p1, p0, mUnVerifiedCoverAttachCallbacks:Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;

    .line 578
    return-void
.end method

.method public declared-synchronized setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 19
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 3764
    monitor-enter p0

    :try_start_1
    const-string v2, "WAKEKEY"

    .line 3766
    .local v2, "WAKEKEY_TAG":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 3767
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "packagename: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p1, :cond_27

    const-string/jumbo v12, "null"

    :goto_1a
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_3a

    .line 3825
    :goto_25
    monitor-exit p0

    return-void

    .line 3767
    :cond_27
    :try_start_27
    const-string/jumbo v12, "empty"

    goto :goto_1a

    .line 3771
    :cond_2b
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 3772
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-nez v10, :cond_3d

    .line 3773
    const-string/jumbo v12, "pm is null"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_3a

    goto :goto_25

    .line 3764
    .end local v2    # "WAKEKEY_TAG":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :catchall_3a
    move-exception v12

    monitor-exit p0

    throw v12

    .line 3777
    .restart local v2    # "WAKEKEY_TAG":Ljava/lang/String;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_3d
    :try_start_3d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 3778
    .local v9, "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 3779
    .local v11, "uidhaspackage":Z
    if-eqz v9, :cond_4b

    array-length v12, v9

    if-nez v12, :cond_6c

    .line 3780
    :cond_4b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v9, :cond_68

    const-string/jumbo v12, "null"

    :goto_5c
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_68
    const-string/jumbo v12, "empty"
    :try_end_6b
    .catchall {:try_start_3d .. :try_end_6b} :catchall_3a

    goto :goto_5c

    .line 3784
    :cond_6c
    move-object v4, v9

    .local v4, "arr$":[Ljava/lang/String;
    :try_start_6d
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_6f
    if-ge v6, v7, :cond_9f

    aget-object v8, v4, v6

    .line 3785
    .local v8, "pac":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "packagename:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", package:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/lang/NullPointerException; {:try_start_6d .. :try_end_9b} :catch_bb
    .catchall {:try_start_6d .. :try_end_9b} :catchall_3a

    move-result v12

    if-eqz v12, :cond_b8

    .line 3787
    const/4 v11, 0x1

    .line 3797
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pac":Ljava/lang/String;
    :cond_9f
    :goto_9f
    const/4 v3, 0x0

    .line 3799
    .local v3, "appinfo":Landroid/content/pm/ApplicationInfo;
    const/4 v12, 0x0

    :try_start_a1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3800
    if-nez v3, :cond_c0

    .line 3801
    const-string v12, "appinfo is null"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a1 .. :try_end_ae} :catch_b0
    .catchall {:try_start_a1 .. :try_end_ae} :catchall_3a

    goto/16 :goto_25

    .line 3804
    :catch_b0
    move-exception v5

    .line 3805
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_b1
    const-string v12, "NameNotFoundException is occured"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 3784
    .end local v3    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "pac":Ljava/lang/String;
    :cond_b8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 3791
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pac":Ljava/lang/String;
    :catch_bb
    move-exception v5

    .line 3792
    .local v5, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9f

    .line 3809
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_c0
    if-eqz v11, :cond_c8

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v12

    if-nez v12, :cond_115

    .line 3810
    :cond_c8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "uidhaspackage is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", appinfo.privateFlags is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const/16 v13, 0x3e8

    if-eq v12, v13, :cond_115

    .line 3812
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "only system app can use this method, but "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not system app"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3816
    :cond_115
    iget-object v12, p0, mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    if-nez v12, :cond_120

    .line 3817
    new-instance v12, Lcom/android/server/input/InputManagerService$ControlWakeKey;

    invoke-direct {v12}, Lcom/android/server/input/InputManagerService$ControlWakeKey;-><init>()V

    iput-object v12, p0, mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;
    :try_end_120
    .catchall {:try_start_b1 .. :try_end_120} :catchall_3a

    .line 3821
    :cond_120
    :try_start_120
    iget-object v12, p0, mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->setWakeKeyDynamically(ZLjava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/NullPointerException; {:try_start_120 .. :try_end_129} :catch_12b
    .catchall {:try_start_120 .. :try_end_129} :catchall_3a

    goto/16 :goto_25

    .line 3822
    :catch_12b
    move-exception v5

    .line 3823
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    :try_start_12c
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_3a

    goto/16 :goto_25
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .prologue
    .line 563
    iput-object p1, p0, mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 564
    return-void
.end method

.method public setWindowManagerService(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 567
    iput-object p1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 568
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .prologue
    .line 572
    iput-object p1, p0, mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 573
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 588
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1}, nativeStart(J)V

    .line 592
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 594
    invoke-direct {p0}, registerPointerSpeedSettingObserver()V

    .line 595
    invoke-direct {p0}, registerShowTouchesSettingObserver()V

    .line 598
    invoke-direct {p0}, registerCoverTestModeSettingObserver()V

    .line 602
    invoke-direct {p0}, registerShowFingerHoveringSettingObserver()V

    .line 603
    invoke-direct {p0}, registerShowFingerHoveringPointerSettingObserver()V

    .line 607
    invoke-direct {p0}, registerShowHoveringPointerSettingObserver()V

    .line 611
    invoke-direct {p0}, registerGloveModeSettingObserver()V

    .line 615
    invoke-direct {p0}, registerBlockKeysSettingObserver()V

    .line 616
    invoke-direct {p0}, registerKidsModeSettingObserver()V

    .line 620
    invoke-direct {p0}, registerPenHoveringSettingObserver()V

    .line 624
    invoke-direct {p0}, registerSideSyncSettingObserver()V

    .line 627
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 657
    invoke-virtual {p0}, updatePointerSpeedFromSettings()V

    .line 658
    invoke-virtual {p0}, updateShowTouchesFromSettings()V

    .line 660
    invoke-virtual {p0}, updateCoverTestModeFromSettings()V

    .line 663
    invoke-virtual {p0}, updateShowHoveringFromSettings()V

    .line 666
    invoke-virtual {p0}, updateShowFingerHoveringFromSettings()V

    .line 670
    invoke-virtual {p0}, updateGloveModeFromSettings()V

    .line 674
    invoke-virtual {p0}, updateBlockKeysFromSettings()V

    .line 675
    invoke-virtual {p0}, updateKidsModeFromSettings()V

    .line 679
    invoke-virtual {p0}, updatePenHoveringFromSettings()V

    .line 683
    invoke-virtual {p0}, updateSideSyncFromSettings()V

    .line 696
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.service.tspcmd.spay"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 697
    sget-object v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->TSP_CMDTYPE_SPAY:Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->getvalue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, setEnableTSP(IZ)Z

    .line 700
    :cond_80
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1803
    iget-object v0, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1804
    return-void
.end method

.method public systemRunning()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 707
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, mNotificationManager:Landroid/app/NotificationManager;

    .line 709
    const/4 v2, 0x1

    iput-boolean v2, p0, mSystemReady:Z

    .line 711
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 716
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 723
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 724
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v4, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 731
    iget-object v2, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 732
    iget-object v2, p0, mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 734
    iget-object v2, p0, mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v2, :cond_61

    .line 735
    iget-object v2, p0, mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v2}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 739
    :cond_61
    iget-boolean v2, p0, mMissingKeyboardLayoutNotificationPending:Z

    if-eqz v2, :cond_71

    .line 740
    const-string v2, "InputManager"

    const-string v3, "Showing pending notification of missing keyboard layout"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v2, p0, mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    invoke-direct {p0, v2}, showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    .line 746
    :cond_71
    iget-boolean v2, p0, mAddingGamepadIntentPending:Z

    if-eqz v2, :cond_81

    .line 747
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.input.GAMEPAD_DEVICE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 781
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_81
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 5
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1908
    if-nez p1, :cond_b

    .line 1909
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1911
    :cond_b
    if-nez p2, :cond_16

    .line 1912
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1914
    :cond_16
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1, p2}, nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .registers 4
    .param p1, "speed"    # I

    .prologue
    .line 1919
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1921
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1924
    :cond_13
    const/4 v0, -0x7

    if-lt p1, v0, :cond_19

    const/4 v0, 0x7

    if-le p1, v0, :cond_22

    .line 1925
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1928
    :cond_22
    invoke-direct {p0, p1}, setPointerSpeedUnchecked(I)V

    .line 1929
    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 976
    if-nez p1, :cond_b

    .line 977
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_b
    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p1}, nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    .line 981
    return-void
.end method

.method public updateBlockKeysFromSettings()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2015
    invoke-direct {p0, v0}, getBlockKeysSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, mIsBlockKeys:Z

    .line 2016
    iget-wide v2, p0, mPtr:J

    iget-boolean v1, p0, mIsBlockKeys:Z

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-static {v2, v3, v0}, nativeSetBlockKeys(JZ)V

    .line 2017
    return-void
.end method

.method public updateCoverTestModeFromSettings()V
    .registers 5

    .prologue
    .line 1980
    const/4 v1, -0x1

    invoke-direct {p0, v1}, getCoverTestModeSetting(I)I

    move-result v0

    .line 1981
    .local v0, "setting":I
    iget-wide v2, p0, mPtr:J

    invoke-static {v2, v3, v0}, nativeSetCoverTestModeType(JI)V

    .line 1982
    return-void
.end method

.method public updateGloveModeFromSettings()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2008
    invoke-direct {p0, v1}, getGloveModeSetting(Z)Z

    move-result v0

    .line 2009
    .local v0, "gloveMode":Z
    iget-wide v2, p0, mPtr:J

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v3, v1}, nativeSetGloveMode(JZ)V

    .line 2010
    return-void
.end method

.method public updateKidsModeFromSettings()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2020
    invoke-direct {p0, v0}, getKidsModeSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, mIsKidsMode:Z

    .line 2021
    iget-wide v2, p0, mPtr:J

    iget-boolean v1, p0, mIsKidsMode:Z

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-static {v2, v3, v0}, nativeSetKidsMode(JZ)V

    .line 2022
    return-void
.end method

.method public updatePenHoveringFromSettings()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2027
    invoke-direct {p0, v3}, getPenHoveringSetting(Z)Z

    move-result v1

    .line 2028
    .local v1, "penHovering":Z
    iget-wide v4, p0, mPtr:J

    if-eqz v1, :cond_29

    const/4 v2, 0x1

    :goto_a
    invoke-static {v4, v5, v2}, nativeSetPenHovering(JZ)V

    .line 2030
    const/4 v0, 0x2

    .line 2031
    .local v0, "mUspLevel":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_1e

    .line 2032
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 2034
    :cond_1e
    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    .line 2035
    if-nez v1, :cond_2b

    .line 2036
    iget-wide v4, p0, mPtr:J

    invoke-static {v4, v5, v3}, nativeSetShowHovering(JZ)V

    .line 2042
    :cond_28
    :goto_28
    return-void

    .end local v0    # "mUspLevel":I
    :cond_29
    move v2, v3

    .line 2028
    goto :goto_a

    .line 2039
    .restart local v0    # "mUspLevel":I
    :cond_2b
    invoke-virtual {p0}, updateShowHoveringFromSettings()V

    goto :goto_28
.end method

.method public updatePointerSpeedFromSettings()V
    .registers 2

    .prologue
    .line 1932
    invoke-direct {p0}, getPointerSpeedSetting()I

    move-result v0

    .line 1933
    .local v0, "speed":I
    invoke-direct {p0, v0}, setPointerSpeedUnchecked(I)V

    .line 1934
    return-void
.end method

.method public updateShowFingerHoveringFromSettings()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1987
    invoke-direct {p0, v1}, getShowFingerHoveringSetting(Z)Z

    move-result v0

    .line 1988
    .local v0, "setting":Z
    iget-wide v2, p0, mPtr:J

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v3, v1}, nativeSetShowFingerHovering(JZ)V

    .line 1989
    return-void
.end method

.method public updateShowHoveringFromSettings()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1994
    invoke-direct {p0, v0}, getShowHoveringSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, mIsShowHoverPointer:Z

    .line 1995
    iget-wide v2, p0, mPtr:J

    iget-boolean v1, p0, mIsShowHoverPointer:Z

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-static {v2, v3, v0}, nativeSetShowHovering(JZ)V

    .line 1996
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1974
    invoke-direct {p0, v1}, getShowTouchesSetting(I)I

    move-result v0

    .line 1975
    .local v0, "setting":I
    iget-wide v2, p0, mPtr:J

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v3, v1}, nativeSetShowTouches(JZ)V

    .line 1976
    return-void
.end method

.method public updateSideSyncFromSettings()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2047
    invoke-direct {p0, v0}, getSideSyncFromSetting(Z)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    .line 2048
    .local v0, "enable":Z
    :cond_8
    if-eqz v0, :cond_f

    iget-boolean v1, p0, previousStatus:Z

    if-eqz v1, :cond_f

    .line 2051
    :goto_e
    return-void

    .line 2049
    :cond_f
    const-string v1, "all"

    invoke-direct {p0, v1, v0}, setSuspendibleDevices(Ljava/lang/String;Z)Z

    .line 2050
    iput-boolean v0, p0, previousStatus:Z

    goto :goto_e
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2368
    array-length v0, p2

    if-lt p3, v0, :cond_9

    .line 2369
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2373
    :cond_9
    iget-object v1, p0, mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2374
    :try_start_c
    iget-object v0, p0, mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 2375
    .local v7, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v7, :cond_2a

    .line 2376
    new-instance v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    iget v0, p0, mNextVibratorTokenValue:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, mNextVibratorTokenValue:I

    invoke-direct {v7, p0, p1, p4, v0}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_42

    .line 2378
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    const/4 v0, 0x0

    :try_start_22
    invoke-interface {p4, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_3b
    .catchall {:try_start_22 .. :try_end_25} :catchall_42

    .line 2383
    :try_start_25
    iget-object v0, p0, mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_42

    .line 2387
    monitor-enter v7

    .line 2388
    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 2389
    iget-wide v0, p0, mPtr:J

    iget v5, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, nativeVibrate(JI[JII)V

    .line 2390
    monitor-exit v7
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_45

    .line 2391
    return-void

    .line 2379
    :catch_3b
    move-exception v6

    .line 2381
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2385
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_42

    throw v0

    .line 2390
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v7
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method
