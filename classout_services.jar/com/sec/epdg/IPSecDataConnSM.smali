.class public Lcom/sec/epdg/IPSecDataConnSM;
.super Lcom/android/internal/util/StateMachine;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecDataConnSM$1;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;,
        Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;,
        Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    }
.end annotation


# static fields
.field private static final CHECK_HO_W2L_DELAY:I = 0x1388

.field private static final DPD_DELAYED_MASSAGE_TIMEOUT:I = 0x1

.field private static final MAX_DNS_AND_L2W_TIMEOUT:I = 0xea60

.field private static final MAX_L2W_TIMEOUT:I = 0x4e20

.field private static final MAX_W2L_TIMEOUT:I = 0x27100

.field private static final TAG:Ljava/lang/String; = "[IPSECDATACONNSM]"

.field private static mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# instance fields
.field private final mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSsid:Ljava/lang/String;

.field private final mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

.field private final mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

.field private final mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

.field private final mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

.field private final mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

.field private final mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

.field private final mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

.field private mIsHandOver:Z

.field private mIsNeededL2WHO:Z

.field private mIsW2LRequested:Z

.field private mIsWifiConnected:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

.field private mRetryCount:I

.field private mRilCid:I

.field private final mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

.field private final mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

.field private final mePdgHandler:Landroid/os/Handler;

