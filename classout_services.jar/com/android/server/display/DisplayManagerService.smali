.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$1;,
        Lcom/android/server/display/DisplayManagerService$LocalService;,
        Lcom/android/server/display/DisplayManagerService$BinderService;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BENDED:Z = false

.field private static final DEBUG_DUALSCREEN:Z

.field private static final DUBUG_MAGNIFIER:Z = true

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field public static final MSG_DELIVER_DISPLAY_EVENT_SEC:I = 0x3

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTER:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L

.field private static final bDSSEnabled:Z = true

.field private static final mIsDualDisplay:Z


# instance fields
.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCocktailShiftSize:I

.field private mCocktailSize:I

.field private final mContext:Landroid/content/Context;

.field private final mDefaultViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

.field private mGlobalDisplayBrightness:I

.field private mGlobalDisplayState:I

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private mHandlerPmsDisplay:Landroid/os/Handler;

.field private mHandlerThreadPmsDisplay:Landroid/os/HandlerThread;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mInputMethodTargetDisplayId:I

.field mInputMethodTargetRotation:I

.field private mIsForceUnblankDisplay:Z

.field mIsInputMethodDisplayEnabled:Z

.field private final mLockDisplayBlanker:Ljava/lang/Object;

.field private final mLockPMS:Ljava/lang/Object;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

.field private mMainDisplayBrightness:I

.field private mMainDisplayState:I

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private mPendingrequestDisplayState:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public mSafeMode:Z

.field final mScaledPids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSingleDisplayDemoMode:Z

.field private mSubDisplayBrightness:I

.field private mSubDisplayState:I

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDefaultViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

.field private final mUiHandler:Landroid/os/Handler;

.field private mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWifiDisplayScanRequestCount:I

.field private mWindowManagerInternal:Landroid/view/WindowManagerInternal;

.field private wifiDevice:Lcom/android/server/display/DisplayDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 199
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_WM:Z

    sput-boolean v0, DEBUG_DUALSCREEN:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 366
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v1, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v1}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 253
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mCallbacks:Landroid/util/SparseArray;

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mDisplayAdapters:Ljava/util/ArrayList;

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mDisplayDevices:Ljava/util/ArrayList;

    .line 263
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mLogicalDisplays:Landroid/util/SparseArray;

    .line 265
    const/4 v1, 0x1

    iput v1, p0, mNextNonDefaultDisplayId:I

    .line 268
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 276
    iput v4, p0, mGlobalDisplayState:I

    .line 280
    iput v2, p0, mGlobalDisplayBrightness:I

    .line 283
    iput v4, p0, mMainDisplayState:I

    .line 286
    iput v4, p0, mSubDisplayState:I

    .line 289
    iput v2, p0, mMainDisplayBrightness:I

    .line 292
    iput v2, p0, mSubDisplayBrightness:I

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mDefaultViewports:Ljava/util/ArrayList;

    .line 310
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    iput-object v1, p0, mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    .line 313
    new-instance v1, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v1}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v1, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTempCallbacks:Ljava/util/ArrayList;

    .line 320
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTempDefaultViewports:Ljava/util/ArrayList;

    .line 325
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    iput-object v1, p0, mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    .line 334
    iput-object v5, p0, wifiDevice:Lcom/android/server/display/DisplayDevice;

    .line 339
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mScaledPids:Ljava/util/HashMap;

    .line 343
    iput v3, p0, mCocktailSize:I

    .line 344
    iput v3, p0, mCocktailShiftSize:I

    .line 348
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLockPMS:Ljava/lang/Object;

    .line 354
    iput-boolean v3, p0, mIsForceUnblankDisplay:Z

    .line 358
    iput-boolean v3, p0, mPendingrequestDisplayState:Z

    .line 362
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLockDisplayBlanker:Ljava/lang/Object;

    .line 1535
    iput-boolean v3, p0, mIsInputMethodDisplayEnabled:Z

    .line 1536
    iput v2, p0, mInputMethodTargetDisplayId:I

    .line 1537
    iput v3, p0, mInputMethodTargetRotation:I

    .line 367
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 368
    new-instance v1, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 369
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, mUiHandler:Landroid/os/Handler;

    .line 370
    new-instance v1, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v1, p0, v5}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v1, p0, mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    .line 371
    const-string/jumbo v1, "persist.demo.singledisplay"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, mSingleDisplayDemoMode:Z

    .line 373
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 374
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, mGlobalDisplayBrightness:I

    .line 377
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mCocktailSize:I

    .line 378
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mCocktailShiftSize:I

    .line 382
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PmsDisplayThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mHandlerThreadPmsDisplay:Landroid/os/HandlerThread;

    .line 383
    iget-object v1, p0, mHandlerThreadPmsDisplay:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 384
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, mHandlerThreadPmsDisplay:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, mHandlerPmsDisplay:Landroid/os/Handler;

    .line 386
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 187
    invoke-direct {p0, p1}, handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 187
    invoke-direct {p0, p1}, handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 187
    invoke-direct {p0, p1}, handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1}, scheduleTraversalLocked(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .prologue
    .line 187
    invoke-direct {p0, p1}, onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayManagerService;IIILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;
    .registers 7
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/IBinder;
    .param p5, "x5"    # Z

    .prologue
    .line 187
    invoke-direct/range {p0 .. p5}, getDisplayInfoInternal(IIILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayManagerService;I)[I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1}, getDisplayIdsInternal(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "x2"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1}, startWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1}, stopWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0, p1}, connectWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    invoke-direct {p0}, disconnectWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0, p1}, forgetWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    invoke-direct {p0}, pauseWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    invoke-direct {p0}, registerDefaultDisplayAdapter()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    invoke-direct {p0}, resumeWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    invoke-direct {p0}, getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, requestColorTransformInternal(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    invoke-direct {p0}, getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .registers 12
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "x2"    # Landroid/media/projection/IMediaProjection;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Landroid/view/Surface;
    .param p10, "x10"    # I

    .prologue
    .line 187
    invoke-direct/range {p0 .. p10}, createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/Surface;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, setVirtualDisplayMirroringDisplayInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, setVirtualDisplayFixedOrientationInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 187
    invoke-direct {p0, p1}, releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    invoke-direct {p0}, registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 187
    invoke-direct {p0, p1}, dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mLockPMS:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-boolean v0, p0, mPendingrequestDisplayState:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/display/DisplayManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, mPendingrequestDisplayState:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mHandlerPmsDisplay:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, deliverDisplayEvent(II)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, requestGlobalDisplayStateInternal(II)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 187
    iput-object p1, p0, mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 187
    invoke-direct {p0, p1}, registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 187
    invoke-direct {p0, p1}, unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/DisplayInfo;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    invoke-direct {p0}, performTraversalInTransactionFromWindowManagerInternal()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/display/DisplayManagerService;IZFIZ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # F
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 187
    invoke-direct/range {p0 .. p5}, setDisplayPropertiesInternal(IZFIZ)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/display/DisplayManagerService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, setDisplayOffsetsInternal(III)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-boolean v0, p0, mIsForceUnblankDisplay:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/display/DisplayManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, mIsForceUnblankDisplay:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayManagerService;)Landroid/view/WindowManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mDefaultViewports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 187
    iget-object v0, p0, mTempDefaultViewports:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 15
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    const/high16 v12, 0x100000

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1190
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 1191
    .local v1, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_91

    move v4, v7

    .line 1194
    .local v4, "isDefault":Z
    :goto_f
    sget-boolean v9, DEBUG_DUALSCREEN:Z

    if-eqz v9, :cond_39

    .line 1195
    const-string v9, "DisplayManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[DUALSCREEN] addLogicalDisplayLocked() : device name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isDefault="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_39
    if-eqz v4, :cond_4f

    .line 1200
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 1201
    .local v0, "defaultViewport":Landroid/hardware/display/DisplayViewport;
    iget-object v9, p0, mDefaultViewports:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    new-instance v6, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v6}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 1204
    .local v6, "tempDefaultViewport":Landroid/hardware/display/DisplayViewport;
    iget-object v9, p0, mTempDefaultViewports:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    .end local v0    # "defaultViewport":Landroid/hardware/display/DisplayViewport;
    .end local v6    # "tempDefaultViewport":Landroid/hardware/display/DisplayViewport;
    :cond_4f
    if-eqz v4, :cond_72

    iget-object v9, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_72

    .line 1208
    const-string v8, "DisplayManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring attempt to add a second default display: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v4, 0x0

    .line 1212
    :cond_72
    if-nez v4, :cond_94

    iget-boolean v8, p0, mSingleDisplayDemoMode:Z

    if-eqz v8, :cond_94

    .line 1213
    const-string v7, "DisplayManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_90
    :goto_90
    return-void

    .end local v4    # "isDefault":Z
    :cond_91
    move v4, v8

    .line 1191
    goto/16 :goto_f

    .line 1218
    .restart local v4    # "isDefault":Z
    :cond_94
    invoke-direct {p0, v4}, assignDisplayIdLocked(Z)I

    move-result v3

    .line 1219
    .local v3, "displayId":I
    invoke-direct {p0, v3}, assignLayerStackLocked(I)I

    move-result v5

    .line 1223
    .local v5, "layerStack":I
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_a2

    .line 1224
    const/4 v5, 0x0

    .line 1229
    :cond_a2
    new-instance v2, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v2, v3, v5, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 1230
    .local v2, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v8, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1237
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v8

    if-nez v8, :cond_cb

    .line 1239
    const-string v7, "DisplayManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring display device because the logical display created from it was not considered valid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 1244
    :cond_cb
    iget-object v8, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1247
    if-eqz v4, :cond_d7

    .line 1248
    iget-object v8, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 1252
    :cond_d7
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v8, v8, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v8, v12

    if-nez v8, :cond_90

    .line 1254
    invoke-direct {p0, v3, v7}, sendDisplayEventLocked(II)V

    goto :goto_90
