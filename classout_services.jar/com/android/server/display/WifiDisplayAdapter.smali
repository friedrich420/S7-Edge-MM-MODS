.class final Lcom/android/server/display/WifiDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;,
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
    }
.end annotation


# static fields
.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field private static final DEBUG:Z = true

.field private static final DISPLAY_NAME_PREFIX:Ljava/lang/String; = "wifi:"

.field private static final MSG_DLNA_DISCONNECT_REQ_BROADCAST:I = 0x5

.field private static final MSG_SEND_STATUS_CHANGE_BROADCAST:I = 0x1

.field private static final MSG_START_FAB_BROADCAST:I = 0x3

.field private static final MSG_STOP_FAB_BROADCAST:I = 0x4

.field private static final MSG_UPDATE_NOTIFICATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiDisplayAdapter"

.field private static final WFD_NOTIFICATION:Ljava/lang/String; = "com.samsung.wfd.notification"


# instance fields
.field private mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private mActiveDisplayState:I

.field private mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectState:I

.field private mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

.field private mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mDisconnectPendingIntent:Landroid/app/PendingIntent;

.field private mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field private mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

.field private mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mFeatureState:I

.field private final mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

.field private mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

.field private final mIpRemoteDisplayListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

.field private mLastConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

.field private mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingDLNADisconnectReqBroadcast:Z

.field private mPendingNotificationUpdate:Z

.field private mPendingStartFloatingIconBroadcast:Z

.field private mPendingStatusChangeBroadcast:Z

.field private mPendingStopFloatingIconBroadcast:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mQoSLevel:I

.field private mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mScanRequestedInConnected:Z

.field private mScanState:I

.field private mScreenSharingStatus:I

.field private mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;

.field private mSinkState:I

.field private mSourceState:I

.field private final mSupportsProtectedBuffers:Z

.field private final mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .registers 12
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "persistentDataStore"    # Lcom/android/server/display/PersistentDataStore;

    .prologue
    .line 156
    const-string v5, "WifiDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 126
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 127
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 128
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, mConnectState:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, mQoSLevel:I

    .line 146
    const/4 v0, 0x7

    iput v0, p0, mScreenSharingStatus:I

    .line 983
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$13;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$13;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1107
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$17;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$17;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 1416
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$2;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, mIpRemoteDisplayListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .line 157
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 158
    iput-object p5, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 159
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mSupportsProtectedBuffers:Z

    .line 161
    const-string/jumbo v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    .line 163
    return-void
.end method

