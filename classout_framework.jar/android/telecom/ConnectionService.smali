.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# static fields
.field private static final MSG_ABORT:I = 0x3

.field private static final MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final MSG_ANSWER:I = 0x4

.field private static final MSG_ANSWER_VIDEO:I = 0x11

.field private static final MSG_CONFERENCE:I = 0xc

.field private static final MSG_CREATE_CONNECTION:I = 0x2

.field private static final MSG_DISCONNECT:I = 0x6

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_MERGE_CONFERENCE:I = 0x12

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final MSG_STOP_DTMF_TONE:I = 0xb

.field private static final MSG_SWAP_CONFERENCE:I = 0x13

.field private static final MSG_UNHOLD:I = 0x8

.field private static final PII_DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private mAreAccountsInitialized:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private sNullConference:Landroid/telecom/Conference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, mConnectionById:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, mIdByConnection:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, mConferenceById:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, mIdByConference:Ljava/util/Map;

    .line 111
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPreInitializationConnectionRequests:Ljava/util/List;

    .line 114
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, mAreAccountsInitialized:Z

    .line 119
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, mBinder:Landroid/os/IBinder;

    .line 233
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 362
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 444
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, mConnectionListener:Landroid/telecom/Connection$Listener;

    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 665
    const-string v0, "abort %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    const-string v0, "abort"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 667
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, hold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, unhold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .registers 3
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .registers 3
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/telecom/ConnectionService;)V
    .registers 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    invoke-direct {p0}, onAdapterAttached()V

    return-void
.end method

.method static synthetic access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2100(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, mIdByConference:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 76
    invoke-direct {p0, p1}, createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/Conference;

    .prologue
    .line 76
    invoke-direct {p0, p1}, removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, mIdByConnection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 76
    invoke-direct {p0, p1}, createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/telecom/ConnectionService;)V
    .registers 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    invoke-direct {p0}, onAccountsInitialized()V

    return-void
.end method