.end method

.method private applyGlobalDisplayStateLocked(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1157
    .local p1, "workQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v4, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1158
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1159
    iget-object v4, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 1160
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v1}, updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v3

    .line 1161
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_1a

    .line 1162
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1165
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_1d
    return-void
.end method

.method private assignDisplayIdLocked(Z)I
    .registers 4
    .param p1, "isDefault"    # Z

    .prologue
    .line 1259
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget v0, p0, mNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mNextNonDefaultDisplayId:I

    goto :goto_3
.end method

.method private assignLayerStackLocked(I)I
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 1265
    return p1
.end method

.method private changedMirroringDisplay(Lcom/android/server/display/DisplayDevice;)Z
    .registers 9
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1301
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1302
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayToMirror:I

    if-ltz v5, :cond_52

    .line 1303
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_50

    move v2, v3

    .line 1304
    .local v2, "ownContent":Z
    :goto_11
    invoke-direct {p0, p1}, findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 1305
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v2, :cond_52

    .line 1306
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v5

    if-nez v5, :cond_52

    .line 1307
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getLayerStack()I

    move-result v5

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayToMirror:I

    if-eq v5, v6, :cond_52

    .line 1308
    const-string v4, "DisplayManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mirroring display is changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getLayerStack()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayToMirror:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "ownContent":Z
    :goto_4f
    return v3

    :cond_50
    move v2, v4

    .line 1303
    goto :goto_11

    :cond_52
    move v3, v4

    .line 1316
    goto :goto_4f
.end method

.method private clearViewportsLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1390
    iget-object v2, p0, mDefaultViewports:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayViewport;

    .line 1391
    .local v0, "defaultViewport":Landroid/hardware/display/DisplayViewport;
    iput-boolean v3, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    goto :goto_7

    .line 1393
    .end local v0    # "defaultViewport":Landroid/hardware/display/DisplayViewport;
    :cond_16
    iget-object v2, p0, mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    iput-boolean v3, v2, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1394
    return-void
.end method

.method private configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 16
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1397
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v7

    .line 1398
    .local v7, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v11, v7, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_47

    const/4 v9, 0x1

    .line 1399
    .local v9, "ownContent":Z
    :goto_b
    const/4 v4, 0x0

    .line 1402
    .local v4, "displayExistsAndEmpty":Z
    const/4 v1, 0x0

    .line 1411
    .local v1, "defaultMirroringDisplay":I
    invoke-direct {p0, p1}, findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 1412
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v9, :cond_28

    .line 1413
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 1416
    const/4 v3, 0x0

    .line 1417
    const/4 v4, 0x1

    .line 1419
    :cond_1d
    if-nez v3, :cond_28

    .line 1428
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1434
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_28
    if-nez v3, :cond_49

    .line 1436
    const-string v11, "DisplayManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing logical display to use for physical display device: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_46
    :goto_46
    return-void

    .line 1398
    .end local v1    # "defaultMirroringDisplay":I
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v4    # "displayExistsAndEmpty":Z
    .end local v9    # "ownContent":Z
    :cond_47
    const/4 v9, 0x0

    goto :goto_b

    .line 1442
    .restart local v1    # "defaultMirroringDisplay":I
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    .restart local v4    # "displayExistsAndEmpty":Z
    .restart local v9    # "ownContent":Z
    :cond_49
    move-object v10, v3

    .line 1443
    .local v10, "sourceDisplay":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v5

    .line 1444
    .local v5, "displayId":I
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DUALSCREEN_DEBUG_INPUT_METHOD:Z

    if-eqz v11, :cond_6c

    .line 1445
    const-string v11, "DSIMM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "config display mIsInputMethodDisplayEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, mIsInputMethodDisplayEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_6c
    iget-boolean v11, p0, mIsInputMethodDisplayEnabled:Z

    if-eqz v11, :cond_21c

    .line 1448
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    iget v12, p0, mInputMethodTargetDisplayId:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LogicalDisplay;

    .line 1449
    .local v8, "inputMethodTargetDisplay":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v11

    iget v11, v11, Landroid/view/DisplayInfo;->rotation:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_150

    .line 1450
    const/4 v11, 0x3

    iput v11, p0, mInputMethodTargetRotation:I

    .line 1455
    :cond_86
    :goto_86
    iget v11, p0, mInputMethodTargetRotation:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1b1

    .line 1456
    if-nez v5, :cond_15e

    .line 1457
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1458
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v12, 0x3

    invoke-virtual {v11, v5, v12}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    .line 1499
    .end local v8    # "inputMethodTargetDisplay":Lcom/android/server/display/LogicalDisplay;
    :cond_9c
    :goto_9c
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DUALSCREEN_DEBUG_INPUT_METHOD:Z

    if-eqz v11, :cond_cb

    .line 1500
    const-string v11, "DSIMM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "config display mapping from display="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "to display="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_cb
    iget v11, v7, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_223

    const/4 v11, 0x1

    :goto_d1
    invoke-virtual {v3, p1, v11}, Lcom/android/server/display/LogicalDisplay;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V

    .line 1507
    iget-object v11, p0, mDefaultViewports:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1508
    .local v0, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_db
    if-ge v6, v0, :cond_f8

    .line 1509
    iget-object v11, p0, mDefaultViewports:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 1510
    .local v2, "defaultViewport":Landroid/hardware/display/DisplayViewport;
    iget-boolean v11, v2, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-nez v11, :cond_226

    iget v11, v7, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_226

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v11

    if-ne v11, v6, :cond_226

    .line 1513
    invoke-static {v2, v3, p1}, setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1518
    .end local v2    # "defaultViewport":Landroid/hardware/display/DisplayViewport;
    :cond_f8
    sget-boolean v11, DEBUG_DUALSCREEN:Z

    if-eqz v11, :cond_13e

    .line 1519
    const-string v11, "DisplayManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DUALSCREEN] configureDisplayInTransactionLocked() : name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " valid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayViewport;->valid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " displayId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " info="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_13e
    iget-object v11, p0, mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-nez v11, :cond_46

    iget v11, v7, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_46

    .line 1529
    iget-object v11, p0, mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    invoke-static {v11, v3, p1}, setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    goto/16 :goto_46

    .line 1451
    .end local v0    # "count":I
    .end local v6    # "i":I
    .restart local v8    # "inputMethodTargetDisplay":Lcom/android/server/display/LogicalDisplay;
    :cond_150
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v11

    iget v11, v11, Landroid/view/DisplayInfo;->rotation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_86

    .line 1452
    const/4 v11, 0x1

    iput v11, p0, mInputMethodTargetRotation:I

    goto/16 :goto_86

    .line 1459
    :cond_15e
    const/4 v11, 0x1

    if-ne v5, v11, :cond_183

    .line 1460
    iget v11, p0, mInputMethodTargetDisplayId:I

    if-nez v11, :cond_177

    .line 1461
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    iget v12, p0, mInputMethodTargetDisplayId:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1462
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1463
    :cond_177
    iget v11, p0, mInputMethodTargetDisplayId:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9c

    .line 1464
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v11, v5, v5}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1466
    :cond_183
    const/4 v11, 0x3

    if-ne v5, v11, :cond_9c

    .line 1467
    iget v11, p0, mInputMethodTargetDisplayId:I

    if-nez v11, :cond_19b

    .line 1468
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1469
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1470
    :cond_19b
    iget v11, p0, mInputMethodTargetDisplayId:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9c

    .line 1471
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1472
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1475
    :cond_1b1
    iget v11, p0, mInputMethodTargetRotation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9c

    .line 1476
    const/4 v11, 0x1

    if-ne v5, v11, :cond_1ca

    .line 1477
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1478
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v12, 0x3

    invoke-virtual {v11, v5, v12}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1479
    :cond_1ca
    if-nez v5, :cond_1ee

    .line 1480
    iget v11, p0, mInputMethodTargetDisplayId:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1e3

    .line 1481
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    iget v12, p0, mInputMethodTargetDisplayId:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1482
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1483
    :cond_1e3
    iget v11, p0, mInputMethodTargetDisplayId:I

    if-nez v11, :cond_9c

    .line 1484
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v11, v5, v5}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1486
    :cond_1ee
    const/4 v11, 0x3

    if-ne v5, v11, :cond_9c

    .line 1487
    iget v11, p0, mInputMethodTargetDisplayId:I

    if-nez v11, :cond_206

    .line 1488
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1489
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1490
    :cond_206
    iget v11, p0, mInputMethodTargetDisplayId:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9c

    .line 1491
    iget-object v11, p0, mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1492
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1497
    .end local v8    # "inputMethodTargetDisplay":Lcom/android/server/display/LogicalDisplay;
    :cond_21c
    iget-object v11, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v11, v5, v5}, Landroid/view/WindowManagerInternal;->setScreenRotationAnimation(II)V

    goto/16 :goto_9c

    .line 1504
    :cond_223
    const/4 v11, 0x0

    goto/16 :goto_d1

    .line 1508
    .restart local v0    # "count":I
    .restart local v2    # "defaultViewport":Landroid/hardware/display/DisplayViewport;
    .restart local v6    # "i":I
    :cond_226
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_db
.end method

