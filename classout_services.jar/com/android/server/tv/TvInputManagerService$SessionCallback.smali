.class final Lcom/android/server/tv/TvInputManagerService$SessionCallback;
.super Landroid/media/tv/ITvInputSessionCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionCallback"
.end annotation


# instance fields
.field private final mChannels:[Landroid/view/InputChannel;

.field private final mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V
    .registers 4
    .param p2, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p3, "channels"    # [Landroid/view/InputChannel;

    .prologue
    .line 2128
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;-><init>()V

    .line 2129
    iput-object p2, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2130
    iput-object p3, p0, mChannels:[Landroid/view/InputChannel;

    .line 2131
    return-void
.end method

.method private addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z
    .registers 10
    .param p1, "session"    # Landroid/media/tv/ITvInputSession;

    .prologue
    const/4 v4, 0x0

    .line 2156
    :try_start_1
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_54

    .line 2162
    iget-object v5, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2163
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v6}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2164
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2165
    .local v0, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-nez v0, :cond_45

    .line 2166
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .end local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    iget-object v5, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 2168
    .restart local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    const/4 v5, 0x0

    :try_start_3b
    invoke-interface {v1, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_5e

    .line 2173
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    :cond_45
    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3700(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2176
    const/4 v4, 0x1

    .end local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v1    # "clientToken":Landroid/os/IBinder;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :goto_53
    return v4

    .line 2157
    :catch_54
    move-exception v2

    .line 2158
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "TvInputManagerService"

    const-string/jumbo v6, "session process has already died"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 2169
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .restart local v1    # "clientToken":Landroid/os/IBinder;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_5e
    move-exception v2

    .line 2170
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "TvInputManagerService"

    const-string v6, "client process has already died"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method


# virtual methods
.method public onChannelRetuned(Landroid/net/Uri;)V
    .registers 6
    .param p1, "channelUri"    # Landroid/net/Uri;

    .prologue
    .line 2181
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2185
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2186
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2198
    :goto_18
    return-void

    .line 2193
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onChannelRetuned(Landroid/net/Uri;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2197
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2194
    :catch_2d
    move-exception v0

    .line 2195
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onChannelRetuned"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onContentAllowed()V
    .registers 5

    .prologue
    .line 2270
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2274
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2275
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2283
    :goto_18
    return-void

    .line 2278
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/media/tv/ITvInputClient;->onContentAllowed(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2282
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2279
    :catch_2d
    move-exception v0

    .line 2280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onContentAllowed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onContentBlocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "rating"    # Ljava/lang/String;

    .prologue
    .line 2287
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2291
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2292
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2300
    :goto_18
    return-void

    .line 2295
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onContentBlocked(Ljava/lang/String;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2299
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2296
    :catch_2d
    move-exception v0

    .line 2297
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onContentBlocked"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onLayoutSurface(IIII)V
    .registers 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2304
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2309
    :try_start_7
    iget-object v0, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    if-nez v0, :cond_19

    .line 2310
    :cond_17
    monitor-exit v7
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2e

    .line 2319
    :goto_18
    return-void

    .line 2313
    :cond_19
    :try_start_19
    iget-object v0, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputClient;->onLayoutSurface(IIIII)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2c} :catch_31
    .catchall {:try_start_19 .. :try_end_2c} :catchall_2e

    .line 2318
    :goto_2c
    :try_start_2c
    monitor-exit v7

    goto :goto_18

    :catchall_2e
    move-exception v0

    monitor-exit v7
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_2e

    throw v0

    .line 2315
    :catch_31
    move-exception v6

    .line 2316
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_32
    const-string v0, "TvInputManagerService"

    const-string/jumbo v1, "error in onLayoutSurface"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_2e

    goto :goto_2c
.end method

.method public onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "session"    # Landroid/media/tv/ITvInputSession;
    .param p2, "hardwareSessionToken"    # Landroid/os/IBinder;

    .prologue
    .line 2138
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2139
    :try_start_7
    iget-object v0, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2102(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    .line 2140
    iget-object v0, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3802(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2141
    if-eqz p1, :cond_49

    invoke-direct {p0, p1}, addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2142
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, mChannels:[Landroid/view/InputChannel;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 2150
    :goto_3f
    iget-object v0, p0, mChannels:[Landroid/view/InputChannel;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2151
    monitor-exit v6

    .line 2152
    return-void

    .line 2146
    :cond_49
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 2147
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_3f

    .line 2151
    :catchall_78
    move-exception v0

    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_7 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    .prologue
    .line 2323
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2327
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2328
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2336
    :goto_18
    return-void

    .line 2331
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, p2, v3}, Landroid/media/tv/ITvInputClient;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2335
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2332
    :catch_2d
    move-exception v0

    .line 2333
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onSessionEvent"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onTimeShiftCurrentPositionChanged(J)V
    .registers 8
    .param p1, "timeMs"    # J

    .prologue
    .line 2374
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2378
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2379
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2388
    :goto_18
    return-void

    .line 2382
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, p2, v3}, Landroid/media/tv/ITvInputClient;->onTimeShiftCurrentPositionChanged(JI)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2387
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2384
    :catch_2d
    move-exception v0

    .line 2385
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onTimeShiftCurrentPositionChanged"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onTimeShiftStartPositionChanged(J)V
    .registers 8
    .param p1, "timeMs"    # J

    .prologue
    .line 2357
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2361
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2362
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2370
    :goto_18
    return-void

    .line 2365
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, p2, v3}, Landroid/media/tv/ITvInputClient;->onTimeShiftStartPositionChanged(JI)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2369
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2366
    :catch_2d
    move-exception v0

    .line 2367
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onTimeShiftStartPositionChanged"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onTimeShiftStatusChanged(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 2340
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2344
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2345
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2353
    :goto_18
    return-void

    .line 2348
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onTimeShiftStatusChanged(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2352
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2349
    :catch_2d
    move-exception v0

    .line 2350
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onTimeShiftStatusChanged"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onTrackSelected(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    .line 2219
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2223
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2224
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2232
    :goto_18
    return-void

    .line 2227
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, p2, v3}, Landroid/media/tv/ITvInputClient;->onTrackSelected(ILjava/lang/String;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2231
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2228
    :catch_2d
    move-exception v0

    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onTrackSelected"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onTracksChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2202
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2206
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2207
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2215
    :goto_18
    return-void

    .line 2210
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onTracksChanged(Ljava/util/List;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2214
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2211
    :catch_2d
    move-exception v0

    .line 2212
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onTracksChanged"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onVideoAvailable()V
    .registers 5

    .prologue
    .line 2236
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2240
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2241
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2249
    :goto_18
    return-void

    .line 2244
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/media/tv/ITvInputClient;->onVideoAvailable(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2248
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2245
    :catch_2d
    move-exception v0

    .line 2246
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onVideoAvailable"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method

.method public onVideoUnavailable(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    .line 2253
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2257
    :try_start_7
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2100(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2258
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2a

    .line 2266
    :goto_18
    return-void

    .line 2261
    :cond_19
    :try_start_19
    iget-object v1, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v3, p0, mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onVideoUnavailable(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2d
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    .line 2265
    :goto_28
    :try_start_28
    monitor-exit v2

    goto :goto_18

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 2262
    :catch_2d
    move-exception v0

    .line 2263
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v1, "TvInputManagerService"

    const-string/jumbo v3, "error in onVideoUnavailable"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a

    goto :goto_28
.end method
