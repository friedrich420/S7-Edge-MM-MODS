.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$HardwareListener;,
        Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;,
        Lcom/android/server/tv/TvInputManagerService$SessionCallback;,
        Lcom/android/server/tv/TvInputManagerService$ServiceCallback;,
        Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;,
        Lcom/android/server/tv/TvInputManagerService$SessionState;,
        Lcom/android/server/tv/TvInputManagerService$TvInputState;,
        Lcom/android/server/tv/TvInputManagerService$ServiceState;,
        Lcom/android/server/tv/TvInputManagerService$ClientState;,
        Lcom/android/server/tv/TvInputManagerService$UserState;,
        Lcom/android/server/tv/TvInputManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const-string v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, mCurrentUserId:I

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUserStates:Landroid/util/SparseArray;

    .line 130
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v0, p0, mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    .line 133
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V

    iput-object v0, p0, mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 135
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_3b
    iget v0, p0, mCurrentUserId:I

    invoke-direct {p0, v0}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_42

    throw v0
.end method

.method private abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 15
    .param p1, "serviceState"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 574
    invoke-direct {p0, p3}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v10

    .line 575
    .local v10, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v9, "sessionsToAbort":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    .line 577
    .local v8, "sessionToken":Landroid/os/IBinder;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 578
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_3e

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 580
    :cond_3e
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 583
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v8    # "sessionToken":Landroid/os/IBinder;
    :cond_42
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 584
    .restart local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v1

    invoke-direct {p0, v0, v1}, removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 585
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_46

    .line 588
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_73
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3600(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, p3}, updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 589
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 105
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, resolveCallingUserId(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 105
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/media/tv/ITvInputClient;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Landroid/view/InputChannel;
    .param p5, "x5"    # I

    .prologue
    .line 105
    invoke-direct/range {p0 .. p5}, sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/media/tv/ITvInputService;
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, releaseSessionLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, setMainLocked(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 105
    invoke-direct {p0, p1}, getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 105
    iget-object v0, p0, mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 105
    iget-object v0, p0, mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    return-object v0
.end method

.method static synthetic access$5400()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 105
    sget-object v0, sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/tv/TvInputManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 105
    iget v0, p0, mCurrentUserId:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 105
    iget-object v0, p0, mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 105
    invoke-static {p0, p1}, hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/media/tv/ITvInputManagerCallback;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, setStateLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvInputManagerService;I)Landroid/content/ContentResolver;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, getContentResolverForUser(I)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, switchUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, removeUser(I)V

    return-void
.end method

.method private buildTvContentRatingSystemListLocked(I)V
    .registers 13
    .param p1, "userId"    # I

    .prologue
    .line 371
    invoke-direct {p0, p1}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 372
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 374
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 375
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "intent":Landroid/content/Intent;
    const/16 v8, 0x80

    invoke-virtual {v3, v1, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 378
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 379
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 380
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_22

    .line 384
    const-string v8, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 385
    .local v7, "xmlResId":I
    if-nez v7, :cond_63

    .line 386
    const-string v8, "TvInputManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 391
    :cond_63
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7, v9}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 395
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "xmlResId":I
    :cond_71
    return-void
.end method

.method private buildTvInputListLocked(I[Ljava/lang/String;)V
    .registers 27
    .param p1, "userId"    # I
    .param p2, "updatedPackages"    # [Ljava/lang/String;

    .prologue
    .line 284
    invoke-direct/range {p0 .. p1}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v20

    .line 285
    .local v20, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->clear()V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 289
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.media.tv.TvInputService"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x84

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    .line 293
    .local v16, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v10, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_111

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 295
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 296
    .local v17, "si":Landroid/content/pm/ServiceInfo;
    const-string v21, "android.permission.BIND_TV_INPUT"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7a

    .line 297
    const-string v21, "TvInputManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipping TV input "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": it does not require the permission "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "android.permission.BIND_TV_INPUT"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 302
    :cond_7a
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .local v4, "component":Landroid/content/ComponentName;
    invoke-static {v13, v4}, hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_d9

    .line 304
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 305
    .local v15, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v15, :cond_cf

    .line 309
    new-instance v15, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .end local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v4, v1, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    .line 310
    .restart local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 323
    .end local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :goto_c0
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    .line 313
    .restart local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_cf
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->inputList:Ljava/util/List;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c0

    .line 317
    .end local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_d9
    :try_start_d9
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d9 .. :try_end_ea} :catch_eb
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_ea} :catch_20c

    goto :goto_c0

    .line 318
    :catch_eb
    move-exception v5

    .line 319
    .local v5, "e":Ljava/lang/Exception;
    :goto_ec
    const-string v21, "TvInputManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed to load TV input "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 326
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    :cond_111
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v11, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_152

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/tv/TvInputInfo;

    .line 331
    .local v8, "info":Landroid/media/tv/TvInputInfo;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v21

    invoke-virtual {v8}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 332
    .local v18, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v18, :cond_141

    .line 333
    new-instance v18, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .end local v18    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService$1;)V

    .line 335
    .restart local v18    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_141
    move-object/from16 v0, v18

    # setter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v0, v8}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1502(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    .line 336
    invoke-virtual {v8}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11a

    .line 339
    .end local v8    # "info":Landroid/media/tv/TvInputInfo;
    .end local v18    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_152
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_15a
    :goto_15a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1b2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 340
    .local v9, "inputId":Ljava/lang/String;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_17a

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_15a

    .line 342
    :cond_17a
    if-eqz p2, :cond_15a

    .line 344
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 345
    .restart local v4    # "component":Landroid/content/ComponentName;
    move-object/from16 v3, p2

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_18e
    if-ge v7, v12, :cond_15a

    aget-object v19, v3, v7

    .line 346
    .local v19, "updatedPackage":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1af

    .line 347
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_15a

    .line 345
    :cond_1af
    add-int/lit8 v7, v7, 0x1

    goto :goto_18e

    .line 355
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v7    # "i$":I
    .end local v9    # "inputId":Ljava/lang/String;
    .end local v12    # "len$":I
    .end local v19    # "updatedPackage":Ljava/lang/String;
    :cond_1b2
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1be
    :goto_1be
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1ff

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 356
    .restart local v9    # "inputId":Ljava/lang/String;
    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1be

    .line 357
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v8

    .line 358
    .restart local v8    # "info":Landroid/media/tv/TvInputInfo;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v21

    invoke-virtual {v8}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 359
    .restart local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v15, :cond_1f7

    .line 360
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v9, v1}, abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 362
    :cond_1f7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_1be

    .line 366
    .end local v8    # "info":Landroid/media/tv/TvInputInfo;
    .end local v9    # "inputId":Ljava/lang/String;
    .end local v15    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_1ff
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 367
    move-object/from16 v0, v20

    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0, v11}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1302(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;

    .line 368
    return-void

    .line 318
    .end local v11    # "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    .restart local v4    # "component":Landroid/content/ComponentName;
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "si":Landroid/content/pm/ServiceInfo;
    :catch_20c
    move-exception v5

    goto/16 :goto_ec
.end method

.method private clearSessionAndServiceStatesLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .prologue
    .line 435
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 436
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 438
    :try_start_1e
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_c

    .line 439
    :catch_26
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "TvInputManagerService"

    const-string/jumbo v5, "error in release"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_30
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 447
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 448
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v4

    if-eqz v4, :cond_60

    .line 450
    :try_start_55
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_60} :catch_6a

    .line 455
    :cond_60
    :goto_60
    iget-object v4, p0, mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_43

    .line 451
    :catch_6a
    move-exception v0

    .line 452
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "TvInputManagerService"

    const-string/jumbo v5, "error in unregisterCallback"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 457
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_74
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 458
    return-void