.method private connectWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 845
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 846
    :try_start_3
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 847
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V

    .line 849
    :cond_c
    monitor-exit v1

    .line 850
    return-void

    .line 849
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .registers 25
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "callingUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "densityDpi"    # I
    .param p9, "surface"    # Landroid/view/Surface;
    .param p10, "flags"    # I

    .prologue
    .line 915
    iget-object v13, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v13

    .line 916
    :try_start_3
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v0, :cond_11

    .line 917
    const-string v0, "DisplayManagerService"

    const-string v1, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v0, -0x1

    monitor-exit v13

    .line 941
    :goto_10
    return v0

    .line 922
    :cond_11
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)Lcom/android/server/display/DisplayDevice;

    move-result-object v11

    .line 925
    .local v11, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v11, :cond_32

    .line 926
    const/4 v0, -0x1

    monitor-exit v13

    goto :goto_10

    .line 940
    .end local v11    # "device":Lcom/android/server/display/DisplayDevice;
    :catchall_2f
    move-exception v0

    monitor-exit v13
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    .line 929
    .restart local v11    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_32
    :try_start_32
    invoke-direct {p0, v11}, handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 930
    invoke-direct {p0, v11}, findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v12

    .line 931
    .local v12, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v12, :cond_41

    .line 932
    invoke-virtual {v12}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    monitor-exit v13

    goto :goto_10

    .line 936
    :cond_41
    const-string v0, "DisplayManagerService"

    const-string v1, "Rejecting request to create virtual display because the logical display was not created."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    .line 939
    invoke-direct {p0, v11}, handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 940
    monitor-exit v13
    :try_end_55
    .catchall {:try_start_32 .. :try_end_55} :catchall_2f

    .line 941
    const/4 v0, -0x1

    goto :goto_10
.end method

.method private deliverDisplayEvent(II)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .prologue
    .line 1606
    iget-object v3, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 1607
    :try_start_3
    iget-object v2, p0, mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1608
    .local v0, "count":I
    iget-object v2, p0, mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1609
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 1610
    iget-object v2, p0, mTempCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1612
    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_31

    .line 1615
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_34

    .line 1616
    iget-object v2, p0, mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    .line 1615
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1612
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 1618
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_34
    iget-object v2, p0, mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1619
    return-void
.end method

