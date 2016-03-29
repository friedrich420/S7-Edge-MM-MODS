.class public Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/WifiP2pController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;

.field private mP2pConnected:Z

.field private mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "WifiP2pController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;

    .line 47
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 48
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 49
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 51
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pConnected:Z

    .line 57
    const-string v1, "wifip2p"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 60
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pConnected:Z

    return v0
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method

.method public getConnectedAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 146
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, ""

    goto :goto_0
.end method

.method public getDevices()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    .line 92
    .local v1, "ownerDev":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDrawable(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "supportMirrorSink":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->isWfdConnected()Z

    move-result v1

    .line 103
    .local v1, "wfdConnected":Z
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->getConnectedAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getIconResource(Landroid/net/wifi/p2p/WifiP2pDevice;Z)I

    move-result v2

    return v2
.end method

.method public isWfdConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWifiP2pConnected()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pConnected:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    const-string v2, "WifiP2pController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 118
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 119
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pConnected:Z

    .line 120
    const-string v2, "p2pGroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;->sendEmptyMessage(I)Z

    .line 130
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-void

    .line 124
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pConnected:Z

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    goto :goto_0
.end method
