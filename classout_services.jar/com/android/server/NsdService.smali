.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$1;,
        Lcom/android/server/NsdService$ClientInfo;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NsdStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x60000

.field private static final CMD_TO_STRING_COUNT:I = 0x13

.field private static final DBG:Z = true

.field private static final MDNS_TAG:Ljava/lang/String; = "mDnsConnector"

.field private static final TAG:Ljava/lang/String; = "NsdService"

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private INVALID_ID:I

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIdToClientInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

.field private mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, sCmdToString:[Ljava/lang/String;

    .line 85
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "DISCOVER"

    aput-object v2, v0, v1

    .line 86
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "STOP-DISCOVER"

    aput-object v2, v0, v1

    .line 87
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "REGISTER"

    aput-object v2, v0, v1

    .line 88
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "UNREGISTER"

    aput-object v2, v0, v1

    .line 89
    sget-object v0, sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "RESOLVE"

    aput-object v2, v0, v1

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 577
    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mClients:Ljava/util/HashMap;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mIdToClientInfoMap:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, INVALID_ID:I

    .line 78
    iput v1, p0, mUniqueId:I

    .line 575
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    .line 578
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 579
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 581
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    const-string/jumbo v2, "mdns"

    const/16 v3, 0xa

    const-string/jumbo v4, "mDnsConnector"

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    .line 584
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine;

    const-string v1, "NsdService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;)V

    iput-object v0, p0, mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    .line 585
    iget-object v0, p0, mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0}, Lcom/android/server/NsdService$NsdStateMachine;->start()V

    .line 587
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "mDnsConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 588
    .local v7, "th":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 589
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 57
    invoke-static {p0}, cmdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NsdService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    invoke-direct {p0}, isNsdEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/NsdService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    invoke-direct {p0}, startMDnsDaemon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/NsdService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    iget-object v0, p0, mIdToClientInfoMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/NsdService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    invoke-direct {p0}, getUniqueId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, discoverServices(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    iget-object v0, p0, mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/NsdService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, stopServiceDiscovery(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/NsdService;Landroid/os/Message;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, registerService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/NsdService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, unregisterService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NsdService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/NsdService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, stopResolveService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, getAddrInfo(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/NsdService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, stopGetAddrInfo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/NsdService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    iget-object v0, p0, mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    iget-object v0, p0, mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NsdService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;

    .prologue
    .line 57
    invoke-direct {p0}, stopMDnsDaemon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NsdService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NsdService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, sendNsdStateChangeBroadcast(Z)V

    return-void
.end method

.method private static cmdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cmd"    # I

    .prologue
    .line 93
    const/high16 v0, 0x60000

    sub-int/2addr p0, v0

    .line 94
    if-ltz p0, :cond_f

    sget-object v0, sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_f

    .line 95
    sget-object v0, sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 97
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NsdService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Lcom/android/server/NsdService;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    .line 593
    .local v0, "service":Lcom/android/server/NsdService;
    iget-object v1, v0, mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 594
    return-object v0
.end method

.method private discoverServices(ILjava/lang/String;)Z
    .registers 11
    .param p1, "discoveryId"    # I
    .param p2, "serviceType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 758
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "discoverServices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :try_start_25
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "discover"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_25 .. :try_end_40} :catch_41

    .line 765
    :goto_40
    return v1

    .line 761
    :catch_41
    move-exception v0

    .line 762
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to discoverServices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 763
    goto :goto_40
.end method

.method private getAddrInfo(ILjava/lang/String;)Z
    .registers 11
    .param p1, "resolveId"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 803
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAdddrInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :try_start_1b
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "getaddrinfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_36} :catch_37

    .line 810
    :goto_36
    return v1

    .line 806
    :catch_37
    move-exception v0

    .line 807
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getAddrInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 808
    goto :goto_36
.end method

.method private getUniqueId()I
    .registers 3

    .prologue
    .line 632
    iget v0, p0, mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mUniqueId:I

    iget v1, p0, INVALID_ID:I

    if-ne v0, v1, :cond_11

    iget v0, p0, mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mUniqueId:I

    .line 633
    :goto_10
    return v0

    :cond_11
    iget v0, p0, mUniqueId:I

    goto :goto_10
.end method

.method private isNsdEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 626
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "nsd_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_25

    .line 627
    .local v0, "ret":Z
    :goto_c
    const-string v1, "NsdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network service discovery enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return v0

    .line 626
    .end local v0    # "ret":Z
    :cond_25
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 845
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 846
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 847
    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 15
    .param p1, "regId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 708
    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerService: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :try_start_23
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "mdnssd"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "register"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    move-result-object v5

    .line 715
    .local v5, "txtRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_6c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_6c} :catch_aa

    .line 718
    .local v3, "key":Ljava/lang/String;
    :try_start_6c
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 719
    .local v4, "recordValue":[B
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s=%s"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v9, v6

    const/4 v10, 0x1

    if-eqz v4, :cond_c5

    new-instance v6, Ljava/lang/String;

    const-string v11, "UTF_8"

    invoke-direct {v6, v4, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_86
    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_8f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6c .. :try_end_8f} :catch_90
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6c .. :try_end_8f} :catch_aa

    goto :goto_60

    .line 721
    .end local v4    # "recordValue":[B
    :catch_90
    move-exception v1

    .line 722
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_91
    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode txtRecord "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_91 .. :try_end_a9} :catch_aa

    goto :goto_60

    .line 727
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "txtRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catch_aa
    move-exception v1

    .line 728
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to execute registerService "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v6, 0x0

    .line 731
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :goto_c4
    return v6

    .line 719
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "recordValue":[B
    .restart local v5    # "txtRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_c5
    :try_start_c5
    const-string v6, ""
    :try_end_c7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c5 .. :try_end_c7} :catch_90
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c5 .. :try_end_c7} :catch_aa

    goto :goto_86

    .line 726
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "recordValue":[B
    :cond_c8
    :try_start_c8
    iget-object v6, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_cd
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c8 .. :try_end_cd} :catch_aa

    .line 731
    const/4 v6, 0x1

    goto :goto_c4
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 851
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 855
    :goto_4
    return-void

    .line 852
    :cond_5
    invoke-direct {p0, p1}, obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 853
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 854
    iget-object v1, p0, mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 858
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 863
    :goto_4
    return-void

    .line 859
    :cond_5
    invoke-direct {p0, p1}, obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 860
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 861
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 862
    iget-object v1, p0, mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 866
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 871
    :goto_4
    return-void

    .line 867
    :cond_5
    invoke-direct {p0, p1}, obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 868
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 869
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 870
    iget-object v1, p0, mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 11
    .param p1, "resolveId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 780
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :try_start_25
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "resolve"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "local."

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_25 .. :try_end_51} :catch_52

    .line 788
    :goto_51
    return v1

    .line 784
    :catch_52
    move-exception v0

    .line 785
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolveService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 786
    goto :goto_51
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 617
    if-eqz p1, :cond_1d

    .line 618
    const-string/jumbo v1, "nsd_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    :goto_15
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 623
    return-void

    .line 620
    :cond_1d
    const-string/jumbo v1, "nsd_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_15
