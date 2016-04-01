.class public Lcom/android/internal/util/AsyncChannel;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$1;,
        Lcom/android/internal/util/AsyncChannel$DeathMonitor;,
        Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;,
        Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x11000

.field public static final CMD_CHANNEL_DISCONNECT:I = 0x11003

.field public static final CMD_CHANNEL_DISCONNECTED:I = 0x11004

.field public static final CMD_CHANNEL_FULLY_CONNECTED:I = 0x11002

.field public static final CMD_CHANNEL_FULL_CONNECTION:I = 0x11001

.field public static final CMD_CHANNEL_HALF_CONNECTED:I = 0x11000

.field private static final CMD_TO_STRING_COUNT:I = 0x5

.field private static final DBG:Z = false

.field public static final STATUS_BINDING_UNSUCCESSFUL:I = 0x1

.field public static final STATUS_FULL_CONNECTION_REFUSED_ALREADY_CONNECTED:I = 0x3

.field public static final STATUS_REMOTE_DISCONNECTION:I = 0x4

.field public static final STATUS_SEND_UNSUCCESSFUL:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AsyncChannel"

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

.field private mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

.field private mDstMessenger:Landroid/os/Messenger;

.field private mSrcContext:Landroid/content/Context;

.field private mSrcHandler:Landroid/os/Handler;