.method static synthetic access$300(Landroid/telecom/ConnectionService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-boolean v0, p0, mAreAccountsInitialized:Z

    return v0
.end method

.method static synthetic access$302(Landroid/telecom/ConnectionService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, mAreAccountsInitialized:Z

    return p1
.end method

.method static synthetic access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 6
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/telecom/ConnectionRequest;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, mPreInitializationConnectionRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, abort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, answer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, reject(Ljava/lang/String;)V

    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .registers 6
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1160
    iget-object v1, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1161
    const-string v1, "Re-adding an existing conference: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0

    .line 1162
    :cond_15
    if-eqz p1, :cond_13

    .line 1163
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iget-object v1, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    iget-object v1, p0, mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_14
.end method

.method private addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1143
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    iget-object v0, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    iget-object v0, p0, mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p2, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1146
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1147
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;
    .registers 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1137
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 1139
    return-object v0
.end method

.method private answer(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 675
    const-string v0, "answer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    const-string v0, "answer"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    .line 677
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 670
    const-string v0, "answerVideo %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    const-string v0, "answer"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 672
    return-void
.end method

.method private conference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 741
    const-string v4, "conference %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    const-string v4, "conference"

    invoke-direct {p0, p2, v4}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v3

    .line 745
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, getNullConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 746
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v3, v4, :cond_34

    .line 747
    const-string v4, "conference"

    invoke-direct {p0, p2, v4}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v1

    .line 748
    invoke-direct {p0}, getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v1, v4, :cond_34

    .line 749
    const-string v4, "Connection2 or Conference2 missing in conference request %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    :goto_33
    return-void

    .line 756
    :cond_34
    const-string v4, "conference"

    invoke-direct {p0, p1, v4}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v2

    .line 757
    .local v2, "connection1":Landroid/telecom/Connection;
    invoke-static {}, getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v2, v4, :cond_68

    .line 758
    const-string v4, "addConnection"

    invoke-direct {p0, p1, v4}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 759
    .local v0, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v0, v4, :cond_56

    .line 760
    const-string v4, "Connection1 or Conference1 missing in conference request %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    .line 765
    :cond_56
    invoke-static {}, getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-eq v3, v4, :cond_60

    .line 767
    invoke-virtual {v0, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_33

    .line 770
    :cond_60
    const-string v4, "There can only be one conference and an attempt was made to merge two conferences."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    .line 777
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :cond_68
    invoke-direct {p0}, getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-eq v1, v4, :cond_72

    .line 779
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_33

    .line 782
    :cond_72
    invoke-virtual {p0, v2, v3}, onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    goto :goto_33
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 32
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    .line 613
    const-string v4, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    if-eqz p5, :cond_f8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v23

    .line 620
    .local v23, "connection":Landroid/telecom/Connection;
    :goto_2d
    const-string v4, "createConnection, connection: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    if-nez v23, :cond_46

    .line 622
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v23

    .line 626
    :cond_46
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_56

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 630
    :cond_56
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v22

    .line 631
    .local v22, "address":Landroid/net/Uri;
    if-nez v22, :cond_112

    const-string/jumbo v24, "null"

    .line 632
    .local v24, "number":Ljava/lang/String;
    :goto_5f
    const-string v4, "createConnection, number: %s, state: %s, capabilities: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v24 .. v24}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    const-string v4, "createConnection, calling handleCreateConnectionSuccessful %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v25, v0

    new-instance v4, Landroid/telecom/ParcelableConnection;

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v6

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v9

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v11

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    if-nez v12, :cond_118

    const/4 v12, 0x0

    :goto_be
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoState()I

    move-result v13

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v14

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v15

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v18

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v19

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    invoke-direct/range {v4 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 659
    if-eqz p5, :cond_f7

    .line 660
    invoke-virtual/range {p0 .. p0}, triggerConferenceRecalculate()V

    .line 662
    :cond_f7
    return-void

    .line 617
    .end local v22    # "address":Landroid/net/Uri;
    .end local v23    # "connection":Landroid/telecom/Connection;
    .end local v24    # "number":Ljava/lang/String;
    :cond_f8
    if-eqz p4, :cond_106

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v23

    goto/16 :goto_2d

    :cond_106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v23

    goto/16 :goto_2d

    .line 631
    .restart local v22    # "address":Landroid/net/Uri;
    .restart local v23    # "connection":Landroid/telecom/Connection;
    :cond_112
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_5f

    .line 638
    .restart local v24    # "number":Ljava/lang/String;
    :cond_118
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v12

    goto :goto_be
.end method

.method private createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1208
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1210
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v3, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1211
    iget-object v3, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1214
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_27
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1215
    return-object v2
.end method

.method private createIdList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 1229
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v5, v0, Landroid/telecom/Connection;

    if-eqz v5, :cond_2e

    move-object v2, v0

    .line 1230
    check-cast v2, Landroid/telecom/Connection;

    .line 1231
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1232
    iget-object v5, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1234
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_2e
    instance-of v5, v0, Landroid/telecom/Conference;

    if-eqz v5, :cond_9

    move-object v1, v0

    .line 1235
    check-cast v1, Landroid/telecom/Conference;

    .line 1236
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v5, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1237
    iget-object v5, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1241
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_47
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1242
    return-object v4
.end method

.method private disconnect(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 685
    const-string v0, "disconnect %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 687
    const-string v0, "disconnect"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    .line 691
    :goto_1c
    return-void

    .line 689
    :cond_1d
    const-string v0, "disconnect"

    invoke-direct {p0, p1, v0}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_1c
.end method

.method private endAllConnections()V
    .registers 5

    .prologue
    .line 1254
    iget-object v3, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 1256
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v3

    if-nez v3, :cond_a

    .line 1257
    invoke-virtual {v1}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_a

    .line 1260
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_20
    iget-object v3, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1261
    .local v0, "conference":Landroid/telecom/Conference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_2a

    .line 1263
    .end local v0    # "conference":Landroid/telecom/Conference;
    :cond_3a
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .registers 6
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1200
    iget-object v0, p0, mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1201
    iget-object v0, p0, mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1204
    :goto_10
    return-object v0

    .line 1203
    :cond_11
    const-string v0, "%s - Cannot find conference %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    invoke-direct {p0}, getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    goto :goto_10
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1185
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1186
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1189
    :goto_10
    return-object v0

    .line 1188
    :cond_11
    const-string v0, "%s - Cannot find Connection %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    invoke-static {}, getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    goto :goto_10
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .registers 3

    .prologue
    .line 1246
    iget-object v0, p0, sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_c

    .line 1247
    new-instance v0, Landroid/telecom/ConnectionService$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, sNullConference:Landroid/telecom/Conference;

    .line 1249
    :cond_c
    iget-object v0, p0, sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized getNullConnection()Landroid/telecom/Connection;
    .registers 2

    .prologue
    .line 1193
    const-class v1, Landroid/telecom/ConnectionService;

    monitor-enter v1

    :try_start_3
    sget-object v0, sNullConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_e

    .line 1194
    new-instance v0, Landroid/telecom/ConnectionService$6;

    invoke-direct {v0}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v0, sNullConnection:Landroid/telecom/Connection;

    .line 1196
    :cond_e
    sget-object v0, sNullConnection:Landroid/telecom/Connection;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 1193
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hold(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 694
    const-string v0, "hold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 696
    const-string v0, "hold"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    .line 700
    :goto_1c
    return-void

    .line 698
    :cond_1d
    const-string v0, "hold"

    invoke-direct {p0, p1, v0}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    goto :goto_1c
.end method

.method private mergeConference(Ljava/lang/String;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 803
    const-string/jumbo v1, "mergeConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    const-string/jumbo v1, "mergeConference"

    invoke-direct {p0, p1, v1}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 805
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_18

    .line 806
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 808
    :cond_18
    return-void
.end method

.method private onAccountsInitialized()V
    .registers 4

    .prologue
    .line 1123
    const/4 v2, 0x1

    iput-boolean v2, p0, mAreAccountsInitialized:Z

    .line 1124
    iget-object v2, p0, mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1125
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    .line 1127
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_19
    iget-object v2, p0, mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1128
    return-void
.end method

.method private onAdapterAttached()V
    .registers 3

    .prologue
    .line 824
    iget-boolean v0, p0, mAreAccountsInitialized:Z

    if-eqz v0, :cond_5

    .line 858
    :goto_4
    return-void

    .line 829
    :cond_5
    iget-object v0, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v1, Landroid/telecom/ConnectionService$5;

    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    goto :goto_4
.end method

.method private onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 712
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 714
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 720
    :goto_21
    return-void

    .line 717
    :cond_22
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_21
.end method

.method private onPostDialContinue(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 819
    const-string/jumbo v0, "onPostDialContinue(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 821
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 723
    const-string/jumbo v0, "playDtmfTone %s %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 725
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    .line 729
    :goto_25
    return-void

    .line 727
    :cond_26
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    goto :goto_25
.end method

.method private reject(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 680
    const-string/jumbo v0, "reject %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    .line 682
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .registers 4
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1174
    iget-object v1, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1175
    iget-object v1, p0, mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1177
    iget-object v1, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1178
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    iget-object v1, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iget-object v1, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1182
    .end local v0    # "id":Ljava/lang/String;
    :cond_24
    return-void
.end method

.method private splitFromConference(Ljava/lang/String;)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 788
    const-string/jumbo v2, "splitFromConference(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    const-string/jumbo v2, "splitFromConference"

    invoke-direct {p0, p1, v2}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 791
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-ne v1, v2, :cond_23

    .line 792
    const-string v2, "Connection missing in conference request %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    :cond_22
    :goto_22
    return-void

    .line 796
    :cond_23
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    .line 797
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_22

    .line 798
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    goto :goto_22
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 732
    const-string/jumbo v0, "stopDtmfTone %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 734
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    .line 738
    :goto_1e
    return-void

    .line 736
    :cond_1f
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    goto :goto_1e
.end method

.method private swapConference(Ljava/lang/String;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 811
    const-string/jumbo v1, "swapConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    const-string/jumbo v1, "swapConference"

    invoke-direct {p0, p1, v1}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 813
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_18

    .line 814
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    .line 816
    :cond_18
    return-void
.end method

.method private unhold(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string/jumbo v0, "unhold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 705
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    .line 709
    :goto_1e
    return-void

    .line 707
    :cond_1f
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    goto :goto_1e
.end method


# virtual methods
.method public final addConference(Landroid/telecom/Conference;)V
    .registers 17
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 923
    const-string v2, "addConference: conference=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    invoke-direct/range {p0 .. p1}, addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v14

    .line 926
    .local v14, "id":Ljava/lang/String;
    if-eqz v14, :cond_a9

    .line 927
    new-instance v5, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 928
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 929
    .local v0, "connection":Landroid/telecom/Connection;
    iget-object v2, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 930
    iget-object v2, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 933
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_3d
    new-instance v1, Landroid/telecom/ParcelableConference;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getState()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    if-nez v6, :cond_a0

    const/4 v6, 0x0

    :goto_52
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    .line 945
    .local v1, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v2, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v14, v1}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 946
    iget-object v2, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 947
    iget-object v2, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 950
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_84
    :goto_84
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 951
    .restart local v0    # "connection":Landroid/telecom/Connection;
    iget-object v2, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 952
    .local v12, "connectionId":Ljava/lang/String;
    if-eqz v12, :cond_84

    .line 953
    iget-object v2, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v12, v14}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 933
    .end local v0    # "connection":Landroid/telecom/Connection;
    .end local v1    # "parcelableConference":Landroid/telecom/ParcelableConference;
    .end local v12    # "connectionId":Ljava/lang/String;
    :cond_a0
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    goto :goto_52

    .line 957
    .end local v5    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_a9
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .registers 24
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 969
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v20

    .line 970
    .local v20, "id":Ljava/lang/String;
    if-eqz v20, :cond_5d

    .line 971
    new-instance v18, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 973
    .local v18, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/telecom/ParcelableConnection;

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_5e

    const/4 v10, 0x0

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v19}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 991
    .local v2, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 993
    .end local v2    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5d
    return-void

    .line 973
    .restart local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5e
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v10

    goto :goto_33
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .registers 2
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 1115
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1119
    invoke-virtual {p0, p1}, onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 1120
    return-void
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .registers 4
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 911
    iget-object v0, p0, mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 912
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1109
    iget-object v0, p0, mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .registers 5
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 875
    iget-object v0, p0, mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .registers 5
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 894
    iget-object v0, p0, mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final getAllConnections()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p0, mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 592
    iget-object v0, p0, mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .registers 3
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .prologue
    .line 1085
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1018
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1074
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .registers 2
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1097
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1103
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 598
    invoke-direct {p0}, endAllConnections()V

    .line 599
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .registers 5
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1151
    iget-object v1, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1152
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1153
    iget-object v1, p0, mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1154
    iget-object v1, p0, mConnectionById:Ljava/util/Map;

    iget-object v2, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    iget-object v1, p0, mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget-object v1, p0, mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1157
    return-void
.end method

.method public triggerConferenceRecalculate()V
    .registers 1

    .prologue
    .line 1029
    return-void
.end method