.end method

.method private startMDnsDaemon()Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 686
    const-string v3, "NsdService"

    const-string/jumbo v4, "startMDnsDaemon"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :try_start_a
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "start-service"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 693
    :goto_1b
    return v1

    .line 689
    :catch_1c
    move-exception v0

    .line 690
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start daemon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 691
    goto :goto_1b
.end method

.method private stopGetAddrInfo(I)Z
    .registers 10
    .param p1, "resolveId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 814
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGetAdddrInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :try_start_1b
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "stop-getaddrinfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_33} :catch_34

    .line 821
    :goto_33
    return v1

    .line 817
    :catch_34
    move-exception v0

    .line 818
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stopGetAddrInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 819
    goto :goto_33
.end method

.method private stopMDnsDaemon()Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 697
    const-string v3, "NsdService"

    const-string/jumbo v4, "stopMDnsDaemon"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :try_start_a
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "stop-service"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 704
    :goto_1b
    return v1

    .line 700
    :catch_1c
    move-exception v0

    .line 701
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start daemon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 702
    goto :goto_1b
.end method

.method private stopResolveService(I)Z
    .registers 10
    .param p1, "resolveId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 792
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopResolveService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :try_start_1b
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "stop-resolve"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_33} :catch_34

    .line 799
    :goto_33
    return v1

    .line 795
    :catch_34
    move-exception v0

    .line 796
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stop resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 797
    goto :goto_33
.end method

.method private stopServiceDiscovery(I)Z
    .registers 10
    .param p1, "discoveryId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 769
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopServiceDiscovery: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :try_start_1b
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "stop-discover"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_33} :catch_34

    .line 776
    :goto_33
    return v1

    .line 772
    :catch_34
    move-exception v0

    .line 773
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stopServiceDiscovery "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 774
    goto :goto_33
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 552
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 553
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 554
    .local v0, "c":C
    if-ne v0, v5, :cond_83

    .line 555
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_3d

    .line 556
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end of escape sequence in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v0    # "c":C
    :cond_38
    :goto_38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 559
    .restart local v0    # "c":C
    :cond_3d
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 560
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_83

    if-eq v0, v5, :cond_83

    .line 561
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_68

    .line 562
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end of escape sequence in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 565
    :cond_68
    add-int/lit8 v3, v0, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    int-to-char v0, v3

    .line 566
    add-int/lit8 v1, v1, 0x2

    .line 569
    :cond_83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private unregisterService(I)Z
    .registers 10
    .param p1, "regId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :try_start_1b
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "stop-register"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_33} :catch_34

    .line 742
    :goto_33
    return v1

    .line 738
    :catch_34
    move-exception v0

    .line 739
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute unregisterService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 740
    goto :goto_33
.end method

.method private updateService(ILandroid/net/nsd/DnsSdTxtRecord;)Z
    .registers 11
    .param p1, "regId"    # I
    .param p2, "t"    # Landroid/net/nsd/DnsSdTxtRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 746
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-nez p2, :cond_28

    .line 754
    :goto_27
    return v1

    .line 749
    :cond_28
    :try_start_28
    iget-object v3, p0, mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "mdnssd"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "update"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_52
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_52} :catch_54

    move v1, v2

    .line 754
    goto :goto_27

    .line 750
    :catch_54
    move-exception v0

    .line 751
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to updateServices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 826
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ServiceDiscoverService from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    :goto_32
    return-void

    .line 834
    :cond_33
    iget-object v2, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 835
    .local v0, "client":Lcom/android/server/NsdService$ClientInfo;
    const-string v2, "Client Info"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3d

    .line 839
    .end local v0    # "client":Lcom/android/server/NsdService$ClientInfo;
    :cond_52
    iget-object v2, p0, mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_32
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 4

    .prologue
    .line 598
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v1}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 604
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "nsd_on"

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :goto_11
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    if-eqz p1, :cond_21

    .line 608
    iget-object v0, p0, mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    const v1, 0x60018

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    .line 612
    :goto_1e
    return-void

    .line 606
    :cond_1f
    const/4 v0, 0x0

    goto :goto_11

    .line 610
    :cond_21
    iget-object v0, p0, mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    const v1, 0x60019

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    goto :goto_1e
.end method
