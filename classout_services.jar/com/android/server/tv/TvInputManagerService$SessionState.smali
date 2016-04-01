.class final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionState"
.end annotation


# instance fields
.field private final callingUid:I

.field private final client:Landroid/media/tv/ITvInputClient;

.field private hardwareSessionToken:Landroid/os/IBinder;

.field private final info:Landroid/media/tv/TvInputInfo;

.field private logUri:Landroid/net/Uri;

.field private final seq:I

.field private session:Landroid/media/tv/ITvInputSession;

.field private final sessionToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;III)V
    .registers 8
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "client"    # Landroid/media/tv/ITvInputClient;
    .param p5, "seq"    # I
    .param p6, "callingUid"    # I
    .param p7, "userId"    # I

    .prologue
    .line 1924
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    iput-object p2, p0, sessionToken:Landroid/os/IBinder;

    .line 1926
    iput-object p3, p0, info:Landroid/media/tv/TvInputInfo;

    .line 1927
    iput-object p4, p0, client:Landroid/media/tv/ITvInputClient;

    .line 1928
    iput p5, p0, seq:I

    .line 1929
    iput p6, p0, callingUid:I

    .line 1930
    iput p7, p0, userId:I

    .line 1931
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$1;)V
    .registers 9
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/media/tv/TvInputInfo;
    .param p4, "x3"    # Landroid/media/tv/ITvInputClient;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    .line 1911
    invoke-direct/range {p0 .. p7}, <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;III)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget-object v0, p0, session:Landroid/media/tv/ITvInputSession;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSession;

    .prologue
    .line 1911
    iput-object p1, p0, session:Landroid/media/tv/ITvInputSession;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget v0, p0, callingUid:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget-object v0, p0, sessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget-object v0, p0, info:Landroid/media/tv/TvInputInfo;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget v0, p0, userId:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget-object v0, p0, client:Landroid/media/tv/ITvInputClient;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget v0, p0, seq:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget-object v0, p0, hardwareSessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 1911
    iput-object p1, p0, hardwareSessionToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .prologue
    .line 1911
    iget-object v0, p0, logUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .prologue
    .line 1935
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1936
    const/4 v4, 0x0

    :try_start_8
    iput-object v4, p0, session:Landroid/media/tv/ITvInputSession;

    .line 1937
    iget-object v4, p0, client:Landroid/media/tv/ITvInputClient;
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_58

    if-eqz v4, :cond_15

    .line 1939
    :try_start_e
    iget-object v4, p0, client:Landroid/media/tv/ITvInputClient;

    iget v6, p0, seq:I

    invoke-interface {v4, v6}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_5b
    .catchall {:try_start_e .. :try_end_15} :catchall_58

    .line 1945
    :cond_15
    :goto_15
    :try_start_15
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v6, p0, userId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1946
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1947
    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v4, p0, sessionToken:Landroid/os/IBinder;

    iget-object v6, v2, hardwareSessionToken:Landroid/os/IBinder;

    if-ne v4, v6, :cond_29

    .line 1948
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, v2, sessionToken:Landroid/os/IBinder;

    const/16 v7, 0x3e8

    iget v8, p0, userId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V
    invoke-static {v4, v6, v7, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_46
    .catchall {:try_start_15 .. :try_end_46} :catchall_58

    .line 1951
    :try_start_46
    iget-object v4, v2, client:Landroid/media/tv/ITvInputClient;

    iget v6, v2, seq:I

    invoke-interface {v4, v6}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4d} :catch_4e
    .catchall {:try_start_46 .. :try_end_4d} :catchall_58

    goto :goto_29

    .line 1952
    :catch_4e
    move-exception v0

    .line 1953
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v4, "TvInputManagerService"

    const-string/jumbo v6, "error in onSessionReleased"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 1958
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_58
    move-exception v4

    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_58

    throw v4

    .line 1940
    :catch_5b
    move-exception v0

    .line 1941
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5c
    const-string v4, "TvInputManagerService"

    const-string/jumbo v6, "error in onSessionReleased"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 1957
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_65
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, sessionToken:Landroid/os/IBinder;

    iget v7, p0, userId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V
    invoke-static {v4, v6, v7}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 1958
    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_58

    .line 1959
    return-void
.end method