.field private mSrcMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 154
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, sCmdToString:[Ljava/lang/String;

    .line 156
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CMD_CHANNEL_HALF_CONNECTED"

    aput-object v2, v0, v1

    .line 157
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "CMD_CHANNEL_FULL_CONNECTION"

    aput-object v2, v0, v1

    .line 158
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "CMD_CHANNEL_FULLY_CONNECTED"

    aput-object v2, v0, v1

    .line 159
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "CMD_CHANNEL_DISCONNECT"

    aput-object v2, v0, v1

    .line 160
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "CMD_CHANNEL_DISCONNECTED"

    aput-object v2, v0, v1

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/AsyncChannel;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, replyHalfConnected(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 86
    iput-object p1, p0, mDstMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/util/AsyncChannel;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, replyDisconnected(I)V

    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cmd"    # I

    .prologue
    .line 163
    const v0, 0x11000

    sub-int/2addr p0, v0

    .line 164
    if-ltz p0, :cond_10

    sget-object v0, sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_10

    .line 165
    sget-object v0, sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 167
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 907
    const-string v0, "AsyncChannel"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void
.end method

.method private replyDisconnected(I)V
    .registers 5
    .param p1, "status"    # I

    .prologue
    .line 873
    iget-object v1, p0, mSrcHandler:Landroid/os/Handler;

    if-nez v1, :cond_5

    .line 879
    :goto_4
    return-void

    .line 874
    :cond_5
    iget-object v1, p0, mSrcHandler:Landroid/os/Handler;

    const v2, 0x11004

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 875
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 876
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 877
    iget-object v1, p0, mDstMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 878
    iget-object v1, p0, mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method private replyHalfConnected(I)V
    .registers 7
    .param p1, "status"    # I

    .prologue
    .line 843
    iget-object v2, p0, mSrcHandler:Landroid/os/Handler;

    const v3, 0x11000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 844
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 845
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 846
    iget-object v2, p0, mDstMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 851
    iget-object v2, p0, mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-nez v2, :cond_28

    .line 852
    new-instance v2, Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-direct {v2, p0}, Lcom/android/internal/util/AsyncChannel$DeathMonitor;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v2, p0, mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 854
    :try_start_1c
    iget-object v2, p0, mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_28} :catch_2e

    .line 862
    :cond_28
    :goto_28
    iget-object v2, p0, mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 863
    return-void

    .line 855
    :catch_2e
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 858
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_28
.end method


# virtual methods
.method public connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    .prologue
    .line 418
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 419
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .registers 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 377
    invoke-virtual {p0, p1, p2, p3}, connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, replyHalfConnected(I)V

    .line 383
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 6
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstPackageName"    # Ljava/lang/String;
    .param p4, "dstClassName"    # Ljava/lang/String;

    .prologue
    .line 341
    new-instance v0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;-><init>(Lcom/android/internal/util/AsyncChannel;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v0, "ca":Lcom/android/internal/util/AsyncChannel$1ConnectAsync;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 345
    return-void
.end method

.method public connect(Lcom/android/internal/util/AsyncService;Landroid/os/Messenger;)V
    .registers 4
    .param p1, "srcAsyncService"    # Lcom/android/internal/util/AsyncService;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/android/internal/util/AsyncService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 433
    return-void
.end method

.method public connectSrcHandlerToPackageSync(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstPackageName"    # Ljava/lang/String;
    .param p4, "dstClassName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 226
    new-instance v3, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-direct {v3, p0}, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v3, p0, mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 229
    iput-object p1, p0, mSrcContext:Landroid/content/Context;

    .line 230
    iput-object p2, p0, mSrcHandler:Landroid/os/Handler;

    .line 231
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, mSrcMessenger:Landroid/os/Messenger;

    .line 238
    const/4 v3, 0x0

    iput-object v3, p0, mDstMessenger:Landroid/os/Messenger;

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v3, p0, mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-virtual {p1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 245
    .local v1, "result":Z
    if-eqz v1, :cond_29

    const/4 v2, 0x0

    :cond_29
    return v2
.end method

.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .registers 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    .prologue
    .line 279
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v0

    return v0
.end method

.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I
    .registers 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 262
    invoke-virtual {p0, p1, p2, p3}, connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .registers 6
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 399
    iput-object p1, p0, mSrcContext:Landroid/content/Context;

    .line 400
    iput-object p2, p0, mSrcHandler:Landroid/os/Handler;

    .line 401
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, mSrcHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, mSrcMessenger:Landroid/os/Messenger;

    .line 404
    iput-object p3, p0, mDstMessenger:Landroid/os/Messenger;

    .line 407
    return-void
.end method

.method public disconnect()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 451
    iget-object v1, p0, mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-eqz v1, :cond_13

    iget-object v1, p0, mSrcContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 452
    iget-object v1, p0, mSrcContext:Landroid/content/Context;

    iget-object v2, p0, mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 453
    iput-object v3, p0, mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 458
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 459
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x11004

    iput v1, v0, Landroid/os/Message;->what:I

    .line 460
    iget-object v1, p0, mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 461
    iget-object v1, p0, mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_44

    .line 465
    .end local v0    # "msg":Landroid/os/Message;
    :goto_25
    invoke-direct {p0, v4}, replyDisconnected(I)V

    .line 466
    iput-object v3, p0, mSrcHandler:Landroid/os/Handler;

    .line 468
    iget-object v1, p0, mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-nez v1, :cond_43

    iget-object v1, p0, mDstMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_43

    iget-object v1, p0, mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    if-eqz v1, :cond_43

    .line 469
    iget-object v1, p0, mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-interface {v1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 470
    iput-object v3, p0, mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 472
    :cond_43
    return-void

    .line 462
    :catch_44
    move-exception v1

    goto :goto_25
.end method

.method public disconnected()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, mSrcContext:Landroid/content/Context;

    .line 440
    iput-object v0, p0, mSrcHandler:Landroid/os/Handler;

    .line 441
    iput-object v0, p0, mSrcMessenger:Landroid/os/Messenger;

    .line 442
    iput-object v0, p0, mDstMessenger:Landroid/os/Messenger;

    .line 443
    iput-object v0, p0, mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 444
    iput-object v0, p0, mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 445
    return-void
.end method

.method public fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .registers 7
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    .prologue
    .line 293
    invoke-virtual {p0, p1, p2, p3}, connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v1

    .line 294
    .local v1, "status":I
    if-nez v1, :cond_f

    .line 295
    const v2, 0x11001

    invoke-virtual {p0, v2}, sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 296
    .local v0, "response":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 298
    .end local v0    # "response":Landroid/os/Message;
    :cond_f
    return v1
.end method

.method public replyToMessage(Landroid/os/Message;I)V
    .registers 4
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 580
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 581
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 582
    invoke-virtual {p0, p1, v0}, replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 583
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;II)V
    .registers 5
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 593
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 594
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 595
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 596
    invoke-virtual {p0, p1, v0}, replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 597
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;III)V
    .registers 6
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 608
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 609
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 610
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 611
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 612
    invoke-virtual {p0, p1, v0}, replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 613
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V
    .registers 7
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 626
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 627
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 628
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 629
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 630
    invoke-virtual {p0, p1, v0}, replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 631
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 5
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 641
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 642
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 643
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 644
    invoke-virtual {p0, p1, v0}, replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 645
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "dstMsg"    # Landroid/os/Message;

    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 566
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 571
    :goto_9
    return-void

    .line 567
    :catch_a
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO: handle replyToMessage RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public sendMessage(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 496
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)V

    .line 497
    return-void
.end method

.method public sendMessage(II)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 506
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 508
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 509
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)V

    .line 510
    return-void
.end method

.method public sendMessage(III)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 520
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 521
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 522
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 523
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 524
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)V

    .line 525
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 537
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 538
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 539
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 540
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 541
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)V

    .line 542
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 551
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 552
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 553
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 554
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)V

    .line 555
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 480
    iget-object v1, p0, mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 482
    :try_start_4
    iget-object v1, p0, mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 486
    :goto_9
    return-void

    .line 483
    :catch_a
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, replyDisconnected(I)V

    goto :goto_9
.end method

.method public sendMessageSynchronously(I)Landroid/os/Message;
    .registers 4
    .param p1, "what"    # I

    .prologue
    .line 665
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 666
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 667
    invoke-virtual {p0, v0}, sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 668
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(II)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 679
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 680
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 681
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 682
    invoke-virtual {p0, v0}, sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 683
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(III)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 695
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 696
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 697
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 698
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 699
    invoke-virtual {p0, v0}, sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 700
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 713
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 714
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 715
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 716
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 717
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 718
    invoke-virtual {p0, v0}, sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 719
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 730
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 731
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 732
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 733
    invoke-virtual {p0, v0}, sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 734
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 654
    iget-object v1, p0, mDstMessenger:Landroid/os/Messenger;

    # invokes: Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    invoke-static {v1, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->access$100(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 655
    .local v0, "resultMsg":Landroid/os/Message;
    return-object v0
.end method