.end method

.method private createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    .registers 16
    .param p1, "service"    # Landroid/media/tv/ITvInputService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 593
    invoke-direct {p0, p3}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v10

    .line 594
    .local v10, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 598
    .local v9, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v7

    .line 601
    .local v7, "channels":[Landroid/view/InputChannel;
    new-instance v6, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    invoke-direct {v6, p0, v9, v7}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    .line 605
    .local v6, "callback":Landroid/media/tv/ITvInputSessionCallback;
    const/4 v0, 0x1

    :try_start_1e
    aget-object v0, v7, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v6, v1}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2b} :catch_31

    .line 612
    :goto_2b
    aget-object v0, v7, v11

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 613
    return-void

    .line 606
    :catch_31
    move-exception v8

    .line 607
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "TvInputManagerService"

    const-string/jumbo v1, "error in createSession"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    invoke-direct {p0, p2, p3}, removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 609
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_2b
.end method

.method private getContentResolverForUser(I)Landroid/content/ContentResolver;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 461
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 464
    .local v2, "user":Landroid/os/UserHandle;
    :try_start_5
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_13

    move-result-object v0

    .line 469
    .local v0, "context":Landroid/content/Context;
    :goto_e
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    return-object v3

    .line 465
    .end local v0    # "context":Landroid/content/Context;
    :catch_13
    move-exception v1

    .line 466
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "TvInputManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to create package contenxt as user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, mContext:Landroid/content/Context;

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_e
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 473
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 474
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_17

    .line 475
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$1;)V

    .line 476
    .restart local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    :cond_17
    return-object v0