.method private IsRunningIpRemoteDisplay()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 528
    iget v1, p0, mConnectState:I

    if-eqz v1, :cond_23

    iget v1, p0, mConnectState:I

    if-eq v1, v0, :cond_23

    iget v1, p0, mConnectState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_23

    iget v1, p0, mConnectState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_23

    iget v1, p0, mConnectState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_23

    iget v1, p0, mConnectState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_23

    iget v1, p0, mConnectState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_24

    :cond_23
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 91
    iput-object p1, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, requestClearConnectedDisplayInfo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, requestSaveConnectedDisplayInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, scheduleUpdateNotificationLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, scheduleDLNADisconnectReqBroadcastLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/DLNADevice;)Landroid/hardware/display/DLNADevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Landroid/hardware/display/DLNADevice;

    .prologue
    .line 91
    iput-object p1, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayAdapter;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, sendDisplayEventToExtendedListener(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget v0, p0, mFeatureState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, mFeatureState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, scheduleStatusChangedBroadcastLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget v0, p0, mScanState:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, mScanState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 91
    iput-object p1, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 91
    iput-object p1, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # [Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 91
    iput-object p1, p0, mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # [Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 91
    iput-object p1, p0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, fixRememberedDisplayNamesFromAvailableDisplaysLocked()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, updateDisplaysLocked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 91
    invoke-direct/range {p0 .. p5}, addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 91
    invoke-direct {p0, p1}, rememberedDisplayLocked(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, mScreenSharingStatus:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, scheduleStartFloatingIconBroadcastLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mIpRemoteDisplayListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    .prologue
    .line 91
    iput-object p1, p0, mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, renameDisplayDeviceLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, removeDisplayDeviceLocked()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, scheduleStopFloatingIconBroadcastLocked()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, requestDisableWiFiP2P()V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, mQoSLevel:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, handleSendStatusChangeBroadcast()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, handleUpdateNotification()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, handleSendStartFABBroadcast()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, handleSendStopFABBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, handleSendDLNADisconnectReqBroadcast()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-object v0, p0, mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    invoke-direct {p0}, IsRunningIpRemoteDisplay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget v0, p0, mConnectState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, mConnectState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget v0, p0, mActiveDisplayState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, mActiveDisplayState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 91
    iget-boolean v0, p0, mScanRequestedInConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/WifiDisplayAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, mScanRequestedInConnected:Z

    return p1
.end method

.method private addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 17
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 721
    invoke-direct {p0}, removeDisplayDeviceLocked()V

    .line 723
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 724
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 725
    invoke-direct {p0}, updateRememberedDisplaysLocked()V

    .line 726
    invoke-direct {p0}, scheduleStatusChangedBroadcastLocked()V

    .line 736
    :goto_16
    iget-object v0, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v0, v0

    if-lez v0, :cond_29

    .line 737
    iget-object v0, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 739
    invoke-virtual {p0}, removeLastConnectedDLNADevice()V

    .line 743
    :cond_29
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_8c

    const/4 v10, 0x1

    .line 744
    .local v10, "secure":Z
    :goto_2e
    const/16 v7, 0x40

    .line 745
    .local v7, "deviceFlags":I
    if-eqz v10, :cond_52

    .line 746
    or-int/lit8 v7, v7, 0x4

    .line 747
    iget-boolean v0, p0, mSupportsProtectedBuffers:Z

    if-eqz v0, :cond_52

    .line 748
    or-int/lit8 v7, v7, 0x8

    .line 749
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDisplayDeviceLocked deviceFlags : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_52
    const/high16 v6, 0x41f00000    # 30.0f

    .line 755
    .local v6, "refreshRate":F
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    .line 757
    .local v8, "address":Ljava/lang/String;
    invoke-static {v3, v10}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 758
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V

    iput-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 760
    iget-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 761
    return-void

    .line 730
    .end local v2    # "displayToken":Landroid/os/IBinder;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "refreshRate":F
    .end local v7    # "deviceFlags":I
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "secure":Z
    :cond_72
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    .line 731
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    .line 732
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 733
    invoke-direct {p0}, updateRememberedDisplaysLocked()V

    .line 734
    invoke-direct {p0}, scheduleStatusChangedBroadcastLocked()V

    goto :goto_16

    .line 743
    :cond_8c
    const/4 v10, 0x0

    goto :goto_2e
.end method

.method private findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 690
    iget-object v0, p0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 691
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 695
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :goto_12
    return-object v1

    .line 690
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 695
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private fixRememberedDisplayNamesFromAvailableDisplaysLocked()V
    .registers 8

    .prologue
    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v4

    if-ge v2, v4, :cond_42

    .line 672
    iget-object v4, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v3, v4, v2

    .line 673
    .local v3, "rememberedDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 675
    .local v0, "availableDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_3f

    invoke-virtual {v3, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 677
    const-string v4, "WifiDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fixRememberedDisplayNamesFromAvailableDisplaysLocked: updating remembered display to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v4, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aput-object v0, v4, v2

    .line 681
    iget-object v4, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4, v0}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 671
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 684
    .end local v0    # "availableDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v3    # "rememberedDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_42
    if-eqz v1, :cond_49

    .line 685
    iget-object v4, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 687
    :cond_49
    return-void
.end method

.method private handleSendDLNADisconnectReqBroadcast()V
    .registers 5

    .prologue
    .line 970
    invoke-virtual {p0}, getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    .line 971
    :try_start_5
    iget-boolean v2, p0, mPendingDLNADisconnectReqBroadcast:Z

    if-nez v2, :cond_b

    .line 972
    monitor-exit v3

    .line 980
    :goto_a
    return-void

    .line 974
    :cond_b
    const/4 v2, 0x0

    iput-boolean v2, p0, mPendingDLNADisconnectReqBroadcast:Z

    .line 975
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, getDLNADeviceUid()Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "uid":Ljava/lang/String;
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_2a

    .line 979
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a

    .line 978
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uid":Ljava/lang/String;
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method private handleSendStartFABBroadcast()V
    .registers 6

    .prologue
    .line 939
    invoke-virtual {p0}, getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 940
    :try_start_5
    iget-boolean v1, p0, mPendingStartFloatingIconBroadcast:Z

    if-nez v1, :cond_b

    .line 941
    monitor-exit v2

    .line 950
    :goto_a
    return-void

    .line 943
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingStartFloatingIconBroadcast:Z

    .line 944
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 946
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.wfdbroker"

    const-string v4, "com.sec.android.app.wfdbroker.wfdfloatingicon.WfdFloatingIconService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 948
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_28

    .line 949
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a

    .line 948
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private handleSendStatusChangeBroadcast()V
    .registers 5

    .prologue
    .line 822
    invoke-virtual {p0}, getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 823
    :try_start_5
    iget-boolean v1, p0, mPendingStatusChangeBroadcast:Z

    if-nez v1, :cond_b

    .line 824
    monitor-exit v2

    .line 836
    :goto_a
    return-void

    .line 827
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingStatusChangeBroadcast:Z

    .line 828
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 830
    const-string v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p0}, getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 832
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2e

    .line 835
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a

    .line 832
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private handleSendStopFABBroadcast()V
    .registers 6

    .prologue
    .line 955
    invoke-virtual {p0}, getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 956
    :try_start_5
    iget-boolean v1, p0, mPendingStopFloatingIconBroadcast:Z

    if-nez v1, :cond_b

    .line 957
    monitor-exit v2

    .line 965
    :goto_a
    return-void

    .line 959
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingStopFloatingIconBroadcast:Z

    .line 960
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 961
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.wfdbroker"

    const-string v4, "com.sec.android.app.wfdbroker.wfdfloatingicon.WfdFloatingIconService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 963
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_28

    .line 964
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_a

    .line 963
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private handleUpdateNotification()V
    .registers 22

    .prologue
    .line 845
    invoke-virtual/range {p0 .. p0}, getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v5

    monitor-enter v5

    .line 846
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, mPendingNotificationUpdate:Z

    if-nez v3, :cond_d

    .line 847
    monitor-exit v5

    .line 934
    :cond_c
    :goto_c
    return-void

    .line 850
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mPendingNotificationUpdate:Z

    .line 851
    move-object/from16 v0, p0

    iget v0, v0, mActiveDisplayState:I

    move/from16 v18, v0

    .line 852
    .local v18, "state":I
    move-object/from16 v0, p0

    iget-object v11, v0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 854
    .local v11, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual/range {p0 .. p0}, isDLNADeviceConnected()Z

    move-result v12

    .line 855
    .local v12, "isDLNAConnected":Z
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_11c

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const v6, 0x10408f1

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 861
    if-eqz v11, :cond_3a

    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_46

    const/4 v3, 0x2

    move/from16 v0, v18

    if-eq v0, v3, :cond_46

    :cond_3a
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->isSwitchingDevice()Z

    move-result v3

    if-nez v3, :cond_c

    .line 864
    :cond_46
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    .line 868
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, mSettingsPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_69

    .line 869
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.settings.CAST_SETTINGS"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    .local v4, "settingsIntent":Landroid/content/Intent;
    const/high16 v3, 0x14200000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 873
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 877
    .end local v4    # "settingsIntent":Landroid/content/Intent;
    :cond_69
    move-object/from16 v0, p0

    iget-object v3, v0, mDisconnectPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_82

    .line 878
    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    .local v10, "disconnectIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v2, v3, v10, v5, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mDisconnectPendingIntent:Landroid/app/PendingIntent;

    .line 885
    .end local v10    # "disconnectIntent":Landroid/content/Intent;
    :cond_82
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 887
    .local v17, "r":Landroid/content/res/Resources;
    new-instance v13, Landroid/app/Notification$Builder;

    invoke-direct {v13, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 889
    .local v13, "mBuilder":Landroid/app/Notification$Builder;
    const/16 v20, 0x0

    .line 890
    .local v20, "title":Ljava/lang/CharSequence;
    const/16 v19, 0x0

    .line 891
    .local v19, "subtext":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 894
    .local v8, "deviceName":Ljava/lang/CharSequence;
    if-eqz v12, :cond_11f

    move-object/from16 v0, p0

    iget-object v3, v0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->isSwitchingDevice()Z

    move-result v3

    if-nez v3, :cond_11f

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    .line 902
    :goto_a4
    const v3, 0x10408f1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 905
    .local v9, "disconnect":Ljava/lang/CharSequence;
    const v3, 0x10408f3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 906
    const v3, 0x10408f4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 912
    const-wide/16 v6, 0x0

    invoke-virtual {v13, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 913
    const v3, 0x108075c

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 914
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 915
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 916
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 917
    const/4 v3, -0x2

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 918
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 919
    move-object/from16 v0, p0

    iget-object v3, v0, mSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 921
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.notification"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v14, "noti_intent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v14, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 924
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v3, v9, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 926
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    .line 928
    .local v15, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v3, v0, mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const v6, 0x10408f1

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6, v15, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_c

    .line 855
    .end local v2    # "context":Landroid/content/Context;
    .end local v8    # "deviceName":Ljava/lang/CharSequence;
    .end local v9    # "disconnect":Ljava/lang/CharSequence;
    .end local v11    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v12    # "isDLNAConnected":Z
    .end local v13    # "mBuilder":Landroid/app/Notification$Builder;
    .end local v14    # "noti_intent":Landroid/content/Intent;
    .end local v15    # "notification":Landroid/app/Notification;
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "state":I
    .end local v19    # "subtext":Ljava/lang/CharSequence;
    .end local v20    # "title":Ljava/lang/CharSequence;
    :catchall_11c
    move-exception v3

    :try_start_11d
    monitor-exit v5
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    throw v3

    .line 897
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v8    # "deviceName":Ljava/lang/CharSequence;
    .restart local v11    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v12    # "isDLNAConnected":Z
    .restart local v13    # "mBuilder":Landroid/app/Notification$Builder;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "state":I
    .restart local v19    # "subtext":Ljava/lang/CharSequence;
    .restart local v20    # "title":Ljava/lang/CharSequence;
    :cond_11f
    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v8

    goto :goto_a4
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 2036
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2037
    const-string v2, "WifiDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLog... feature:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2040
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.screenmirroring"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2046
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2047
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2049
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2051
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2053
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_63
    return-void
.end method

.method private rememberedDisplayLocked(Landroid/hardware/display/WifiDisplay;)V
    .registers 4
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 700
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 701
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 702
    invoke-direct {p0}, updateRememberedDisplaysLocked()V

    .line 703
    invoke-direct {p0}, scheduleStatusChangedBroadcastLocked()V

    .line 712
    :goto_13
    iget-object v0, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v0, v0

    if-lez v0, :cond_26

    .line 713
    iget-object v0, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 715
    invoke-virtual {p0}, removeLastConnectedDLNADevice()V

    .line 717
    :cond_26
    return-void

    .line 706
    :cond_27
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    .line 707
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    .line 708
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 709
    invoke-direct {p0}, updateRememberedDisplaysLocked()V

    .line 710
    invoke-direct {p0}, scheduleStatusChangedBroadcastLocked()V

    goto :goto_13
.end method

.method private removeDisplayDeviceLocked()V
    .registers 3

    .prologue
    .line 764
    iget-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_12

    .line 765
    iget-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->destroyLocked()V

    .line 766
    iget-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 769
    :cond_12
    return-void
.end method

.method private renameDisplayDeviceLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 772
    iget-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 773
    iget-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setNameLocked(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 776
    :cond_1b
    return-void
.end method

.method private requestClearConnectedDisplayInfo()V
    .registers 3

    .prologue
    .line 1075
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestClearConnectedDisplayInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$15;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$15;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1087
    return-void
.end method

.method private requestDisableWiFiP2P()V
    .registers 3

    .prologue
    .line 251
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisableWiFiP2P"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$3;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method private requestSaveConnectedDisplayInfo()V
    .registers 3

    .prologue
    .line 1092
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestSaveConnectedDisplayInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$16;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$16;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1104
    return-void
.end method

.method private scheduleDLNADisconnectReqBroadcastLocked()V
    .registers 3

    .prologue
    .line 812
    iget-boolean v0, p0, mPendingDLNADisconnectReqBroadcast:Z

    if-nez v0, :cond_d

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingDLNADisconnectReqBroadcast:Z

    .line 814
    iget-object v0, p0, mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    .line 816
    :cond_d
    return-void
.end method

.method private scheduleStartFloatingIconBroadcastLocked()V
    .registers 3

    .prologue
    .line 796
    iget-boolean v0, p0, mPendingStartFloatingIconBroadcast:Z

    if-nez v0, :cond_d

    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingStartFloatingIconBroadcast:Z

    .line 798
    iget-object v0, p0, mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    .line 800
    :cond_d
    return-void
.end method

.method private scheduleStatusChangedBroadcastLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 780
    iget-boolean v0, p0, mPendingStatusChangeBroadcast:Z

    if-nez v0, :cond_f

    .line 781
    iput-boolean v1, p0, mPendingStatusChangeBroadcast:Z

    .line 782
    iget-object v0, p0, mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    .line 784
    :cond_f
    return-void
.end method

.method private scheduleStopFloatingIconBroadcastLocked()V
    .registers 3

    .prologue
    .line 804
    iget-boolean v0, p0, mPendingStopFloatingIconBroadcast:Z

    if-nez v0, :cond_d

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingStopFloatingIconBroadcast:Z

    .line 806
    iget-object v0, p0, mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    .line 808
    :cond_d
    return-void
.end method

.method private scheduleUpdateNotificationLocked()V
    .registers 3

    .prologue
    .line 788
    iget-boolean v0, p0, mPendingNotificationUpdate:Z

    if-nez v0, :cond_d

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingNotificationUpdate:Z

    .line 790
    iget-object v0, p0, mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    .line 792
    :cond_d
    return-void
.end method

.method private sendDisplayEventToExtendedListener(II)V
    .registers 5
    .param p1, "param"    # I
    .param p2, "event"    # I

    .prologue
    .line 1062
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$14;-><init>(Lcom/android/server/display/WifiDisplayAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1070
    return-void
.end method

.method private updateDisplaysLocked()V
    .registers 18

    .prologue
    .line 610
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    .local v12, "displays":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    new-array v0, v2, [Z

    move-object/from16 v16, v0

    .line 613
    .local v16, "remembered":[Z
    move-object/from16 v0, p0

    iget-object v9, v0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .local v9, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1f
    if-ge v14, v15, :cond_70

    aget-object v11, v9, v14

    .line 614
    .local v11, "d":Landroid/hardware/display/WifiDisplay;
    const/4 v10, 0x0

    .line 615
    .local v10, "available":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_25
    move-object/from16 v0, p0

    iget-object v2, v0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    if-ge v13, v2, :cond_3b

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v2, v2, v13

    invoke-virtual {v11, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 617
    const/4 v10, 0x1

    aput-boolean v10, v16, v13

    .line 621
    :cond_3b
    if-nez v10, :cond_4e

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v11, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_4e
    :goto_4e
    add-int/lit8 v14, v14, 0x1

    goto :goto_1f

    .line 615
    :cond_51
    add-int/lit8 v13, v13, 0x1

    goto :goto_25

    .line 629
    :cond_54
    new-instance v1, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 639
    .end local v10    # "available":Z
    .end local v11    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v13    # "i":I
    :cond_70
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_71
    move-object/from16 v0, p0

    iget-object v2, v0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    if-ge v13, v2, :cond_a7

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v11, v2, v13

    .line 644
    .restart local v11    # "d":Landroid/hardware/display/WifiDisplay;
    new-instance v1, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v6

    aget-boolean v7, v16, v13

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 647
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 648
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    .line 655
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v11    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_a7
    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p0

    iput-object v2, v0, mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 656
    return-void
.end method

.method private updateRememberedDLNADevice()V
    .registers 4

    .prologue
    .line 1955
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "updateRememberedDLNADevice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    iput-object v0, p0, mLastConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    .line 1958
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRememberedDLNADevice mLastConnectedDLNADevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mLastConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    return-void
.end method

.method private updateRememberedDisplaysLocked()V
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 660
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 661
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 662
    invoke-direct {p0}, updateDisplaysLocked()V

    .line 663
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFeatureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAvailableDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRememberedDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingStatusChangeBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mPendingStatusChangeBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingNotificationUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mPendingNotificationUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportsProtectedBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mSupportsProtectedBuffers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-nez v0, :cond_12f

    .line 183
    const-string/jumbo v0, "mDisplayController=null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    :goto_12e
    return-void

    .line 185
    :cond_12f
    const-string/jumbo v0, "mDisplayController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v2, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 187
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 188
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v3, ""

    const-wide/16 v4, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    goto :goto_12e
.end method

.method public getDLNADeviceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1891
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_b

    .line 1892
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v0}, Landroid/hardware/display/DLNADevice;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 1894
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDLNADeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1884
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_b

    .line 1885
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v0}, Landroid/hardware/display/DLNADevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 1887
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDLNADeviceUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1898
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_b

    .line 1899
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v0}, Landroid/hardware/display/DLNADevice;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 1901
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDLNAType()I
    .registers 2

    .prologue
    .line 1905
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_b

    .line 1906
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v0}, Landroid/hardware/display/DLNADevice;->getDLNAType()I

    move-result v0

    .line 1908
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getLastConnectedDLNADevice()Landroid/hardware/display/DLNADevice;
    .registers 4

    .prologue
    .line 1943
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "getLastConnectedDLNADevice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastConnectedDLNADevice mLastConnectedDLNADevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mLastConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v0, p0, mLastConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    return-object v0
.end method

.method public getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;
    .registers 5
    .param p1, "cancel"    # Z

    .prologue
    .line 2014
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastConnectedDisplay cancel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    if-eqz p1, :cond_38

    .line 2019
    iget-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_38

    .line 2021
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    .line 2022
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2023
    invoke-direct {p0}, updateRememberedDisplaysLocked()V

    .line 2024
    invoke-direct {p0}, scheduleStatusChangedBroadcastLocked()V

    .line 2025
    const/4 v0, 0x0

    iput-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2028
    :cond_38
    iget-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getScreenSharingStatus()I
    .registers 2

    .prologue
    .line 1864
    iget v0, p0, mScreenSharingStatus:I

    return v0
.end method

.method public getWifiDisplayBridgeStatus()I
    .registers 2

    .prologue
    .line 1989
    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    if-eqz v0, :cond_b

    .line 1990
    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController;->getWifiDisplayBridgeStatus()I

    move-result v0

    .line 1992
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;
    .registers 10

    .prologue
    .line 542
    iget-object v0, p0, mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-nez v0, :cond_1b

    .line 545
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    iget v1, p0, mFeatureState:I

    iget v2, p0, mScanState:I

    iget v3, p0, mActiveDisplayState:I

    iget-object v4, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v5, p0, mDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v6, p0, mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    iget v7, p0, mConnectState:I

    iget v8, p0, mQoSLevel:I

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;II)V

    iput-object v0, p0, mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 559
    :cond_1b
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWifiDisplayStatusLocked: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 568
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connWithPinSupported: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDLNADeviceConnected()Z
    .registers 2

    .prologue
    .line 1878
    iget-object v0, p0, mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDongleRenameAvailableLocked()Z
    .registers 3

    .prologue
    .line 579
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isDongleRenameAvailableLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct {p0}, IsRunningIpRemoteDisplay()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    if-eqz v0, :cond_19

    .line 582
    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController;->isDongleRenameAvailable()Z

    move-result v0

    .line 584
    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isDongleRenameAvailable()Z

    move-result v0

    goto :goto_18
.end method

.method public isKDDIServiceConnected()Z
    .registers 3

    .prologue
    .line 1966
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isKDDIServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v0, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_13

    .line 1970
    iget-object v0, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isKDDIServiceConnected()Z

    move-result v0

    .line 1972
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isSinkAvailable()Z
    .registers 2

    .prologue
    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method public isSourceAvailable()Z
    .registers 2

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public isWfdConnected()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2072
    const-string v3, "WifiDisplayAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWfdConnected : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, mSinkState:I

    iget v5, p0, mSourceState:I

    add-int/2addr v0, v5

    if-lez v0, :cond_2b

    move v0, v1

    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget v0, p0, mSinkState:I

    iget v3, p0, mSourceState:I

    add-int/2addr v0, v3

    if-lez v0, :cond_2d

    :goto_2a
    return v1

    :cond_2b
    move v0, v2

    .line 2072
    goto :goto_18

    :cond_2d
    move v1, v2

    .line 2073
    goto :goto_2a
.end method

.method public isWfdEngineRunning()Z
    .registers 3

    .prologue
    .line 1848
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isWfdEngineRunning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    if-eqz v0, :cond_13

    .line 1852
    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController;->isWfdEngineRunning()Z

    move-result v0

    .line 1854
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .registers 2

    .prologue
    .line 1980
    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    if-eqz v0, :cond_b

    .line 1981
    iget-object v0, p0, mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController;->isWifiDisplayBridgeAvailable()Z

    move-result v0

    .line 1983
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 3

    .prologue
    .line 1808
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "notifyEnterHomeSyncApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$24;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$24;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1823
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .registers 3

    .prologue
    .line 1828
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "notifyExitHomeSyncApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$25;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$25;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1843
    return-void
.end method

.method public registerLocked()V
    .registers 3

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 196
    invoke-direct {p0}, updateRememberedDisplaysLocked()V

    .line 198
    iget-object v0, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v0, v0

    if-lez v0, :cond_16

    .line 199
    iget-object v0, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 202
    :cond_16
    invoke-direct {p0}, updateRememberedDLNADevice()V

    .line 203
    iget-object v0, p0, mLastConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_2c

    iget-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_2c

    .line 204
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "mLastConnectedDLNADevice is existed, remove mLastRememberedDisplay."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 210
    :cond_2c
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method public removeLastConnectedDLNADevice()V
    .registers 3

    .prologue
    .line 1928
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "removeLastConnectedDLNADevice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v0, p0, mLastConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_19

    .line 1933
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->forgetRememberedDLNADevice()V

    .line 1934
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1935
    const/4 v0, 0x0

    iput-object v0, p0, mLastConnectedDLNADevice:Landroid/hardware/display/DLNADevice;

    .line 1938
    :cond_19
    return-void
.end method

.method public renameDongleLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 593
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "renameDongleLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->renameDongle(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public requestConnectLocked(ILjava/lang/String;)V
    .registers 6
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectingMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$7;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method

.method public requestConnectLocked(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z

    .prologue
    .line 352
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectingMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPendingRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter$8;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method public requestConnectLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$6;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method

.method public requestConnectWithPinLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1688
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectWithPinLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$18;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1702
    return-void
.end method

.method public requestDisableLocked()V
    .registers 3

    .prologue
    .line 1772
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisableLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$22;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$22;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1786
    return-void
.end method

.method public requestDisconnectForMirroringSwitching()V
    .registers 3

    .prologue
    .line 436
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisconnectForMirroringSwitching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$12;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$12;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    return-void
.end method

.method public requestDisconnectLocked()V
    .registers 3

    .prologue
    .line 411
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisconnectLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$11;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method

.method public requestEnableLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 8
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    .line 1707
    const-string v2, "WifiDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestEnableLocked deviceType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    move-object v0, p1

    .line 1711
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move v1, p2

    .line 1712
    .local v1, "type":I
    const/4 v2, 0x1

    iput v2, p0, mActiveDisplayState:I

    .line 1713
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/WifiDisplayAdapter$19;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$19;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1724
    return-void
.end method

.method public requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 1729
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEnableLocked ipAddr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$20;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter$20;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1743
    return-void
.end method

.method public requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 19
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    .line 1749
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEnableLocked ipAddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isPendingRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$21;

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/WifiDisplayAdapter$21;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    return-void
.end method

.method public requestForgetLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 495
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestForgetLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 499
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 500
    invoke-direct {p0}, updateRememberedDisplaysLocked()V

    .line 501
    invoke-direct {p0}, scheduleStatusChangedBroadcastLocked()V

    .line 504
    :cond_2c
    iget-object v0, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_3f

    iget-object v0, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 505
    invoke-virtual {p0}, requestDisconnectLocked()V

    .line 507
    :cond_3f
    return-void
.end method

.method public requestPauseLocked()V
    .registers 3

    .prologue
    .line 369
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestPauseLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$9;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$9;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method

.method public requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 454
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRenameLocked: address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", alias="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz p2, :cond_37

    .line 458
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 459
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 460
    :cond_36
    const/4 p2, 0x0

    .line 464
    :cond_37
    iget-object v1, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v8

    .line 465
    .local v8, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v8, :cond_8a

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 469
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v3, p2

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 478
    .end local v8    # "display":Landroid/hardware/display/WifiDisplay;
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v1, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 479
    iget-object v1, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 480
    invoke-direct {p0}, updateRememberedDisplaysLocked()V

    .line 481
    invoke-direct {p0}, scheduleStatusChangedBroadcastLocked()V

    .line 485
    :cond_6d
    :goto_6d
    iget-object v1, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_89

    iget-object v1, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 486
    iget-object v1, p0, mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, renameDisplayDeviceLocked(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, scheduleUpdateNotificationLocked()V

    .line 491
    :cond_89
    return-void

    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v8    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_8a
    move-object v0, v8

    .end local v8    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v0    # "display":Landroid/hardware/display/WifiDisplay;
    goto :goto_6d
.end method

.method public requestResumeLocked()V
    .registers 3

    .prologue
    .line 390
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestResumeLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$10;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$10;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public requestStartScanLocked()V
    .registers 3

    .prologue
    .line 268
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStartScanLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$4;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public requestStopScanLocked()V
    .registers 3

    .prologue
    .line 299
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStopScanLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$5;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method public restartWifiDisplayLocked()V
    .registers 3

    .prologue
    .line 1791
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "restartWifiDisplayLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$23;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$23;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1803
    return-void
.end method

.method public setLastConnectedDLNADevice(Landroid/hardware/display/DLNADevice;)V
    .registers 4
    .param p1, "dlnaDevice"    # Landroid/hardware/display/DLNADevice;

    .prologue
    .line 1914
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "setLastConnectedDLNADevice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberDLNADevice(Landroid/hardware/display/DLNADevice;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1918
    iget-object v0, p0, mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1919
    invoke-direct {p0}, updateRememberedDLNADevice()V

    .line 1921
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1923
    return-void
.end method

.method public setParameter(IILjava/lang/String;)I
    .registers 7
    .param p1, "type"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # Ljava/lang/String;

    .prologue
    .line 2002
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParameter type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const/16 v0, 0x1388

    if-ne p1, v0, :cond_36

    .line 2005
    invoke-static {p2, p3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    move-result v0

    .line 2008
    :goto_35
    return v0

    :cond_36
    const/4 v0, -0x1

    goto :goto_35
.end method

.method public setScanningChannelLocked(I)V
    .registers 4
    .param p1, "requestedChannel"    # I

    .prologue
    .line 602
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "setScanChannelLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->setScanningChannel(I)V

    .line 606
    return-void
.end method

.method public setScreenSharingStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 1871
    iput p1, p0, mScreenSharingStatus:I

    .line 1872
    iget v0, p0, mScreenSharingStatus:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, sendDisplayEventToExtendedListener(II)V

    .line 1874
    return-void
.end method

.method public setSinkState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 2056
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSinkState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget v0, p0, mSinkState:I

    if-eq p1, v0, :cond_1f

    if-gez p1, :cond_20

    .line 2061
    :cond_1f
    :goto_1f
    return-void

    .line 2060
    :cond_20
    iput p1, p0, mSinkState:I

    goto :goto_1f
.end method

.method public setSourceState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 2064
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSourceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget v0, p0, mSourceState:I

    if-eq p1, v0, :cond_1f

    if-gez p1, :cond_20

    .line 2069
    :cond_1f
    :goto_1f
    return-void

    .line 2068
    :cond_20
    iput p1, p0, mSourceState:I

    goto :goto_1f
.end method

.method public turnOffPeriodicWifiScan(Z)V
    .registers 7
    .param p1, "off"    # Z

    .prologue
    .line 1565
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1566
    .local v2, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1567
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1568
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1569
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1570
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "stop"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1571
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1572
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1575
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2e
    return-void
.end method
