.class final Lcom/android/server/display/IpRemoteDisplayController;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;,
        Lcom/android/server/display/IpRemoteDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "IpRemoteDisplayController"


# instance fields
.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mBridgeReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectState:I

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mContext:Landroid/content/Context;

.field private mDisconnectByUser:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

.field private mPrevNativeDisposeCompleted:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRequestPendingSetup:Z

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private final mSupportsProtectedBuffers:Z

.field private mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayOnSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/IpRemoteDisplayController$Listener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v6, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 104
    iput-object v6, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 105
    iput-boolean v5, p0, mRemoteDisplayConnected:Z

    .line 107
    iput-boolean v5, p0, isRunningHomeSync:Z

    .line 109
    iput-boolean v5, p0, mWifiDisplayOnSetting:Z

    .line 117
    const/4 v3, 0x1

    iput-boolean v3, p0, mPrevNativeDisposeCompleted:Z

    .line 118
    iput-boolean v5, p0, mHDMIConnected:Z

    .line 122
    const/4 v3, -0x1

    iput v3, p0, mConnectState:I

    .line 189
    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$2;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, mBridgeReceiver:Landroid/content/BroadcastReceiver;

    .line 859
    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$13;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$13;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, mRtspTimeout:Ljava/lang/Runnable;

    .line 125
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 127
    iput-object p3, p0, mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .line 129
    new-instance v3, Landroid/media/WFDUibcManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, mBridgeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 141
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 142
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$1;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/display/IpRemoteDisplayController$1;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 170
    .local v2, "settingsObserver":Landroid/database/ContentObserver;
    const-string/jumbo v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, mSupportsProtectedBuffers:Z

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-boolean v0, p0, mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, mRequestPendingSetup:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-boolean v0, p0, mDisconnectByUser:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, mDisconnectByUser:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, disableWifiDisplay(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-object v0, p0, mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/IpRemoteDisplayController;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, sendDisplayEventToExtendedListener(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/RemoteDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/IpRemoteDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget v0, p0, mConnectState:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, requestScreenMirroringEnable(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-object v0, p0, mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, requestPopup(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-object v0, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 78
    invoke-direct {p0, p1}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p6}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, launchWfdPlayerByWBS(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, enableWifiDisplay(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/IpRemoteDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    invoke-direct {p0}, reportFeatureState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-boolean v0, p0, mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/IpRemoteDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    invoke-direct {p0}, disconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 78
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 78
    iput-object p1, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .registers 22
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I
    .param p6, "devicetype"    # I

    .prologue
    .line 661
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " surface: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " display: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flags: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-nez p1, :cond_47

    if-nez p2, :cond_47

    .line 663
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, sendDisplayEventToExtendedListener(II)V

    .line 666
    :cond_47
    iget-object v1, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    move-object/from16 v0, p2

    if-ne v1, v0, :cond_69

    iget v1, p0, mAdvertisedDisplayWidth:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_69

    iget v1, p0, mAdvertisedDisplayHeight:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_69

    iget v1, p0, mAdvertisedDisplayFlags:I

    move/from16 v0, p5

    if-eq v1, v0, :cond_9e

    .line 671
    :cond_69
    iget-object v5, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 672
    .local v5, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 673
    .local v3, "oldSurface":Landroid/view/Surface;
    iget v7, p0, mAdvertisedDisplayWidth:I

    .line 674
    .local v7, "oldDisplayWidth":I
    iget v8, p0, mAdvertisedDisplayHeight:I

    .line 675
    .local v8, "oldDisplayHeight":I
    move-object/from16 v0, p1

    iput-object v0, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 676
    move-object/from16 v0, p2

    iput-object v0, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 677
    move/from16 v0, p3

    iput v0, p0, mAdvertisedDisplayWidth:I

    .line 678
    move/from16 v0, p4

    iput v0, p0, mAdvertisedDisplayHeight:I

    .line 679
    move/from16 v0, p5

    iput v0, p0, mAdvertisedDisplayFlags:I

    .line 681
    move/from16 v9, p6

    .line 682
    .local v9, "connectedMode":I
    iget-boolean v10, p0, mRequestPendingSetup:Z

    .line 684
    .local v10, "requestPendingSetup":Z
    iget-object v14, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$11;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/display/IpRemoteDisplayController$11;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIIZIII)V

    invoke-virtual {v14, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    .end local v3    # "oldSurface":Landroid/view/Surface;
    .end local v5    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v7    # "oldDisplayWidth":I
    .end local v8    # "oldDisplayHeight":I
    .end local v9    # "connectedMode":I
    .end local v10    # "requestPendingSetup":Z
    :cond_9e
    return-void
.end method

.method private computeFeatureState()I
    .registers 2

    .prologue
    .line 524
    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 10
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v5, 0x0

    .line 735
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method private disableWifiDisplay(I)V
    .registers 6
    .param p1, "connectedMode"    # I

    .prologue
    .line 466
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableWifiDisplay currenct mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :try_start_19
    invoke-direct {p0}, disconnect()V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 474
    :goto_1c
    return-void

    .line 470
    :catch_1d
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1c
.end method

.method private declared-synchronized disconnect()V
    .registers 3

    .prologue
    .line 621
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_59

    iget-boolean v0, p0, mPrevNativeDisposeCompleted:Z

    if-eqz v0, :cond_59

    .line 623
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Disconnect is called with disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, sendDisplayEventToExtendedListener(II)V

    .line 625
    iget-object v0, p0, mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnecting()V

    .line 628
    iget-object v0, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    .line 629
    iget-object v0, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, broadcastWfdState(I)V

    .line 632
    iget v0, p0, mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_33

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, v0}, requestScreenMirroringEnable(Z)V

    .line 637
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, mPrevNativeDisposeCompleted:Z

    .line 638
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, mPrevNativeDisposeCompleted:Z

    .line 640
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "mRemoteDisplay.dispose() is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, mRemoteDisplayInterface:Ljava/lang/String;

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, mRemoteDisplayConnected:Z

    .line 644
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 646
    invoke-direct {p0}, unadvertiseDisplay()V

    .line 652
    :cond_59
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_64

    iget-object v0, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_64

    .line 653
    invoke-direct {p0}, unadvertiseDisplay()V

    .line 655
    :cond_64
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "finish disconnect : exit synchronized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6e

    .line 656
    monitor-exit p0

    return-void

    .line 621
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableWifiDisplay(ILjava/net/InetAddress;)V
    .registers 6
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 576
    if-gez p1, :cond_a

    .line 577
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Failed to enable WifiDisplay "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_9
    return-void

    .line 581
    :cond_a
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_20

    .line 582
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    .line 588
    move v0, p1

    .line 590
    .local v0, "reqDevType":I
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$10;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/display/IpRemoteDisplayController$10;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 584
    .end local v0    # "reqDevType":I
    :cond_20
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridge is null, then failed to enable WifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_d

    .line 286
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v2, "enableWifiDisplay mRemoteDisplay already existed."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_c
    return-void

    .line 290
    :cond_d
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableWifiDisplay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput p3, p0, mConnectState:I

    .line 294
    const/4 v0, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, sendDisplayEventToExtendedListener(II)V

    .line 296
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5f

    .line 297
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 298
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget v0, p0, mConnectState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_55

    .line 299
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 300
    :cond_55
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, mConnectState:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 303
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_5f
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$6;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$6;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    invoke-static {v0, v2}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, broadcastWfdState(I)V

    .line 346
    iget-object v0, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->start()Z

    .line 348
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEnable processing init option :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-nez p4, :cond_9b

    .line 352
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 353
    .local v7, "initParam":Lorg/json/JSONObject;
    iget v0, p0, mConnectState:I

    invoke-direct {p0, v7, v0}, requestDataSetting(Lorg/json/JSONObject;I)V

    .line 354
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    .line 357
    .end local v7    # "initParam":Lorg/json/JSONObject;
    :cond_9b
    iget-boolean v0, p0, mRequestPendingSetup:Z

    if-eqz v0, :cond_bd

    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_bd

    .line 358
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 359
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    iget v0, p0, mConnectState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_b3

    .line 360
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 361
    :cond_b3
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    iget v6, p0, mConnectState:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 364
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mRemoteDisplayInterface:Ljava/lang/String;

    .line 365
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDIsplayInterface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, mRemoteDisplayInterface:Ljava/lang/String;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$7;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$7;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v0

    iput-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 454
    iget-boolean v0, p0, mRequestPendingSetup:Z

    if-eqz v0, :cond_12f

    .line 455
    const-string v0, "IpRemoteDisplayController"

    const-string v2, "Request PendingSetup. Skip to set RTSP timeout."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, mRequestPendingSetup:Z

    goto/16 :goto_c

    .line 459
    :cond_12f
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mRtspTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c
.end method

.method private handleConnectionFailure(Z)V
    .registers 6
    .param p1, "b"    # Z

    .prologue
    .line 725
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :try_start_7
    invoke-direct {p0}, disconnect()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_a} :catch_b

    .line 732
    :goto_a
    return-void

    .line 728
    :catch_b
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_a
.end method

.method private launchWfdPlayer(ILjava/net/InetAddress;)V
    .registers 6
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 478
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchWfdPlayer deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/IpRemoteDisplayController$8;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method private launchWfdPlayerByWBS(ILjava/net/InetAddress;)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 605
    if-ltz p1, :cond_4

    if-nez p2, :cond_c

    .line 606
    :cond_4
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_b
    return-void

    .line 610
    :cond_c
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_1a

    .line 611
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSinkState(I)V

    .line 617
    invoke-direct {p0, p1, p2}, launchWfdPlayer(ILjava/net/InetAddress;)V

    goto :goto_b

    .line 613
    :cond_1a
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridge is null, then failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private reportFeatureState()V
    .registers 4

    .prologue
    .line 513
    const-string v1, "IpRemoteDisplayController"

    const-string/jumbo v2, "reportFeatureState"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-direct {p0}, computeFeatureState()I

    move-result v0

    .line 515
    .local v0, "featureState":I
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$9;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 521
    return-void
.end method

.method private requestDataSetting(Lorg/json/JSONObject;I)V
    .registers 20
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "deviceType"    # I

    .prologue
    .line 764
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestDataSetting static : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    packed-switch p2, :pswitch_data_108

    .line 806
    :pswitch_1e
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    .line 808
    :cond_32
    :goto_32
    return-void

    .line 767
    :pswitch_33
    const/16 v3, 0x500

    const/16 v4, 0x2d0

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_32

    .line 771
    :pswitch_48
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 772
    .local v16, "wm":Landroid/view/WindowManager;
    if-eqz v16, :cond_32

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 773
    const/16 v3, 0x500

    .line 774
    .local v3, "wmWidth":I
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 775
    .local v4, "wmHeight":I
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device\'s window height:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    sparse-switch v4, :sswitch_data_122

    .line 783
    const/16 v4, 0x2d0

    .line 786
    :goto_85
    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_32

    .line 780
    :sswitch_96
    const/16 v4, 0x320

    .line 781
    goto :goto_85

    .line 790
    .end local v3    # "wmWidth":I
    .end local v4    # "wmHeight":I
    .end local v16    # "wm":Landroid/view/WindowManager;
    :pswitch_99
    const/16 v7, 0x780

    const/16 v8, 0x438

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_32

    .line 793
    :pswitch_ae
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_32

    .line 796
    :pswitch_c4
    const/16 v7, 0x356

    const/16 v8, 0x1e0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_32

    .line 799
    :pswitch_db
    const/16 v7, 0x2d0

    const/16 v8, 0x1e0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xa

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_32

    .line 803
    :pswitch_f2
    const/16 v7, 0x780

    const/16 v8, 0x438

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_32

    .line 765
    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_48
        :pswitch_33
        :pswitch_99
        :pswitch_ae
        :pswitch_c4
        :pswitch_db
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_f2
    .end packed-switch

    .line 777
    :sswitch_data_122
    .sparse-switch
        0x320 -> :sswitch_96
        0x640 -> :sswitch_96
    .end sparse-switch
.end method

.method private requestPopup(I)V
    .registers 6
    .param p1, "cause"    # I

    .prologue
    .line 532
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 534
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    .line 539
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_16
    return-void

    .line 536
    :catch_17
    move-exception v0

    .line 537
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IpRemoteDisplayController"

    const-string/jumbo v3, "unable to start WfdBroker activity "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private requestScreenMirroringEnable(Z)V
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 887
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 888
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "ScreenMirroring_enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 891
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    const-string v1, "PackageName"

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 895
    return-void
.end method

.method private sendDisplayEventToExtendedListener(II)V
    .registers 5
    .param p1, "param"    # I
    .param p2, "event"    # I

    .prologue
    .line 811
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController$12;-><init>(Lcom/android/server/display/IpRemoteDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 818
    return-void
.end method

.method private setParamData(Lorg/json/JSONObject;IIIZZIZZI)V
    .registers 15
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "use_hdcp"    # Z
    .param p6, "use_audio"    # Z
    .param p7, "qoslevel"    # I
    .param p8, "use_uibc"    # Z
    .param p9, "use_pdm"    # Z
    .param p10, "deviceType"    # I

    .prologue
    .line 742
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParamData deviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :try_start_19
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 745
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 746
    const-string/jumbo v1, "fps"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 747
    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 748
    const-string/jumbo v1, "use_audio"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 749
    const-string/jumbo v1, "qoslevel"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 750
    const-string/jumbo v1, "use_uibc"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 751
    const-string/jumbo v1, "use_pdm"

    invoke-virtual {p1, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 752
    const-string/jumbo v1, "device_type"

    invoke-virtual {p1, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 753
    const-string/jumbo v1, "supportsProtectedBuffers"

    iget-boolean v2, p0, mSupportsProtectedBuffers:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 754
    iget-boolean v1, p0, mRequestPendingSetup:Z

    if-eqz v1, :cond_63

    .line 755
    const-string/jumbo v1, "pending_setup"

    iget-boolean v2, p0, mRequestPendingSetup:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_63} :catch_64

    .line 760
    :cond_63
    :goto_63
    return-void

    .line 757
    :catch_64
    move-exception v0

    .line 758
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "IpRemoteDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method private tryCommunication(I)V
    .registers 5
    .param p1, "requestType"    # I

    .prologue
    .line 565
    move v0, p1

    .line 567
    .local v0, "requestDevType":I
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_b

    .line 568
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSource(I)I

    .line 572
    :goto_a
    return-void

    .line 570
    :cond_b
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is not avaiable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 6
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "requestType"    # I

    .prologue
    .line 545
    move v0, p2

    .line 546
    .local v0, "requestDevType":I
    if-eqz p1, :cond_13

    .line 547
    iget-object v1, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_9

    .line 548
    iput-object p1, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 555
    :cond_9
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_1b

    .line 556
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSink(Landroid/net/wifi/p2p/WifiP2pDevice;I)I

    .line 561
    :goto_12
    return-void

    .line 551
    :cond_13
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wrong sinkDevice info. Check the parameter..."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 558
    :cond_1b
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private unadvertiseDisplay()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 721
    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 722
    return-void
.end method


# virtual methods
.method public broadcastWfdState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 873
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v0, "Intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 877
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 883
    return-void
.end method

.method public connectWfdBridgeServer(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "inet"    # Ljava/net/InetAddress;

    .prologue
    .line 898
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "connectWfdBridgeServer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object v0, p1

    .line 902
    .local v0, "inetAddr":Ljava/net/InetAddress;
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-nez v1, :cond_18

    .line 903
    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;)V

    iput-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 904
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->connect()V

    .line 906
    :cond_18
    return-void
.end method

.method public disconnectWfdBridgeServer()V
    .registers 3

    .prologue
    .line 909
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "disconnectWfdBridgeServer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_1c

    .line 911
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->disconnect()V

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 918
    :goto_1b
    return-void

    .line 916
    :cond_1c
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer is already null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getWifiDisplayBridgeStatus()I
    .registers 5

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 942
    .local v0, "ret":I
    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_e

    iget-object v1, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 943
    const/4 v0, 0x1

    .line 946
    :cond_e
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWifiDisplayBridgeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return v0
.end method

.method public isDongleRenameAvailable()Z
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_b

    .line 844
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->isDongleRenameAvailable()Z

    move-result v0

    .line 846
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWfdEngineRunning()Z
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_b

    .line 952
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    .line 954
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .registers 3

    .prologue
    .line 930
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_15

    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 931
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is available"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v0, 0x1

    .line 935
    :goto_14
    return v0

    .line 934
    :cond_15
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is unavailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public notifyBridgeStatus(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .prologue
    .line 958
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, sendDisplayEventToExtendedListener(II)V

    .line 959
    return-void
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 3

    .prologue
    .line 850
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Entering HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, isRunningHomeSync:Z

    .line 852
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .registers 3

    .prologue
    .line 855
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Exiting HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, isRunningHomeSync:Z

    .line 857
    return-void
.end method

.method public requestDisableWifiDisplay(I)I
    .registers 4
    .param p1, "connectedMode"    # I

    .prologue
    .line 271
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/IpRemoteDisplayController$5;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public requestEnableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 5
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    .line 253
    packed-switch p2, :pswitch_data_1a

    .line 265
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Wrong device Type! Check your device type"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_a
    return-void

    .line 256
    :pswitch_b
    iget-object v0, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 259
    :pswitch_11
    invoke-direct {p0, p1, p2}, tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    goto :goto_a

    .line 262
    :pswitch_15
    invoke-direct {p0, p2}, tryCommunication(I)V

    goto :goto_a

    .line 253
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$3;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 18
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    .line 238
    iget-object v9, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$4;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p5

    move/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/IpRemoteDisplayController$4;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public requestPause()V
    .registers 3

    .prologue
    .line 821
    iget v0, p0, mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 823
    const/4 v0, 0x0

    invoke-direct {p0, v0}, requestScreenMirroringEnable(Z)V

    .line 826
    :cond_a
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_13

    .line 827
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 829
    :cond_13
    return-void
.end method

.method public requestResume()V
    .registers 3

    .prologue
    .line 832
    iget v0, p0, mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 834
    const/4 v0, 0x1

    invoke-direct {p0, v0}, requestScreenMirroringEnable(Z)V

    .line 837
    :cond_a
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_13

    .line 838
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 840
    :cond_13
    return-void
.end method

.method public updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4
    .param p1, "client"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 921
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_a

    .line 922
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 927
    :goto_9
    return-void

    .line 923
    :cond_a
    iget-object v0, p0, mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-nez v0, :cond_17

    .line 924
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "updateClientDevice mWfdBridgeServer is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 926
    :cond_17
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "updateClientDevice SEC_PRODUCT_FEATURE_WLAN_WIFIDISPLAY_SINK is false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