.end method

.method private getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 482
    invoke-direct {p0, p2}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 483
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 484
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v0, :cond_39

    .line 485
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service state not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_39
    return-object v0
.end method

.method private getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3}, getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    invoke-direct {p0, v0}, getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method private getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 6
    .param p1, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 510
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    .line 511
    .local v0, "session":Landroid/media/tv/ITvInputSession;
    if-nez v0, :cond_23

    .line 512
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session not yet created for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_23
    return-object v0
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 9
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 492
    invoke-direct {p0, p3}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 493
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 494
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v0, :cond_29

    .line 495
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session state not found for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_29
    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_56

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    if-eq p2, v2, :cond_56

    .line 499
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal access to the session with token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 502
    :cond_56
    return-object v0
.end method

.method private static hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 279
    const-string v0, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .prologue
    .line 709
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 711
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_14
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 712
    :catch_18
    move-exception v1

    .line 713
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string/jumbo v4, "failed to report added input to callback"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 716
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    return-void
.end method

.method private notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .prologue
    .line 722
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 724
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_14
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 725
    :catch_18
    move-exception v1

    .line 726
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string/jumbo v4, "failed to report removed input to callback"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 729
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    return-void
.end method

.method private notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "targetCallback"    # Landroid/media/tv/ITvInputManagerCallback;

    .prologue
    .line 750
    if-nez p4, :cond_24

    .line 751
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 753
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_16
    invoke-interface {v0, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    .line 754
    :catch_1a
    move-exception v1

    .line 755
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string/jumbo v4, "failed to report state change to callback"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 760
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_24
    :try_start_24
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    .line 765
    :cond_27
    :goto_27
    return-void

    .line 761
    :catch_28
    move-exception v1

    .line 762
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string/jumbo v4, "failed to report state change to callback"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method private notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .prologue
    .line 735
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 737
    .local v0, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_14
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 738
    :catch_18
    move-exception v1

    .line 739
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string/jumbo v4, "failed to report updated input to callback"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 742
    .end local v0    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    return-void
.end method

.method private registerBroadcastReceivers()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v6, Lcom/android/server/tv/TvInputManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 260
    .local v6, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v4, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 262
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 276
    return-void
.end method

.method private releaseSessionLocked(Landroid/os/IBinder;II)V
    .registers 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 625
    const/4 v1, 0x0

    .line 627
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1

    .line 628
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 629
    invoke-direct {p0, p3}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 630
    .local v2, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v3

    if-ne p1, v3, :cond_1a

    .line 631
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, p2, p3}, setMainLocked(Landroid/os/IBinder;ZII)V

    .line 633
    :cond_1a
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_2 .. :try_end_21} :catch_41
    .catchall {:try_start_2 .. :try_end_21} :catchall_3a

    .line 638
    .end local v2    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_21
    if-eqz v1, :cond_26

    .line 639
    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2102(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    .line 642
    :cond_26
    :goto_26
    invoke-direct {p0, p1, p3}, removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 643
    return-void

    .line 635
    :catch_2a
    move-exception v3

    move-object v0, v3

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v3, "TvInputManagerService"

    const-string/jumbo v4, "error in releaseSession"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_3a

    .line 638
    if-eqz v1, :cond_26

    .line 639
    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2102(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    goto :goto_26

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v3

    if-eqz v1, :cond_40

    .line 639
    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2102(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    :cond_40
    throw v3

    .line 635
    :catch_41
    move-exception v3

    move-object v0, v3

    goto :goto_2c
.end method

.method private removeSessionStateLocked(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 646
    invoke-direct {p0, p2}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 647
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    if-ne p1, v6, :cond_e

    .line 651
    const/4 v6, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5, v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1902(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 655
    :cond_e
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 657
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v4, :cond_1b

    .line 685
    :goto_1a
    return-void

    .line 663
    :cond_1b
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 664
    .local v1, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v1, :cond_4b

    .line 665
    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3700(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 666
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 667
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_4b
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    .line 672
    .local v2, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v2, :cond_68

    .line 673
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 674
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v3, :cond_68

    .line 675
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 678
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_68
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {p0, v6, p2}, updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 681
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 682
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 684
    iget-object v6, p0, mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v0}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1a
.end method

.method private removeUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 414
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 415
    :try_start_3
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 416
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_f

    .line 417
    monitor-exit v2

    .line 431
    :goto_e
    return-void

    .line 419
    :cond_f
    invoke-direct {p0, v0}, clearSessionAndServiceStatesLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 422
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 423
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 424
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 425
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 426
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 427
    const/4 v1, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1902(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 429
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 430
    monitor-exit v2

    goto :goto_e

    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private resolveCallingUserId(IIILjava/lang/String;)I
    .registers 12
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "requestedUserId"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 520
    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move v4, v3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 9
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Landroid/os/IBinder;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "seq"    # I

    .prologue
    .line 618
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 622
    :goto_3
    return-void

    .line 619
    :catch_4
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string/jumbo v2, "error in onSessionCreated"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private setMainLocked(Landroid/os/IBinder;ZII)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "isMain"    # Z
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .prologue
    .line 689
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v3

    .line 690
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 691
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-direct {p0, v4, v5, p4}, getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v3

    .line 694
    :cond_14
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, p4}, getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v1

    .line 695
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 703
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_26
    return-void

    .line 698
    .restart local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_27
    invoke-direct {p0, v3}, getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    .line 699
    .local v2, "session":Landroid/media/tv/ITvInputSession;
    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_2e} :catch_39

    goto :goto_26

    .line 700
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "session":Landroid/media/tv/ITvInputSession;
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_2f
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    :goto_30
    const-string v4, "TvInputManagerService"

    const-string/jumbo v5, "error in setMain"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_39
    move-exception v0

    goto :goto_30
.end method

.method private setStateLocked(Ljava/lang/String;II)V
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .prologue
    .line 768
    invoke-direct {p0, p3}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 769
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 770
    .local v0, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 771
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$3900(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v1

    .line 772
    .local v1, "oldState":I
    # setter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$3902(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I

    .line 773
    if-eqz v2, :cond_36

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-nez v4, :cond_36

    invoke-static {v2}, shouldMaintainConnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 781
    :cond_35
    :goto_35
    return-void

    .line 778
    :cond_36
    if-eq v1, p2, :cond_35

    .line 779
    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, p2, v4}, notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    goto :goto_35
.end method

.method private static shouldMaintainConnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .registers 2
    .param p0, "serviceState"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .prologue
    .line 525
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private switchUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 398
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_3
    iget v0, p0, mCurrentUserId:I

    if-ne v0, p1, :cond_9

    .line 400
    monitor-exit v1

    .line 411
    :goto_8
    return-void

    .line 402
    :cond_9
    iget-object v0, p0, mUserStates:Landroid/util/SparseArray;

    iget v2, p0, mCurrentUserId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    invoke-direct {p0, v0}, clearSessionAndServiceStatesLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 404
    iput p1, p0, mCurrentUserId:I

    .line 405
    invoke-direct {p0, p1}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, p1}, buildTvContentRatingSystemListLocked(I)V

    .line 408
    iget-object v0, p0, mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v2, 0x3

    invoke-direct {p0, p1}, getContentResolverForUser(I)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 410
    monitor-exit v1

    goto :goto_8

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 530
    invoke-direct {p0, p2}, getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 531
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 532
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v2, :cond_11

    .line 569
    :cond_10
    :goto_10
    return-void

    .line 535
    :cond_11
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 536
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 540
    const/4 v4, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3002(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 542
    :cond_25
    invoke-static {v2}, shouldMaintainConnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v1

    .line 543
    .local v1, "maintainConnection":Z
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-nez v4, :cond_5c

    if-eqz v1, :cond_5c

    iget v4, p0, mCurrentUserId:I

    if-ne p2, v4, :cond_5c

    .line 546
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 555
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.tv.TvInputService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 556
    .local v0, "i":Landroid/content/Intent;
    iget-object v4, p0, mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    const v6, 0x2000001

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3102(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    goto :goto_10

    .line 560
    .end local v0    # "i":Landroid/content/Intent;
    :cond_5c
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-eqz v4, :cond_10

    if-nez v1, :cond_10

    .line 566
    iget-object v4, p0, mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 567
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .prologue
    .line 147
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_d

    .line 148
    invoke-direct {p0}, registerBroadcastReceivers()V

    .line 155
    :cond_7
    :goto_7
    iget-object v0, p0, mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    .line 156
    return-void

    .line 149
    :cond_d
    const/16 v0, 0x258

    if-ne p1, v0, :cond_7

    .line 150
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_14
    iget v0, p0, mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 152
    iget v0, p0, mCurrentUserId:I

    invoke-direct {p0, v0}, buildTvContentRatingSystemListLocked(I)V

    .line 153
    monitor-exit v1

    goto :goto_7

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 142
    const-string/jumbo v0, "tv_input"

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 143
    return-void
.end method
