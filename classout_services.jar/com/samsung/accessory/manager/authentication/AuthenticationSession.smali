.class public Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.super Ljava/lang/Thread;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;,
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    }
.end annotation


# static fields
.field public static final EVENT_SESSION_COMPLETE:I = 0x3

.field public static final EVENT_SESSION_STARTED:I = 0x2

.field public static final EVENT_SESSION_STARTING:I = 0x1

.field public static final EVENT_SESSION_STOPPED:I = 0x4

.field public static final MSG_CONNECTIVITY_CONNECT:I = 0x7

.field public static final MSG_CONNECTIVITY_CONNECTED:I = 0x8

.field public static final MSG_CONNECTIVITY_DISCONNECTED:I = 0x9

.field public static final MSG_CONNECTIVITY_OFF:I = 0x4

.field public static final MSG_CONNECTIVITY_ON:I = 0x3

.field public static final MSG_CONNECTIVITY_READY:I = 0x2

.field public static final MSG_CONNECTIVITY_SET_CONNECTION:I = 0x1

.field public static final MSG_CONNECTIVITY_TURNING_OFF:I = 0x5

.field public static final MSG_SESSION_REQUEST_TEAR_DOWN:I = 0xd

.field public static final MSG_SESSION_START:I = 0xb

.field public static final MSG_SESSION_STOP:I = 0xc

.field public static final MSG_SESSION_TIMEOUT:I = 0xe

.field public static final SESSION_NONE:I = 0x7

.field public static final SESSION_STATE_ERROR:I = 0x6

.field public static final SESSION_STATE_READY:I = 0x1

.field public static final SESSION_STATE_STARTED:I = 0x3

.field public static final SESSION_STATE_STARTING:I = 0x2

.field public static final SESSION_STATE_STOPPED:I = 0x5

.field public static final SESSION_STATE_STOPPING:I = 0x4

.field private static final SESSION_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = true

.field private static final WAITING_FOR_CONNECTIVITY_OFF:I = 0x3

.field private static final WAITING_FOR_CONNECTIVITY_OFF_WHILE_STOPPING:I = 0x2

.field private static final WAITING_FOR_CONNECTIVITY_ON:I = 0x4

.field private static final WAITING_FOR_CONNECTIVITY_ON_WHILE_SETUP:I = 0x5

.field private static final WAITING_RECEIVED_START_WHILE_STOPPING:I = 0x1


# instance fields
.field private mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

.field protected mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

.field private mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInternalState:I

.field public mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

.field private mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

.field private mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

.field private mSessionThread:Ljava/lang/Thread;

.field private mState:I