.field private final smHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lcom/sec/epdg/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/IWlanState;-><init>()V

    sput-object v0, mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p4, "hdlr"    # Landroid/os/Handler;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    invoke-direct {p0, p1, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 60
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    .line 61
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    .line 63
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    .line 65
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    .line 66
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    .line 68
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    .line 70
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    .line 71
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    .line 73
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    .line 83
    iput-boolean v3, p0, mIsHandOver:Z

    .line 84
    iput-boolean v3, p0, mIsW2LRequested:Z

    .line 85
    iput-boolean v3, p0, mIsWifiConnected:Z

    .line 86
    iput-boolean v3, p0, mIsNeededL2WHO:Z

    .line 194
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, smHandler:Landroid/os/Handler;

    .line 195
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 196
    iput-object p4, p0, mePdgHandler:Landroid/os/Handler;

    .line 198
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/IPSecAdapter;

    move-result-object v1

    iput-object v1, p0, mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    .line 199
    iput-object p3, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 200
    invoke-direct {p0}, initConnectionParams()V

    .line 202
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mCurrentSsid:Ljava/lang/String;

    .line 204
    iget-object v1, p0, mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 205
    iget-object v1, p0, mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 206
    iget-object v1, p0, mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 207
    iget-object v1, p0, mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 208
    iget-object v1, p0, mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 209
    iget-object v1, p0, mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 210
    iget-object v1, p0, mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 211
    iget-object v1, p0, mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 212
    iget-object v1, p0, mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-virtual {p0, v1}, addState(Lcom/android/internal/util/State;)V

    .line 214
    iget-object v1, p0, mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v1}, setInitialState(Lcom/android/internal/util/State;)V

    .line 215
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 216
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 217
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, mNMService:Landroid/os/INetworkManagementService;

    .line 218
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    sput-object v1, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 219
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v1

    sput-object v1, mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 220
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-direct {p0, p1}, configureApnContext(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-direct {p0}, checkDnsRetryRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-direct {p0}, handleConnectRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, updatePermanentFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, informHandoverFailureToRilAndFramework(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-direct {p0}, disconnectEpdgConnection()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-direct {p0, p1}, handleWifiStateChange(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/epdg/IPSecDataConnSM;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, setEpdgInterfaceDropRule(ZI)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-direct {p0}, resetThrottleState()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z
    .registers 4
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, handleTCRules(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/epdg/IPSecDataConnSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget v0, p0, mRilCid:I

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, notifyW2LRegistrant(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, notifyL2WRegistrant(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/epdg/IPSecDataConnSM;III)V
    .registers 4
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, handleEnableEpdgFailure(III)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700()Lcom/sec/epdg/handover/EpdgImsListener;
    .registers 1

    .prologue
    .line 44
    sget-object v0, mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, sendWifiRssiIntentDelayToEpdg(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mePdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-direct {p0}, checkConnection()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-boolean v0, p0, mIsNeededL2WHO:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/sec/epdg/IPSecDataConnSM;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, mIsNeededL2WHO:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-boolean v0, p0, mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, removeMessages(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    iget-object v0, p0, mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecDataConnSM;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 44
    invoke-direct {p0}, initConnectionParams()V

    return-void
.end method

.method private checkConnection()V
    .registers 5

    .prologue
    .line 1423
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1424
    .local v0, "conncid":I
    iget-object v1, p0, mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecAdapter;->postCheckConnectionMessage(IILjava/lang/Object;)V

    .line 1425
    return-void
.end method

.method private checkDnsRetryRequired()Z
    .registers 5

    .prologue
    .line 1398
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Enter checkDnsRetryRequired"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    invoke-virtual {p0}, getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleCount(Ljava/lang/String;)I

    move-result v0

    .line 1401
    .local v0, "count":I
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throttle Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const/4 v1, -0x1

    if-ne v1, v0, :cond_36

    .line 1403
    const-string v1, "[IPSECDATACONNSM]"

    const-string/jumbo v2, "mCurrentTimer not correctly updated inside Throttle Manager."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :cond_36
    const/4 v1, 0x5

    if-lt v0, v1, :cond_49

    .line 1406
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "DNS RESET might be REQUIRED.Posting Message to EPDG service for additional checks"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0}, getmRilCid()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgCommands;->postDnsRetryRequest(I)V

    .line 1409
    const/4 v1, 0x1

    .line 1412
    :goto_48
    return v1

    .line 1411
    :cond_49
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Exit checkDnsRetryRequired: DNS RESET NOT REQUIRED"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const/4 v1, 0x0

    goto :goto_48
.end method

.method private configureApnContext(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1453
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1454
    .local v2, "cid":I
    const/4 v0, 0x0

    .line 1457
    .local v0, "apnName":Ljava/lang/String;
    invoke-direct {p0}, initConnectionParams()V

    .line 1462
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_31

    .line 1463
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "apnName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1475
    .restart local v0    # "apnName":Ljava/lang/String;
    :cond_10
    :goto_10
    if-nez v0, :cond_58

    .line 1476
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed Connect request for Cid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(no apnname)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :cond_30
    :goto_30
    return-void

    .line 1464
    :cond_31
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_10

    .line 1465
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1466
    .local v1, "asyncRes":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .line 1467
    .local v3, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    if-eqz v3, :cond_10

    .line 1468
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getApnName()Ljava/lang/String;

    move-result-object v0

    .line 1469
    iget-object v4, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4, v2}, Lcom/sec/epdg/IWlanApnContext;->setmRilCid(I)V

    .line 1470
    iget-object v4, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getIpv6Addr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getIpv4Addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/epdg/IWlanApnContext;->setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1480
    .end local v1    # "asyncRes":Landroid/os/AsyncResult;
    .end local v3    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    :cond_58
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect request is received for cid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v4, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/sec/epdg/IWlanApnContext;->configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, setmRilCid(I)V

    .line 1485
    iget-object v4, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9b

    iget-object v4, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0.0.0.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b1

    :cond_9b
    iget-object v4, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v4, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1490
    :cond_b1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, setIsHandOver(Z)V

    goto/16 :goto_30
.end method

.method private disconnectEpdgConnection()V
    .registers 5

    .prologue
    .line 1416
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1417
    .local v0, "conncid":I
    iget-object v1, p0, mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecAdapter;->postDisconnectMessage(IILjava/lang/Object;)V

    .line 1418
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Moving to Disconnecting State"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v1, p0, mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v1}, deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1420
    return-void
.end method

.method public static getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mApnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p3, "mEpdgHandler"    # Landroid/os/Handler;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 225
    new-instance v0, Lcom/sec/epdg/IPSecDataConnSM;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, <init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)V

    return-object v0
.end method

.method private handleConnectRequest()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1495
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter handleConnectRequest()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1497
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, " No APN settings to drive the State machine in Inactive state. Critical Failure !!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, getmRilCid()I

    move-result v1

    move v4, v3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 1548
    :goto_26
    return v3

    .line 1502
    :cond_27
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {p0}, getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 1505
    invoke-virtual {p0}, isHandOver()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1506
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "HandOver Request Received"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1511
    .local v7, "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 1514
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v4"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1517
    :cond_63
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 1520
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-eq v7, v0, :cond_c4

    .line 1521
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v6"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1528
    :cond_86
    :goto_86
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/epdg/IWlanApnSetting;->setmIpSecIpType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V

    .line 1532
    .end local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    :cond_8f
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v4

    .line 1534
    .local v4, "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, getmRilCid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1535
    .local v2, "conncid":I
    iget-object v1, p0, mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/epdg/IPSecAdapter;->postConnectMessage(IILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0}, isHandOver()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1539
    iget-object v0, p0, mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v0}, deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_26

    .line 1524
    .end local v2    # "conncid":I
    .end local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    .restart local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    :cond_c4
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v4v6"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_86

    .line 1541
    .end local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .restart local v2    # "conncid":I
    .restart local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_ce
    iget-object v0, p0, mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v0}, deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_26

    .line 1544
    .end local v2    # "conncid":I
    .end local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_d5
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Connect Request is Throttled in InActive State."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p0}, getmRilCid()I

    move-result v0

    invoke-direct {p0, v0}, informHandoverFailureToRilAndFramework(I)V

    .line 1546
    iget-object v0, p0, mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v0}, deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_26
.end method

.method private handleEnableEpdgFailure(III)V
    .registers 7
    .param p1, "cid"    # I
    .param p2, "handoverAct"    # I
    .param p3, "handoverState"    # I

    .prologue
    .line 184
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside handleEnableEpdgFailure, cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handoverAct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handoverState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, handleTCRules(ZI)Z

    .line 188
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEnableEpdgFailure(I)V

    .line 189
    return-void
.end method

.method private handleTCRules(ZI)Z
    .registers 9
    .param p1, "enable"    # Z
    .param p2, "cid"    # I

    .prologue
    const/4 v5, 0x1

    .line 1580
    const/4 v1, 0x0

    .line 1581
    .local v1, "error":Z
    iget-object v2, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-nez v2, :cond_f

    .line 1582
    const-string v2, "[IPSECDATACONNSM]"

    const-string/jumbo v3, "mIWlanApnContext null"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    :goto_e
    return v1

    .line 1584
    :cond_f
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending iptables rules mIWlanApnContext.getbIprulesStatus() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    if-ne v5, p1, :cond_89

    .line 1589
    iget-object v2, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-ne v2, v5, :cond_40

    .line 1590
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "TCRules are enable"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1592
    :cond_40
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling enable EPDG for cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    :try_start_58
    iget-object v2, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 1595
    iget-object v2, p0, mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->enableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_6e} :catch_6f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6e} :catch_7c

    goto :goto_e

    .line 1597
    :catch_6f
    move-exception v0

    .line 1598
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IllegalStateException while enabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1599
    const/4 v1, 0x1

    .line 1602
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_e

    .line 1603
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_7c
    move-exception v0

    .line 1604
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "RemoteException while enabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1605
    const/4 v1, 0x1

    .line 1608
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 1614
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_89
    iget-object v2, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-nez v2, :cond_9a

    .line 1615
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "TCRules are not enable"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1617
    :cond_9a
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling disable EPDG for cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    :try_start_b2
    iget-object v2, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 1620
    iget-object v2, p0, mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_b2 .. :try_end_c8} :catch_ca
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_c8} :catch_d7

    goto/16 :goto_e

    .line 1622
    :catch_ca
    move-exception v0

    .line 1623
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IllegalStateException while disabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1624
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_e

    .line 1625
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_d7
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "RemoteException while disabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1627
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_e
.end method

