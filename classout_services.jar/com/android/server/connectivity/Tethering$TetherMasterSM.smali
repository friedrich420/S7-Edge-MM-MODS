.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final CELL_CONNECTION_RENEW_MS:I = 0x9c40

.field static final CMD_CELL_CONNECTION_RENEW:I = 0x4

.field static final CMD_DISCONNECT_DUN:I = 0x6

.field static final CMD_RETRY_UPSTREAM:I = 0x5

.field static final CMD_TETHER_MODE_REQUESTED:I = 0x1

.field static final CMD_TETHER_MODE_UNREQUESTED:I = 0x2

.field static final CMD_UPSTREAM_CHANGED:I = 0x3

.field private static final EXTRA_ADD_TETHER_TYPE:Ljava/lang/String; = "extraAddTetherType"

.field private static final EXTRA_RUN_PROVISION:Ljava/lang/String; = "extraRunProvision"

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710

.field private static final USB_TETHERING:I = 0x1

.field private static final WIFI_TETHERING:I


# instance fields
.field private mActualUpstreamIfaceName:Ljava/lang/String;

.field private mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

.field private mCurrentConnectionSequence:I

.field private mInitialState:Lcom/android/internal/util/State;

.field private mMobileApnReserved:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field protected mRetryCount:I

.field private mSequenceNumber:I

.field private mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

.field private final mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStartTetheringErrorState:Lcom/android/internal/util/State;

.field private mStopTetheringErrorState:Lcom/android/internal/util/State;

.field private mTetherModeAliveState:Lcom/android/internal/util/State;

.field private mTetheredIfaceName:Ljava/lang/String;

.field private mUpstreamIfaceName:Ljava/lang/String;

.field prevIPV6Connected:Z

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2980
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/Tethering;

    .line 2981
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 2963
    const/4 v0, -0x1

    iput v0, p0, mMobileApnReserved:I

    .line 2965
    iput-object v1, p0, mUpstreamIfaceName:Ljava/lang/String;

    .line 2967
    iput-object v1, p0, mTetheredIfaceName:Ljava/lang/String;

    .line 2968
    iput-object v1, p0, mActualUpstreamIfaceName:Ljava/lang/String;

    .line 2973
    iput-object v1, p0, mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2974
    iput-boolean v2, p0, prevIPV6Connected:Z

    .line 3590
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3591
    iput-object v1, p0, mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    .line 2984
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    .line 2985
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2986
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mTetherModeAliveState:Lcom/android/internal/util/State;

    .line 2987
    iget-object v0, p0, mTetherModeAliveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2989
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    .line 2990
    iget-object v0, p0, mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2991
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    .line 2992
    iget-object v0, p0, mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2993
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mStartTetheringErrorState:Lcom/android/internal/util/State;

    .line 2994
    iget-object v0, p0, mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2995
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mStopTetheringErrorState:Lcom/android/internal/util/State;

    .line 2996
    iget-object v0, p0, mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 2997
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    .line 2998
    iget-object v0, p0, mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, addState(Lcom/android/internal/util/State;)V

    .line 3000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mNotifyList:Ljava/util/ArrayList;

    .line 3001
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, setInitialState(Lcom/android/internal/util/State;)V

    .line 3002
    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget v0, p0, mMobileApnReserved:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # I

    .prologue
    .line 2929
    iput p1, p0, mMobileApnReserved:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget v0, p0, mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$6904(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget v0, p0, mCurrentConnectionSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mNotifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mStartTetheringErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mStopTetheringErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2929
    iput-object p1, p0, mUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mActualUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2929
    iput-object p1, p0, mActualUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2929
    iput-object p1, p0, mTetheredIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    iget-object v0, p0, mTetherModeAliveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    invoke-direct {p0}, startListeningForSimChanges()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2929
    invoke-direct {p0}, stopListeningForSimChanges()V

    return-void
.end method

.method private startListeningForSimChanges()V
    .registers 4

    .prologue
    .line 3603
    const-string v1, "Tethering"

    const-string/jumbo v2, "startListeningForSimChanges"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    iget-object v1, p0, mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    if-nez v1, :cond_2e

    .line 3605
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    iget-object v2, p0, mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V

    iput-object v1, p0, mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    .line 3607
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3608
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3610
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3612
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2e
    return-void
.end method

.method private stopListeningForSimChanges()V
    .registers 3

    .prologue
    .line 3615
    const-string v0, "Tethering"

    const-string/jumbo v1, "stopListeningForSimChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    iget-object v0, p0, mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    if-eqz v0, :cond_1f

    .line 3617
    iget-object v0, p0, mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3618
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3619
    const/4 v0, 0x0

    iput-object v0, p0, mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    .line 3621
    :cond_1f
    return-void
.end method