.field private mStateLock:Ljava/lang/Object;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mTurnedOffWhileRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestPackage"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, mInternalState:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, mState:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mStateLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-object v2, p0, mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 79
    iput-object v2, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .line 81
    iput-boolean v1, p0, mTurnedOffWhileRunning:Z

    .line 112
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    iput-object v0, p0, mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .line 211
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 212
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    iput-object v0, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 213
    iget-object v0, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setRequestPackage(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setConnectivityType(I)V

    .line 215
    iget-object v0, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    iget-object v0, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    iget-object v0, p0, mSessionThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 20
    iput-object p1, p0, mSessionThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, setState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    invoke-direct {p0}, handleStartSession()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, handleStopSession(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    iget-object v0, p0, mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, replayAuthfail(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    invoke-direct {p0}, handleTearDown()V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, mInternalState:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    iget-object v0, p0, mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    invoke-direct {p0}, connect()V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, mTurnedOffWhileRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 20
    invoke-direct {p0}, handleSetConnection()V

    return-void
.end method

.method private connect()V
    .registers 3

    .prologue
    .line 437
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_c

    .line 442
    :goto_b
    return-void

    .line 441
    :cond_c
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->connect()V

    goto :goto_b
.end method

.method public static createNewSession(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestPackage"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 219
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v0, p0, p1, p2}, <init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method private disconnect()V
    .registers 3

    .prologue
    .line 445
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_d

    .line 450
    :goto_c
    return-void

    .line 449
    :cond_d
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->disconnect()V

    goto :goto_c
.end method

.method private handleSetConnection()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 341
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleSetConnection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_1b

    .line 343
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "mAuthenticator is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v0, 0xc

    invoke-direct {p0, v0}, replayAuthfail(I)V

    .line 366
    :goto_1a
    return-void

    .line 346
    :cond_1b
    invoke-virtual {p0}, getSessionState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 347
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "session is stopped!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 351
    :cond_2b
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection()V

    .line 352
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    iget-object v1, p0, mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    .line 354
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 355
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_1a

    .line 357
    :cond_4a
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->enable()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 358
    iget-object v0, p0, mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 359
    const/4 v0, 0x5

    iput v0, p0, mInternalState:I

    goto :goto_1a

    .line 361
    :cond_5f
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "enable fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0, v2}, setState(I)V

    .line 363
    const/16 v0, 0xa

    invoke-direct {p0, v0}, replayAuthfail(I)V

    goto :goto_1a
.end method

.method private handleStartSession()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 315
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleStartSession"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, getSessionState()I

    move-result v2

    if-eq v2, v4, :cond_2f

    .line 318
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t start session, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, replayAuthfail(I)V

    .line 338
    :goto_2e
    return-void

    .line 323
    :cond_2f
    const/4 v2, 0x2

    invoke-direct {p0, v2}, setState(I)V

    .line 324
    iget-object v2, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v2, :cond_3c

    .line 325
    iget-object v2, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    invoke-interface {v2, v4, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 327
    :cond_3c
    iget-object v2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v2, :cond_52

    .line 328
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getConnectivityType()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;-><init>(Landroid/content/Context;I)V

    .line 331
    .local v0, "authenticator":Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
    :try_start_4d
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, setAuthenticator(Landroid/content/Context;Lcom/samsung/accessory/manager/authentication/Authenticator;)V
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_52} :catch_58

    .line 337
    .end local v0    # "authenticator":Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
    :cond_52
    :goto_52
    iget-object v2, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_2e

    .line 332
    .restart local v0    # "authenticator":Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
    :catch_58
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_52
.end method

.method private handleStopSession(Z)V
    .registers 12
    .param p1, "force"    # Z

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 255
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleStopSession, force? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, mSessionThread:Ljava/lang/Thread;

    if-eqz v2, :cond_55

    .line 258
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "waiting for session thread to terminate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :try_start_2a
    iget-object v2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v2, :cond_33

    .line 262
    iget-object v2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->onInterrupted()V

    .line 263
    :cond_33
    iget-object v2, p0, mSessionThread:Ljava/lang/Thread;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 264
    iget-object v2, p0, mSessionThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 265
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Thread is still running.. force stop session!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 p1, 0x1

    .line 268
    :cond_4a
    const/4 v2, 0x0

    iput-object v2, p0, mSessionThread:Ljava/lang/Thread;
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_4d} :catch_a9

    .line 272
    :goto_4d
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "session thread is terminated"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_55
    if-eqz p1, :cond_ae

    .line 276
    iget-object v2, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v2, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 277
    iget-object v2, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 284
    :cond_63
    invoke-direct {p0, v8}, setState(I)V

    .line 286
    iget-object v2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v2, :cond_c5

    iget-object v2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 289
    iget-object v2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result v1

    .line 290
    .local v1, "isEnabled":Z
    if-eqz v1, :cond_c1

    iget-object v2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 292
    iget-object v2, p0, mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 293
    if-nez p1, :cond_c5

    .line 294
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "waiting for connectivity off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v2, 0x2

    iput v2, p0, mInternalState:I

    .line 312
    .end local v1    # "isEnabled":Z
    :goto_a8
    return-void

    .line 269
    :catch_a9
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4d

    .line 278
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_ae
    iget-object v2, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v2, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 279
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "session will be restarted.. "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput v6, p0, mInternalState:I

    goto :goto_a8

    .line 298
    .restart local v1    # "isEnabled":Z
    :cond_c1
    iget-boolean v2, p0, mTurnedOffWhileRunning:Z

    if-eqz v2, :cond_d7

    .line 309
    .end local v1    # "isEnabled":Z
    :cond_c5
    iget-object v2, p0, mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 310
    iget-object v2, p0, mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 311
    iget-object v2, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_a8

    .line 300
    .restart local v1    # "isEnabled":Z
    :cond_d7
    iget-object v2, p0, mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 301
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "waiting for connectivity on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-nez p1, :cond_c5

    .line 303
    iput v8, p0, mInternalState:I

    .line 304
    iget-object v2, p0, mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_a8
.end method

.method private handleTearDown()V
    .registers 3

    .prologue
    .line 369
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleTearDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_11

    .line 372
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->close()V

    .line 374
    :cond_11
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_26

    .line 375
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 376
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 380
    :cond_26
    const/4 v0, 0x5

    invoke-direct {p0, v0}, setState(I)V

    .line 382
    iget-object v0, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_34

    .line 383
    iget-object v0, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 385
    :cond_34
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 386
    return-void
.end method

.method private replayAuthfail(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 393
    iget-object v0, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 394
    iget-object v0, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_f

    .line 395
    iget-object v0, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 396
    :cond_f
    return-void
.end method

.method private setAuthenticator(Landroid/content/Context;Lcom/samsung/accessory/manager/authentication/Authenticator;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authenticator"    # Lcom/samsung/accessory/manager/authentication/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 430
    if-nez p2, :cond_a

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authenticator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_a
    iput-object p2, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 434
    return-void
.end method

.method private setState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 223
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_3
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iput p1, p0, mState:I

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private startAuthChall()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_6

    .line 421
    const/4 v0, 0x0

    .line 426
    :goto_5
    return v0

    .line 424
    :cond_6
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    iget-object v1, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 426
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 453
    const-string v0, " Current AuthenticationSession state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getSessionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  internal state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mInternalState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConnectAfterEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTeardownRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_84

    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 461
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 462
    :cond_84
    return-void
.end method

.method public getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    return-object v0
.end method

.method public getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    return-object v0
.end method

.method public getConnectivityType()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivityType()I

    move-result v0

    return v0
.end method

.method public getSessionState()I
    .registers 3

    .prologue
    .line 107
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_3
    iget v0, p0, mState:I

    monitor-exit v1

    return v0

    .line 109
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 401
    :try_start_0
    invoke-direct {p0}, startAuthChall()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3b

    .line 405
    :goto_3
    invoke-direct {p0}, disconnect()V

    .line 407
    const/4 v1, 0x1

    invoke-direct {p0, v1}, setState(I)V

    .line 409
    iget-boolean v1, p0, mTurnedOffWhileRunning:Z

    if-eqz v1, :cond_30

    .line 410
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTurnedOffWhileRunning ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mTurnedOffWhileRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 415
    :cond_30
    iget-object v1, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v1, :cond_3a

    .line 416
    iget-object v1, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 417
    :cond_3a
    return-void

    .line 402
    :catch_3b
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public setAuthenticationResultCallback(Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .prologue
    .line 95
    iput-object p1, p0, mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 96
    return-void
.end method

.method public setSessionCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .prologue
    .line 91
    iput-object p1, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .line 92
    return-void
.end method

.method public declared-synchronized startSession()V
    .registers 5

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_38

    .line 233
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Create handler thread"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SAAuthentication Session Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 235
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 236
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V

    iput-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 237
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 240
    :cond_38
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    .line 244
    monitor-exit p0

    return-void

    .line 230
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession()V
    .registers 3

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 251
    iget-object v0, p0, mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 252
    monitor-exit p0

    return-void

    .line 247
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