.method private handleWifiConnect(ZLjava/lang/String;)V
    .registers 7
    .param p1, "isSsidChanged"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1433
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiConnect: SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSsidChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1435
    if-eqz p1, :cond_42

    .line 1436
    iput-object p2, p0, mCurrentSsid:Ljava/lang/String;

    .line 1437
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSID changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_42
    return-void
.end method

.method private handleWifiStateChange(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1442
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_c

    move v1, v2

    .line 1443
    .local v1, "isWifiConnected":Z
    :goto_7
    iput-boolean v1, p0, mIsWifiConnected:Z

    .line 1444
    if-nez v1, :cond_e

    .line 1450
    :goto_b
    return-void

    .end local v1    # "isWifiConnected":Z
    :cond_c
    move v1, v3

    .line 1442
    goto :goto_7

    .line 1447
    .restart local v1    # "isWifiConnected":Z
    :cond_e
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_1b

    move v0, v2

    .line 1448
    .local v0, "isSsidChanged":Z
    :goto_13
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, handleWifiConnect(ZLjava/lang/String;)V

    goto :goto_b

    .end local v0    # "isSsidChanged":Z
    :cond_1b
    move v0, v3

    .line 1447
    goto :goto_13
.end method

.method private informHandoverFailureToRilAndFramework(I)V
    .registers 8
    .param p1, "cid"    # I

    .prologue
    const/4 v3, 0x0

    .line 163
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter informHandoverFailureToRilAndFramework:  Sending Call Status failed to RIL"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, isHandOver()Z

    move-result v4

    const/4 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 166
    invoke-virtual {p0}, isHandOver()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, notifyW2LRegistrant(Z)V

    .line 168
    invoke-direct {p0, v3}, notifyL2WRegistrant(Z)V

    .line 172
    invoke-virtual {p0, v3}, setIsHandOver(Z)V

    .line 174
    :cond_2a
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Exit informHandoverFailureToRilAndFramework"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private initConnectionParams()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 229
    invoke-virtual {p0, v0}, setmRilCid(I)V

    .line 230
    invoke-virtual {p0, v0}, setmRetryCount(I)V

    .line 231
    invoke-virtual {p0, v1}, setIsHandOver(Z)V

    .line 232
    invoke-virtual {p0, v1}, setIsW2LRequested(Z)V

    .line 233
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 234
    return-void
.end method

.method private notifyL2WRegistrant(Z)V
    .registers 6
    .param p1, "result"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1559
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyL2WRegistrant : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    if-eqz p1, :cond_25

    move v0, v1

    :goto_1d
    invoke-virtual {p0}, getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrants(IILjava/lang/String;)V

    .line 1563
    return-void

    .line 1560
    :cond_25
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private notifyW2LRegistrant(Z)V
    .registers 5
    .param p1, "result"    # Z

    .prologue
    .line 1552
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyW2LRegistrant : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    if-eqz p1, :cond_25

    const/4 v0, 0x1

    :goto_1c
    const/4 v1, 0x2

    invoke-virtual {p0}, getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrants(IILjava/lang/String;)V

    .line 1556
    return-void

    .line 1553
    :cond_25
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private resetThrottleState()V
    .registers 3

    .prologue
    .line 1428
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Reset throttle state of State Machine"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {p0}, getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method private sendWifiRssiIntentDelayToEpdg(Z)V
    .registers 6
    .param p1, "value"    # Z

    .prologue
    .line 1649
    sget v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    if-lez v1, :cond_39

    .line 1650
    invoke-virtual {p0}, getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1651
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWifiRssiIntentDelayToEpdg: value is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    iget-object v1, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1653
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x49

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1654
    if-eqz p1, :cond_3a

    const/4 v1, 0x1

    :goto_34
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1655
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1658
    .end local v0    # "msg":Landroid/os/Message;
    :cond_39
    return-void

    .line 1654
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_3a
    const/4 v1, 0x0

    goto :goto_34
.end method

.method private setEpdgInterfaceDropRule(ZI)V
    .registers 6
    .param p1, "add"    # Z
    .param p2, "cid"    # I

    .prologue
    .line 1640
    :try_start_0
    iget-object v1, p0, mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v2, p2, -0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1645
    :goto_b
    return-void

    .line 1641
    :catch_c
    move-exception v0

    .line 1642
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Exception while setEpdgInterfaceDropRule"

    invoke-static {v1, v2, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1643
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private transition(Lcom/android/internal/util/State;)V
    .registers 2
    .param p1, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 159
    return-void
.end method

.method private updatePermanentFail(Ljava/lang/String;)V
    .registers 5
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 1566
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermanentFail, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1568
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEpdgNotAvailableForOnDemandFailure(Ljava/lang/String;)V

    .line 1570
    :cond_22
    return-void
.end method


# virtual methods
.method protected deferTransitionTo(Lcom/android/internal/util/State;)V
    .registers 2
    .param p1, "destState"    # Lcom/android/internal/util/State;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    .line 155
    return-void
.end method

.method public getApnContextDump()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 141
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_12
    return-object v0

    .line 143
    :cond_13
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getApnName(), mIWlanApnContext.getIWlanSetting() is null, returning apn name as null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getApnType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 131
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_12
    return-object v0

    .line 133
    :cond_13
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getApnType(), mIWlanApnContext.getIWlanSetting() is null, returning apn type as null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getCurrentIWlanState()Lcom/sec/epdg/IWlanState;
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-eqz v0, :cond_b

    .line 110
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v0

    .line 115
    :goto_a
    return-object v0

    .line 112
    :cond_b
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getCurrentIWlanState: mIWlanApnContext  is null, IWanState as Inactive"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanState;->setState(I)V

    .line 115
    sget-object v0, mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    goto :goto_a
.end method

.method public getDataConnectionHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, smHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized getIsW2LRequested()Z
    .registers 2

    .prologue
    .line 1573
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mIsW2LRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeriodicDpdTimer()I
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 121
    iget-object v0, p0, mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    .line 125
    :goto_12
    return v0

    .line 123
    :cond_13
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getPeriodicDpdTimer: mIWlanApnContext.getIWlanSetting()  is null, dpd value as 0"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getmRetryCount()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, mRetryCount:I

    return v0
.end method

.method public getmRilCid()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, mRilCid:I

    return v0
.end method

.method public isHandOver()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, mIsHandOver:Z

    return v0
.end method

.method public setIsHandOver(Z)V
    .registers 2
    .param p1, "isHandOver"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, mIsHandOver:Z

    .line 106
    return-void
.end method

.method public declared-synchronized setIsW2LRequested(Z)V
    .registers 3
    .param p1, "mIsW2LRequested"    # Z

    .prologue
    .line 1577
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, mIsW2LRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1578
    monitor-exit p0

    return-void

    .line 1577
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setmRetryCount(I)V
    .registers 2
    .param p1, "mRetryCount"    # I

    .prologue
    .line 97
    iput p1, p0, mRetryCount:I

    .line 98
    return-void
.end method

.method public setmRilCid(I)V
    .registers 2
    .param p1, "mRilCid"    # I

    .prologue
    .line 241
    iput p1, p0, mRilCid:I

    .line 242
    return-void
.end method