.method private disconnectWifiDisplayInternal()V
    .registers 3

    .prologue
    .line 869
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 870
    :try_start_3
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 871
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 873
    :cond_c
    monitor-exit v1

    .line 874
    return-void

    .line 873
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 18
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1630
    const-string v13, "DISPLAY MANAGER (dumpsys display)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v14, v0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v14

    .line 1633
    :try_start_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mOnlyCode="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v15, v0, mOnlyCore:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mSafeMode="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v15, v0, mSafeMode:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mPendingTraversal="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v15, v0, mPendingTraversal:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mGlobalDisplayState="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v15, v0, mGlobalDisplayState:I

    invoke-static {v15}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mNextNonDefaultDisplayId="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v15, v0, mNextNonDefaultDisplayId:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v13, v0, mDefaultViewports:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1643
    .local v5, "defaultViewportCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a5
    if-ge v9, v5, :cond_d6

    .line 1644
    move-object/from16 v0, p0

    iget-object v13, v0, mDefaultViewports:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayViewport;

    .line 1645
    .local v4, "defaultViewport":Landroid/hardware/display/DisplayViewport;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mDefaultViewport["

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "]="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    add-int/lit8 v9, v9, 0x1

    goto :goto_a5

    .line 1647
    .end local v4    # "defaultViewport":Landroid/hardware/display/DisplayViewport;
    :cond_d6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mExternalTouchViewport="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mSingleDisplayDemoMode="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v15, v0, mSingleDisplayDemoMode:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1649
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v15, v0, mWifiDisplayScanRequestCount:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mIsForceUnblankDisplay (ALPM mode): "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v15, v0, mIsForceUnblankDisplay:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v13, "    "

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1654
    .local v11, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v11}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1656
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1657
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Display Adapters: size="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v13, v0, mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_17d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1ac

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayAdapter;

    .line 1659
    .local v1, "adapter":Lcom/android/server/display/DisplayAdapter;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v1, v11}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_17d

    .line 1692
    .end local v1    # "adapter":Lcom/android/server/display/DisplayAdapter;
    .end local v5    # "defaultViewportCount":I
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_1a9
    move-exception v13

    monitor-exit v14
    :try_end_1ab
    .catchall {:try_start_c .. :try_end_1ab} :catchall_1a9

    throw v13

    .line 1663
    .restart local v5    # "defaultViewportCount":I
    .restart local v9    # "i":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_1ac
    :try_start_1ac
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1664
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Display Devices: size="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v13, v0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1d7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_203

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayDevice;

    .line 1666
    .local v6, "device":Lcom/android/server/display/DisplayDevice;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v6, v11}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_1d7

    .line 1670
    .end local v6    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_203
    move-object/from16 v0, p0

    iget-object v13, v0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1671
    .local v12, "logicalDisplayCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1672
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Logical Displays: size="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    const/4 v9, 0x0

    :goto_227
    if-ge v9, v12, :cond_25f

    .line 1674
    move-object/from16 v0, p0

    iget-object v13, v0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1675
    .local v8, "displayId":I
    move-object/from16 v0, p0

    iget-object v13, v0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/LogicalDisplay;

    .line 1676
    .local v7, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Display "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v7, v11}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1673
    add-int/lit8 v9, v9, 0x1

    goto :goto_227

    .line 1680
    .end local v7    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v8    # "displayId":I
    :cond_25f
    move-object/from16 v0, p0

    iget-object v13, v0, mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1681
    .local v3, "callbackCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1682
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Callbacks: size="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    const/4 v9, 0x0

    :goto_283
    if-ge v9, v3, :cond_2c2

    .line 1684
    move-object/from16 v0, p0

    iget-object v13, v0, mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1685
    .local v2, "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ": mPid="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", mWifiDisplayScanRequested="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v15, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    add-int/lit8 v9, v9, 0x1

    goto :goto_283

    .line 1689
    .end local v2    # "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_2c2
    move-object/from16 v0, p0

    iget-object v13, v0, mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v13, :cond_2d1

    .line 1690
    move-object/from16 v0, p0

    iget-object v13, v0, mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 1692
    :cond_2d1
    monitor-exit v14
    :try_end_2d2
    .catchall {:try_start_1ac .. :try_end_2d2} :catchall_1a9

    .line 1693
    return-void
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1570
    iget-object v3, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1571
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1b

    .line 1572
    iget-object v3, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1573
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_18

    .line 1577
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :goto_17
    return-object v1

    .line 1571
    .restart local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1577
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private forgetWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 886
    :try_start_3
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 887
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 889
    :cond_c
    monitor-exit v1

    .line 890
    return-void

    .line 889
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private getDisplayIdsInternal(I)[I
    .registers 11
    .param p1, "callingUid"    # I

    .prologue
    .line 751
    iget-object v8, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v8

    .line 752
    :try_start_3
    iget-object v7, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 753
    .local v0, "count":I
    new-array v2, v0, [I

    .line 754
    .local v2, "displayIds":[I
    const/4 v5, 0x0

    .line 755
    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v6, v5

    .end local v5    # "n":I
    .local v6, "n":I
    :goto_e
    if-ge v3, v0, :cond_30

    .line 756
    iget-object v7, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 757
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 758
    .local v4, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v4, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 759
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    iget-object v7, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v2, v6

    .line 755
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_e

    .line 762
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v4    # "info":Landroid/view/DisplayInfo;
    :cond_30
    if-eq v6, v0, :cond_37

    .line 763
    const/4 v7, 0x0

    invoke-static {v2, v7, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    .line 765
    :cond_37
    monitor-exit v8

    return-object v2

    .line 766
    .end local v0    # "count":I
    .end local v2    # "displayIds":[I
    .end local v3    # "i":I
    .end local v6    # "n":I
    :catchall_39
    move-exception v7

    monitor-exit v8
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v7

    .restart local v0    # "count":I
    .restart local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .restart local v2    # "displayIds":[I
    .restart local v3    # "i":I
    .restart local v4    # "info":Landroid/view/DisplayInfo;
    .restart local v6    # "n":I
    :cond_3c
    move v5, v6

    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_2c
.end method

.method private getDisplayInfoInternal(IIILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;
    .registers 17
    .param p1, "displayId"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingpid"    # I
    .param p4, "appToken"    # Landroid/os/IBinder;
    .param p5, "isSelectiveOrientationState"    # Z

    .prologue
    .line 669
    iget-object v9, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v9

    .line 670
    :try_start_3
    iget-object v8, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 671
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v3, :cond_e1

    .line 672
    new-instance v5, Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 677
    .local v5, "info":Landroid/view/DisplayInfo;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 678
    if-nez p1, :cond_4b

    .line 679
    iget v2, p0, mCocktailShiftSize:I

    .line 681
    .local v2, "diff":I
    instance-of v8, p4, Landroid/view/IApplicationToken;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_db

    if-eqz v8, :cond_30

    .line 683
    :try_start_26
    check-cast p4, Landroid/view/IApplicationToken;

    .end local p4    # "appToken":Landroid/os/IBinder;
    invoke-interface {p4}, Landroid/view/IApplicationToken;->hasSubWindow()Z

    move-result v8

    if-eqz v8, :cond_c4

    iget v2, p0, mCocktailSize:I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_e4
    .catchall {:try_start_26 .. :try_end_30} :catchall_db

    .line 688
    :cond_30
    :goto_30
    :try_start_30
    iget v8, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v5, Landroid/view/DisplayInfo;->appWidth:I

    if-le v8, v10, :cond_c8

    .line 689
    iget v1, v5, Landroid/view/DisplayInfo;->appWidth:I

    .line 690
    .local v1, "before":I
    iget v8, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int v0, v8, v2

    iput v0, v5, Landroid/view/DisplayInfo;->appWidth:I

    .line 703
    .local v0, "after":I
    :goto_3e
    iget v8, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v5, Landroid/view/DisplayInfo;->appWidth:I

    if-le v8, v10, :cond_d2

    .line 704
    iget v8, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, p0, mCocktailSize:I

    sub-int/2addr v8, v10

    iput v8, v5, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    .line 714
    .end local v0    # "after":I
    .end local v1    # "before":I
    .end local v2    # "diff":I
    :cond_4b
    :goto_4b
    sget-boolean v8, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v8, :cond_54

    if-eqz p5, :cond_54

    .line 715
    invoke-virtual {v5}, Landroid/view/DisplayInfo;->toggleDisplay()V

    .line 718
    :cond_54
    invoke-virtual {v5, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v8

    if-eqz v8, :cond_e1

    .line 721
    iget-object v8, p0, mScaledPids:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    .line 722
    invoke-static {}, Landroid/os/DssHelper;->getInstance()Landroid/os/DssHelper;

    move-result-object v6

    .line 723
    .local v6, "mDssHelper":Landroid/os/DssHelper;
    iget-object v8, p0, mScaledPids:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/DssHelper;->getScalingFactor(Ljava/lang/String;)F

    move-result v7

    .line 724
    .local v7, "resolutionFactorf":F
    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4, v5}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 725
    .local v4, "fakeInfo":Landroid/view/DisplayInfo;
    iget v8, v4, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v4, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 726
    iget v8, v4, Landroid/view/DisplayInfo;->physicalXDpi:F

    mul-float/2addr v8, v7

    iput v8, v4, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 727
    iget v8, v4, Landroid/view/DisplayInfo;->physicalYDpi:F

    mul-float/2addr v8, v7

    iput v8, v4, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 728
    iget v8, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 729
    iget v8, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 730
    iget v8, v4, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v4, Landroid/view/DisplayInfo;->appHeight:I

    .line 731
    iget v8, v4, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v4, Landroid/view/DisplayInfo;->appWidth:I

    .line 734
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 735
    iget v8, v4, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v4, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    .line 736
    iget v8, v4, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v4, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    .line 740
    :cond_c2
    monitor-exit v9
    :try_end_c3
    .catchall {:try_start_30 .. :try_end_c3} :catchall_db

    .line 746
    .end local v4    # "fakeInfo":Landroid/view/DisplayInfo;
    .end local v5    # "info":Landroid/view/DisplayInfo;
    .end local v6    # "mDssHelper":Landroid/os/DssHelper;
    .end local v7    # "resolutionFactorf":F
    :goto_c3
    return-object v4

    .line 683
    .restart local v2    # "diff":I
    .restart local v5    # "info":Landroid/view/DisplayInfo;
    :cond_c4
    :try_start_c4
    iget v2, p0, mCocktailShiftSize:I
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c6} :catch_e4
    .catchall {:try_start_c4 .. :try_end_c6} :catchall_db

    goto/16 :goto_30

    .line 692
    :cond_c8
    :try_start_c8
    iget v1, v5, Landroid/view/DisplayInfo;->appHeight:I

    .line 693
    .restart local v1    # "before":I
    iget v8, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int v0, v8, v2

    iput v0, v5, Landroid/view/DisplayInfo;->appHeight:I

    .restart local v0    # "after":I
    goto/16 :goto_3e

    .line 706
    :cond_d2
    iget v8, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v10, p0, mCocktailSize:I

    sub-int/2addr v8, v10

    iput v8, v5, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    goto/16 :goto_4b

    .line 747
    .end local v0    # "after":I
    .end local v1    # "before":I
    .end local v2    # "diff":I
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v5    # "info":Landroid/view/DisplayInfo;
    :catchall_db
    move-exception v8

    monitor-exit v9
    :try_end_dd
    .catchall {:try_start_c8 .. :try_end_dd} :catchall_db

    throw v8

    .line 743
    .restart local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    .restart local v5    # "info":Landroid/view/DisplayInfo;
    :cond_de
    :try_start_de
    monitor-exit v9

    move-object v4, v5

    goto :goto_c3

    .line 746
    .end local v5    # "info":Landroid/view/DisplayInfo;
    :cond_e1
    const/4 v4, 0x0

    monitor-exit v9
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_db

    goto :goto_c3

    .line 684
    .restart local v2    # "diff":I
    .restart local v5    # "info":Landroid/view/DisplayInfo;
    :catch_e4
    move-exception v8

    goto/16 :goto_30
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 3

    .prologue
    .line 1622
    iget-object v1, p0, mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v1, :cond_11

    .line 1623
    const-string/jumbo v1, "media_projection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1624
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 1626
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v1, p0, mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v1
.end method

.method private getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    .registers 3

    .prologue
    .line 893
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 894
    :try_start_3
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 895
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    monitor-exit v1

    .line 897
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v1

    goto :goto_e

    .line 898
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1069
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1070
    :try_start_3
    invoke-direct {p0, p1}, handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 1071
    monitor-exit v1

    .line 1072
    return-void

    .line 1071
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 7
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1075
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1076
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1077
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add already added display device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :goto_24
    return-void

    .line 1081
    :cond_25
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display device added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1084
    iget-object v2, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    invoke-direct {p0, p1}, addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 1086
    invoke-direct {p0, p1}, updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v1

    .line 1087
    .local v1, "work":Ljava/lang/Runnable;
    if-eqz v1, :cond_50

    .line 1088
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1090
    :cond_50
    const/4 v2, 0x0

    invoke-direct {p0, v2}, scheduleTraversalLocked(Z)V

    goto :goto_24
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .registers 8
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1094
    iget-object v3, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 1095
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 1096
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1097
    const-string v2, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to change non-existent display device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    monitor-exit v3

    .line 1119
    :goto_28
    return-void

    .line 1101
    :cond_29
    iget-object v2, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result v0

    .line 1102
    .local v0, "diff":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6c

    .line 1103
    const-string v2, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device changed state: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_5c
    :goto_5c
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1110
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 1111
    invoke-direct {p0}, updateLogicalDisplaysLocked()Z

    move-result v2

    if-nez v2, :cond_87

    .line 1118
    :goto_67
    monitor-exit v3

    goto :goto_28

    .end local v0    # "diff":I
    .end local v1    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :catchall_69
    move-exception v2

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v2

    .line 1105
    .restart local v0    # "diff":I
    .restart local v1    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_6c
    if-eqz v0, :cond_5c

    .line 1106
    :try_start_6e
    const-string v2, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 1116
    :cond_87
    const/4 v2, 0x0

    invoke-direct {p0, v2}, scheduleTraversalLocked(Z)V
    :try_end_8b
    .catchall {:try_start_6e .. :try_end_8b} :catchall_69

    goto :goto_67
.end method

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1122
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1123
    :try_start_3
    invoke-direct {p0, p1}, handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 1124
    monitor-exit v1

    .line 1125
    return-void

    .line 1124
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 7
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1128
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 1129
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1130
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to remove non-existent display device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :goto_24
    return-void

    .line 1136
    :cond_25
    const-string/jumbo v2, "ro.product.board"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "chipname":Ljava/lang/String;
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chipname info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string v2, ".*smdk4x12.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_65

    .line 1141
    const-string v2, "DisplayManagerService"

    const-string/jumbo v3, "remove saved sidesync information"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const-wide/16 v2, 0x514

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1144
    const/4 v2, 0x0

    iput-object v2, p0, wifiDevice:Lcom/android/server/display/DisplayDevice;

    .line 1149
    :cond_65
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display device removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1152
    invoke-direct {p0}, updateLogicalDisplaysLocked()Z

    .line 1153
    const/4 v2, 0x0

    invoke-direct {p0, v2}, scheduleTraversalLocked(Z)V

    goto :goto_24
.end method

.method private isWfdConnected()Z
    .registers 3

    .prologue
    .line 1698
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1699
    :try_start_3
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1700
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isWfdEngineRunning()Z

    move-result v0

    monitor-exit v1

    .line 1701
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1702
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .prologue
    .line 790
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 791
    :try_start_3
    iget-object v0, p0, mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 792
    invoke-direct {p0, p1}, stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 793
    monitor-exit v1

    .line 794
    return-void

    .line 793
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private pauseWifiDisplayInternal()V
    .registers 3

    .prologue
    .line 853
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 854
    :try_start_3
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 855
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    .line 857
    :cond_c
    monitor-exit v1

    .line 858
    return-void

    .line 857
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private performTraversalInTransactionFromWindowManagerInternal()V
    .registers 5

    .prologue
    .line 471
    iget-object v3, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 472
    :try_start_3
    iget-boolean v2, p0, mPendingTraversal:Z

    if-nez v2, :cond_9

    .line 473
    monitor-exit v3

    .line 484
    :cond_8
    return-void

    .line 475
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, mPendingTraversal:Z

    .line 477
    invoke-direct {p0}, performTraversalInTransactionLocked()V

    .line 478
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_26

    .line 481
    iget-object v2, p0, mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 482
    .local v1, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    invoke-interface {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction()V

    goto :goto_16

    .line 478
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method private performTraversalInTransactionLocked()V
    .registers 6

    .prologue
    .line 1323
    invoke-direct {p0}, clearViewportsLocked()V

    .line 1326
    iget-object v3, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1327
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1d

    .line 1328
    iget-object v3, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 1329
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v1}, configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 1330
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->performTraversalInTransactionLocked()V

    .line 1327
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1334
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_1d
    iget-object v3, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v3, :cond_27

    .line 1335
    iget-object v3, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1337
    :cond_27
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .registers 3

    .prologue
    .line 1010
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1011
    :try_start_3
    invoke-direct {p0}, shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1012
    invoke-direct {p0}, registerOverlayDisplayAdapterLocked()V

    .line 1013
    invoke-direct {p0}, registerWifiDisplayAdapterLocked()V

    .line 1014
    invoke-direct {p0}, registerVirtualDisplayAdapterLocked()V

    .line 1016
    invoke-direct {p0}, registerMagnifierDisplayAdapterLocked()V

    .line 1019
    :cond_15
    monitor-exit v1

    .line 1020
    return-void

    .line 1019
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "callingPid"    # I

    .prologue
    .line 770
    iget-object v4, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 771
    :try_start_3
    iget-object v3, p0, mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 772
    new-instance v3, Ljava/lang/SecurityException;

    const-string v5, "The calling process has already registered an IDisplayManagerCallback."

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 786
    :catchall_13
    move-exception v3

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v3

    .line 776
    :cond_16
    :try_start_16
    new-instance v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_13

    .line 778
    .local v2, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :try_start_1b
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 779
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_2a
    .catchall {:try_start_1b .. :try_end_23} :catchall_13

    .line 785
    :try_start_23
    iget-object v3, p0, mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 786
    monitor-exit v4

    .line 787
    return-void

    .line 780
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_2a
    move-exception v1

    .line 782
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_13
.end method

.method private registerDefaultDisplayAdapter()V
    .registers 7

    .prologue
    .line 1003
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1004
    :try_start_3
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v0}, registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1006
    monitor-exit v1

    .line 1007
    return-void

    .line 1006
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/server/display/DisplayAdapter;

    .prologue
    .line 1064
    iget-object v0, p0, mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 1066
    return-void
.end method

.method private registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 444
    iget-object v0, p0, mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method private registerMagnifierDisplayAdapterLocked()V
    .registers 7

    .prologue
    .line 1048
    new-instance v0, Lcom/android/server/display/MagnifierDisplayAdapter;

    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, mUiHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/MagnifierDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    iput-object v0, p0, mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    .line 1049
    iget-object v0, p0, mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    invoke-direct {p0, v0}, registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1050
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .registers 7

    .prologue
    .line 1023
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, mUiHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1025
    return-void
.end method

.method private registerVirtualDisplayAdapterLocked()V
    .registers 6

    .prologue
    .line 1039
    new-instance v0, Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    iput-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 1041
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0, v0}, registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1042
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .registers 7

    .prologue
    .line 1028
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "persist.debug.wfd.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 1031
    :cond_1a
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 1034
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0, v0}, registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1036
    :cond_30
    return-void
.end method

.method private releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 988
    iget-object v2, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 989
    :try_start_3
    iget-object v1, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 990
    monitor-exit v2

    .line 999
    :goto_8
    return-void

    .line 993
    :cond_9
    iget-object v1, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 995
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v0, :cond_14

    .line 996
    invoke-direct {p0, v0}, handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 998
    :cond_14
    monitor-exit v2

    goto :goto_8

    .end local v0    # "device":Lcom/android/server/display/DisplayDevice;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 877
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 878
    :try_start_3
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 879
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_c
    monitor-exit v1

    .line 882
    return-void

    .line 881
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private requestColorTransformInternal(II)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "colorTransformId"    # I

    .prologue
    .line 902
    iget-object v2, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 903
    :try_start_3
    iget-object v1, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 904
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getRequestedColorTransformIdLocked()I

    move-result v1

    if-eq v1, p2, :cond_1a

    .line 906
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorTransformIdLocked(I)V

    .line 907
    const/4 v1, 0x0

    invoke-direct {p0, v1}, scheduleTraversalLocked(Z)V

    .line 909
    :cond_1a
    monitor-exit v2

    .line 910
    return-void

    .line 909
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private requestDisplayStateInternal(III)V
    .registers 15
    .param p1, "displayIdBit"    # I
    .param p2, "state"    # I
    .param p3, "brightness"    # I

    .prologue
    const/4 v5, 0x1

    .line 554
    new-instance v4, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 556
    .local v4, "timeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    if-nez p2, :cond_9

    .line 557
    const/4 p2, 0x2

    .line 559
    :cond_9
    if-ne p2, v5, :cond_139

    .line 560
    const/4 p3, 0x0

    .line 567
    :cond_c
    :goto_c
    iget-object v6, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 572
    :try_start_f
    iget-object v7, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v7
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_149

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "bChanged":Z
    shr-int/lit8 v5, p1, 0x0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_82

    .line 575
    :try_start_19
    iget v5, p0, mMainDisplayState:I

    if-ne v5, p2, :cond_21

    iget v5, p0, mMainDisplayBrightness:I

    if-eq v5, p3, :cond_82

    .line 576
    :cond_21
    iget v5, p0, mMainDisplayState:I

    if-eq v5, p2, :cond_5b

    .line 577
    const-string v5, "DisplayManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@display_state: mMainDisplayState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mMainDisplayState:I

    invoke-static {v9}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", brightness = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_5b
    iget-object v5, p0, mDisplayDevices:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 581
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v1, :cond_82

    .line 582
    iput p2, p0, mMainDisplayState:I

    .line 583
    iput p3, p0, mMainDisplayBrightness:I

    .line 584
    iget v5, p0, mSubDisplayState:I

    if-ne v5, p2, :cond_70

    .line 585
    iput p2, p0, mGlobalDisplayState:I

    .line 586
    :cond_70
    iget v5, p0, mSubDisplayBrightness:I

    if-ne v5, p3, :cond_76

    .line 587
    iput p3, p0, mGlobalDisplayBrightness:I

    .line 588
    :cond_76
    invoke-direct {p0, v1, p2, p3}, updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;II)Ljava/lang/Runnable;

    move-result-object v3

    .line 589
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_81

    .line 590
    iget-object v5, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_81
    const/4 v0, 0x1

    .line 596
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_82
    shr-int/lit8 v5, p1, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f1

    .line 597
    iget v5, p0, mSubDisplayState:I

    if-ne v5, p2, :cond_90

    iget v5, p0, mSubDisplayBrightness:I

    if-eq v5, p3, :cond_f1

    .line 598
    :cond_90
    iget v5, p0, mSubDisplayState:I

    if-eq v5, p2, :cond_ca

    .line 599
    const-string v5, "DisplayManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@display_state: mSubDisplayState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mSubDisplayState:I

    invoke-static {v9}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", brightness = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_ca
    iget-object v5, p0, mDisplayDevices:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 603
    .restart local v1    # "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v1, :cond_f1

    .line 604
    iput p2, p0, mSubDisplayState:I

    .line 605
    iput p3, p0, mSubDisplayBrightness:I

    .line 606
    iget v5, p0, mMainDisplayState:I

    if-ne v5, p2, :cond_df

    .line 607
    iput p2, p0, mGlobalDisplayState:I

    .line 608
    :cond_df
    iget v5, p0, mMainDisplayBrightness:I

    if-ne v5, p3, :cond_e5

    .line 609
    iput p3, p0, mGlobalDisplayBrightness:I

    .line 610
    :cond_e5
    invoke-direct {p0, v1, p2, p3}, updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;II)Ljava/lang/Runnable;

    move-result-object v3

    .line 611
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_f0

    .line 612
    iget-object v5, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_f0
    const/4 v0, 0x1

    .line 619
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_f1
    const-wide/32 v8, 0x20000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestDisplayState("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", brightness="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 623
    if-eqz v0, :cond_121

    .line 626
    :cond_121
    monitor-exit v7
    :try_end_122
    .catchall {:try_start_19 .. :try_end_122} :catchall_146

    .line 632
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_123
    :try_start_123
    iget-object v5, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_153

    .line 633
    iget-object v5, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_136
    .catchall {:try_start_123 .. :try_end_136} :catchall_149

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_123

    .line 561
    .end local v0    # "bChanged":Z
    .end local v2    # "i":I
    :cond_139
    if-gez p3, :cond_13e

    .line 562
    const/4 p3, -0x1

    goto/16 :goto_c

    .line 563
    :cond_13e
    const/16 v5, 0xff

    if-le p3, v5, :cond_c

    .line 564
    const/16 p3, 0xff

    goto/16 :goto_c

    .line 626
    .restart local v0    # "bChanged":Z
    :catchall_146
    move-exception v5

    :try_start_147
    monitor-exit v7
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    :try_start_148
    throw v5
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_149

    .line 637
    .end local v0    # "bChanged":Z
    :catchall_149
    move-exception v5

    :try_start_14a
    iget-object v7, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    throw v5

    .line 639
    :catchall_150
    move-exception v5

    monitor-exit v6
    :try_end_152
    .catchall {:try_start_14a .. :try_end_152} :catchall_150

    throw v5

    .line 635
    .restart local v0    # "bChanged":Z
    .restart local v2    # "i":I
    :cond_153
    const-wide/32 v8, 0x20000

    :try_start_156
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_159
    .catchall {:try_start_156 .. :try_end_159} :catchall_149

    .line 637
    :try_start_159
    iget-object v5, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 639
    monitor-exit v6
    :try_end_15f
    .catchall {:try_start_159 .. :try_end_15f} :catchall_150

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@display_state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 643
    return-void
.end method

.method private requestGlobalDisplayStateInternal(II)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .prologue
    .line 488
    new-instance v1, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 490
    .local v1, "timeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    if-nez p1, :cond_8

    .line 491
    const/4 p1, 0x2

    .line 493
    :cond_8
    const/4 v2, 0x1

    if-ne p1, v2, :cond_22

    .line 494
    const/4 p2, 0x0

    .line 501
    :cond_c
    :goto_c
    iget-object v3, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 506
    :try_start_f
    iget-object v4, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_c5

    .line 507
    :try_start_12
    iget v2, p0, mGlobalDisplayState:I

    if-ne v2, p1, :cond_2d

    iget v2, p0, mGlobalDisplayBrightness:I

    if-ne v2, p2, :cond_2d

    .line 509
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_c2

    .line 543
    :try_start_1b
    iget-object v2, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_cc

    .line 550
    :goto_21
    return-void

    .line 495
    :cond_22
    if-gez p2, :cond_26

    .line 496
    const/4 p2, -0x1

    goto :goto_c

    .line 497
    :cond_26
    const/16 v2, 0xff

    if-le p2, v2, :cond_c

    .line 498
    const/16 p2, 0xff

    goto :goto_c

    .line 512
    :cond_2d
    :try_start_2d
    iget v2, p0, mGlobalDisplayState:I

    if-eq v2, p1, :cond_73

    .line 513
    const-string v2, "DisplayManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@display_state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mGlobalDisplayState:I

    invoke-static {v6}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " brightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mGlobalDisplayBrightness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_73
    const-wide/32 v6, 0x20000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestGlobalDisplayState("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", brightness="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 523
    iput p1, p0, mGlobalDisplayState:I

    .line 524
    iput p2, p0, mGlobalDisplayBrightness:I

    .line 531
    iget-object v2, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, applyGlobalDisplayStateLocked(Ljava/util/List;)V

    .line 532
    monitor-exit v4
    :try_end_ab
    .catchall {:try_start_2d .. :try_end_ab} :catchall_c2

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_ac
    :try_start_ac
    iget-object v2, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_cf

    .line 539
    iget-object v2, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_bf
    .catchall {:try_start_ac .. :try_end_bf} :catchall_c5

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 532
    .end local v0    # "i":I
    :catchall_c2
    move-exception v2

    :try_start_c3
    monitor-exit v4
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v2
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    .line 543
    :catchall_c5
    move-exception v2

    :try_start_c6
    iget-object v4, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    throw v2

    .line 545
    :catchall_cc
    move-exception v2

    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_c6 .. :try_end_ce} :catchall_cc

    throw v2

    .line 541
    .restart local v0    # "i":I
    :cond_cf
    const-wide/32 v4, 0x20000

    :try_start_d2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_c5

    .line 543
    :try_start_d5
    iget-object v2, p0, mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 545
    monitor-exit v3
    :try_end_db
    .catchall {:try_start_d5 .. :try_end_db} :catchall_cc

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@display_state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    goto/16 :goto_21
.end method

.method private resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .registers 7
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .prologue
    .line 946
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 947
    :try_start_3
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v0, :cond_9

    .line 948
    monitor-exit v1

    .line 953
    :goto_8
    return-void

    .line 951
    :cond_9
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V

    .line 952
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private resumeWifiDisplayInternal()V
    .registers 3

    .prologue
    .line 861
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 862
    :try_start_3
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 863
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    .line 865
    :cond_c
    monitor-exit v1

    .line 866
    return-void

    .line 865
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private saveWifiDisplayInfo(Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1729
    iput-object p1, p0, wifiDevice:Lcom/android/server/display/DisplayDevice;

    .line 1731
    return-void
.end method

.method private scheduleTraversalLocked(Z)V
    .registers 4
    .param p1, "inTraversal"    # Z

    .prologue
    .line 1588
    iget-boolean v0, p0, mPendingTraversal:Z

    if-nez v0, :cond_13

    iget-object v0, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    if-eqz v0, :cond_13

    .line 1589
    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingTraversal:Z

    .line 1590
    if-nez p1, :cond_13

    .line 1591
    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1594
    :cond_13
    return-void
.end method

.method private sendDisplayEventLocked(II)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .prologue
    .line 1581
    iget-object v1, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1582
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1583
    return-void
.end method

.method private setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 455
    iget-object v2, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 456
    :try_start_3
    iget-object v1, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 457
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_26

    .line 458
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 460
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    if-nez v1, :cond_22

    .line 462
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, sendDisplayEventLocked(II)V

    .line 464
    :cond_22
    const/4 v1, 0x0

    invoke-direct {p0, v1}, scheduleTraversalLocked(Z)V

    .line 467
    :cond_26
    monitor-exit v2

    .line 468
    return-void

    .line 467
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private setDisplayOffsetsInternal(III)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1372
    iget-object v2, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 1373
    :try_start_3
    iget-object v1, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 1374
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v0, :cond_f

    .line 1375
    monitor-exit v2

    .line 1387
    :goto_e
    return-void

    .line 1377
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    move-result v1

    if-ne v1, p2, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    move-result v1

    if-eq v1, p3, :cond_22

    .line 1383
    :cond_1b
    invoke-virtual {v0, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    .line 1384
    const/4 v1, 0x0

    invoke-direct {p0, v1}, scheduleTraversalLocked(Z)V

    .line 1386
    :cond_22
    monitor-exit v2

    goto :goto_e

    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private setDisplayPropertiesInternal(IZFIZ)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedModeId"    # I
    .param p5, "inTraversal"    # Z

    .prologue
    .line 1341
    iget-object v2, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 1342
    :try_start_3
    iget-object v1, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 1343
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v0, :cond_f

    .line 1344
    monitor-exit v2

    .line 1369
    :goto_e
    return-void

    .line 1346
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v1

    if-eq v1, p2, :cond_1b

    .line 1352
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 1353
    invoke-direct {p0, p5}, scheduleTraversalLocked(Z)V

    .line 1355
    :cond_1b
    if-nez p4, :cond_2a

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_2a

    .line 1358
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result p4

    .line 1361
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getRequestedModeIdLocked()I

    move-result v1

    if-eq v1, p4, :cond_36

    .line 1365
    invoke-virtual {v0, p4}, Lcom/android/server/display/LogicalDisplay;->setRequestedModeIdLocked(I)V

    .line 1366
    invoke-direct {p0, p5}, scheduleTraversalLocked(Z)V

    .line 1368
    :cond_36
    monitor-exit v2

    goto :goto_e

    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private static setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p0, "viewport"    # Landroid/hardware/display/DisplayViewport;
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1559
    sget-boolean v0, DEBUG_DUALSCREEN:Z

    if-eqz v0, :cond_47

    .line 1560
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DUALSCREEN] setViewportLocked() : viewport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DUALSCREEN] setViewportLocked() callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1565
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 1566
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    .line 1567
    return-void
.end method

.method private setVirtualDisplayFixedOrientationInternal(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "orientation"    # I

    .prologue
    .line 978
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 979
    :try_start_3
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v0, :cond_9

    .line 980
    monitor-exit v1

    .line 985
    :goto_8
    return-void

    .line 983
    :cond_9
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplayFixedOrientationLocked(Landroid/os/IBinder;I)V

    .line 984
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private setVirtualDisplayMirroringDisplayInternal(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .prologue
    .line 967
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 968
    :try_start_3
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v0, :cond_9

    .line 969
    monitor-exit v1

    .line 974
    :goto_8
    return-void

    .line 972
    :cond_9
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplayMirroringDisplayLocked(Landroid/os/IBinder;I)V

    .line 973
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 956
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 957
    :try_start_3
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v0, :cond_9

    .line 958
    monitor-exit v1

    .line 963
    :goto_8
    return-void

    .line 961
    :cond_9
    iget-object v0, p0, mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 962
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .registers 2

    .prologue
    .line 1060
    iget-boolean v0, p0, mSafeMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, mOnlyCore:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private startWifiDisplayScanInternal(I)V
    .registers 6
    .param p1, "callingPid"    # I

    .prologue
    .line 797
    iget-object v2, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 798
    :try_start_3
    iget-object v1, p0, mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 799
    .local v0, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-nez v0, :cond_18

    .line 800
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    .end local v0    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 803
    .restart local v0    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 804
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_15

    .line 805
    return-void
.end method

.method private startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 4
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .prologue
    .line 808
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_18

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 810
    iget v0, p0, mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mWifiDisplayScanRequestCount:I

    if-nez v0, :cond_18

    .line 811
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_18

    .line 812
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    .line 816
    :cond_18
    return-void
.end method

.method private stopWifiDisplayScanInternal(I)V
    .registers 6
    .param p1, "callingPid"    # I

    .prologue
    .line 819
    iget-object v2, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 820
    :try_start_3
    iget-object v1, p0, mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 821
    .local v0, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-nez v0, :cond_18

    .line 822
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    .end local v0    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 825
    .restart local v0    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 826
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_15

    .line 827
    return-void
.end method

.method private stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .prologue
    const/4 v3, 0x0

    .line 830
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_18

    .line 831
    iput-boolean v3, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 832
    iget v0, p0, mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mWifiDisplayScanRequestCount:I

    if-nez v0, :cond_19

    .line 833
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_18

    .line 834
    iget-object v0, p0, mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    .line 842
    :cond_18
    :goto_18
    return-void

    .line 836
    :cond_19
    iget v0, p0, mWifiDisplayScanRequestCount:I

    if-gez v0, :cond_18

    .line 837
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiDisplayScanRequestCount became negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iput v3, p0, mWifiDisplayScanRequestCount:I

    goto :goto_18
.end method

.method private unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 450
    iget-object v0, p0, mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method private updateDisplayDeviceInfo(Lcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .registers 7
    .param p1, "toDevice"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "fromDevice"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1708
    const-string v1, "DisplayManagerService"

    const-string v2, "Replacing deviceInfo details"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    if-eqz p1, :cond_66

    if-eqz p2, :cond_66

    .line 1710
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 1711
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 1712
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 1713
    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1714
    .local v0, "platform":Ljava/lang/String;
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const-string/jumbo v1, "exynos4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1717
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 1718
    const-string v1, "DisplayManagerService"

    const-string v2, "Add secure flag"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    .end local v0    # "platform":Ljava/lang/String;
    :cond_66
    :goto_66
    return-object p1

    .line 1720
    .restart local v0    # "platform":Ljava/lang/String;
    :cond_67
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_66
.end method

.method private updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .registers 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1170
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1171
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_13

    .line 1172
    iget v1, p0, mGlobalDisplayState:I

    iget v2, p0, mGlobalDisplayBrightness:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;

    move-result-object v1

    .line 1174
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;II)Ljava/lang/Runnable;
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "state"    # I
    .param p3, "brightness"    # I

    .prologue
    .line 1180
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1181
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_f

    .line 1182
    invoke-virtual {p1, p2, p3}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;

    move-result-object v1

    .line 1184
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private updateLogicalDisplaysLocked()Z
    .registers 9

    .prologue
    const/high16 v7, 0x100000

    .line 1272
    const/4 v0, 0x0

    .line 1273
    .local v0, "changed":Z
    iget-object v5, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_a
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_60

    .line 1274
    iget-object v5, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1275
    .local v2, "displayId":I
    iget-object v5, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1277
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v5, p0, mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1278
    iget-object v5, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1279
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v5

    if-nez v5, :cond_45

    .line 1280
    iget-object v5, p0, mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1282
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v5, v7

    if-nez v5, :cond_42

    .line 1284
    const/4 v5, 0x3

    invoke-direct {p0, v2, v5}, sendDisplayEventLocked(II)V

    .line 1286
    :cond_42
    const/4 v0, 0x1

    :cond_43
    :goto_43
    move v4, v3

    .line 1295
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_a

    .line 1287
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_45
    iget-object v5, p0, mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 1289
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v5, v7

    if-nez v5, :cond_5e

    .line 1291
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, sendDisplayEventLocked(II)V

    .line 1293
    :cond_5e
    const/4 v0, 0x1

    goto :goto_43

    .line 1296
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "displayId":I
    :cond_60
    return v0
.end method


# virtual methods
.method public addScaledPid(ILjava/lang/String;)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 649
    iget-object v0, p0, mScaledPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method

.method public getDisplayIdOfDeviceInternal(I)I
    .registers 4
    .param p1, "deviceId"    # I

    .prologue
    .line 1551
    iget-object v1, p0, mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDevice;

    .line 1552
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getLayerStack()I

    move-result v1

    return v1
.end method

.method public onBootPhase(I)V
    .registers 12
    .param p1, "phase"    # I

    .prologue
    .line 399
    const/16 v4, 0x64

    if-ne p1, v4, :cond_38

    .line 400
    iget-object v5, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5

    .line 401
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 402
    .local v2, "timeout":J
    :goto_f
    iget-object v4, p0, mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_37

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 404
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_2f

    .line 405
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Timeout waiting for default display to be initialized."

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 416
    .end local v0    # "delay":J
    .end local v2    # "timeout":J
    :catchall_2c
    move-exception v4

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw v4

    .line 412
    .restart local v0    # "delay":J
    .restart local v2    # "timeout":J
    :cond_2f
    :try_start_2f
    iget-object v4, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_34} :catch_35
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    goto :goto_f

    .line 413
    :catch_35
    move-exception v4

    goto :goto_f

    .line 416
    .end local v0    # "delay":J
    :cond_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2c

    .line 418
    .end local v2    # "timeout":J
    :cond_38
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 390
    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 392
    const-string/jumbo v0, "display"

    new-instance v1, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v1, p0, v3}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    invoke-virtual {p0, v0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 394
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-direct {v1, p0, v3}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    invoke-virtual {p0, v0, v1}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public removeScaledPid(I)V
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 654
    iget-object v0, p0, mScaledPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 655
    iget-object v0, p0, mScaledPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_15
    return-void
.end method

.method public removeScaledPids()V
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, mScaledPids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 662
    return-void
.end method

.method public setInputMethodDisplayEnabled(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "inputMethodTargetDisplayId"    # I

    .prologue
    .line 1539
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1540
    :try_start_3
    iget-boolean v0, p0, mIsInputMethodDisplayEnabled:Z

    if-eq v0, p1, :cond_11

    .line 1541
    iput-boolean p1, p0, mIsInputMethodDisplayEnabled:Z

    .line 1542
    iput p2, p0, mInputMethodTargetDisplayId:I

    .line 1543
    const/4 v0, 0x0

    iput v0, p0, mInputMethodTargetRotation:I

    .line 1545
    invoke-direct {p0}, performTraversalInTransactionLocked()V

    .line 1547
    :cond_11
    monitor-exit v1

    .line 1548
    return-void

    .line 1547
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public systemReady(ZZ)V
    .registers 5
    .param p1, "safeMode"    # Z
    .param p2, "onlyCore"    # Z

    .prologue
    .line 433
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 434
    :try_start_3
    iput-boolean p1, p0, mSafeMode:Z

    .line 435
    iput-boolean p2, p0, mOnlyCore:Z

    .line 436
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    .line 438
    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 439
    return-void

    .line 436
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public windowManagerAndInputReady()V
    .registers 3

    .prologue
    .line 422
    iget-object v1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 423
    :try_start_3
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 424
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, v0}, scheduleTraversalLocked(Z)V

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method
