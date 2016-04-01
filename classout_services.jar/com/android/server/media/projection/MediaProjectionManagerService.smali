.class public final Lcom/android/server/media/projection/MediaProjectionManagerService;
.super Lcom/android/server/SystemService;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProjectionManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mDeathEaters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

.field private mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field private mProjectionToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 76
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mDeathEaters:Ljava/util/Map;

    .line 78
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-direct {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;-><init>()V

    iput-object v0, p0, mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 79
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 80
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, mMediaRouter:Landroid/media/MediaRouter;

    .line 81
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$1;)V

    iput-object v0, p0, mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    .line 82
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 83
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .prologue
    .line 56
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .prologue
    .line 56
    iget-object v0, p0, mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 56
    invoke-direct {p0, p1}, startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 56
    invoke-direct {p0, p1}, stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method static synthetic access$1400(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 56
    invoke-static {p0}, typeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/MediaRouter$RouteInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .prologue
    .line 56
    iget-object v0, p0, mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 56
    iput-object p1, p0, mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 56
    invoke-direct {p0, p1}, removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .prologue
    .line 56
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .prologue
    .line 56
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 56
    invoke-direct {p0, p1}, isValidMediaProjection(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/projection/MediaProjectionInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .prologue
    .line 56
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 56
    invoke-direct {p0, p1}, addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 56
    invoke-direct {p0, p1}, dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 127
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 133
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_8
    iget-object v1, p0, mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v1, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 135
    invoke-direct {p0, p1, v0}, linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V

    .line 136
    monitor-exit v2

    .line 137
    return-void

    .line 136
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 3
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 166
    iget-object v0, p0, mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 167
    return-void
.end method

.method private dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 3
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 170
    iget-object v0, p0, mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 171
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 192
    const-string v0, "MEDIA PROJECTION MANAGER (dumpsys media_projection)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_8
    const-string v0, "Media Projection: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_18

    .line 196
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->dump(Ljava/io/PrintWriter;)V

    .line 200
    :goto_16
    monitor-exit v1

    .line 201
    return-void

    .line 198
    :cond_18
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    .line 200
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 3

    .prologue
    .line 183
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_3
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v0, :cond_a

    .line 185
    const/4 v0, 0x0

    monitor-exit v1

    .line 187
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    monitor-exit v1

    goto :goto_9

    .line 188
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private isValidMediaProjection(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 174
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_3
    iget-object v0, p0, mProjectionToken:Landroid/os/IBinder;

    if-eqz v0, :cond_f

    .line 176
    iget-object v0, p0, mProjectionToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 178
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 179
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V
    .registers 7
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;
    .param p2, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 149
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 150
    .local v1, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 151
    iget-object v2, p0, mDeathEaters:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 155
    .end local v1    # "token":Landroid/os/IBinder;
    :goto_d
    return-void

    .line 152
    :catch_e
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaProjectionManagerService"

    const-string v3, "Unable to link to death for media projection monitoring callback"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 140
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_3
    invoke-direct {p0, p1}, unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 142
    iget-object v0, p0, mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 3
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 109
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 112
    :cond_9
    iget-object v0, p0, mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_16

    .line 113
    iget-object v0, p0, mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 115
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, mProjectionToken:Landroid/os/IBinder;

    .line 116
    iput-object p1, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 117
    invoke-direct {p0, p1}, dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 118
    return-void
.end method

.method private stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 3
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, mProjectionToken:Landroid/os/IBinder;

    .line 122
    iput-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 123
    invoke-direct {p0, p1}, dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 124
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 621
    packed-switch p0, :pswitch_data_12

    .line 629
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 623
    :pswitch_8
    const-string v0, "TYPE_SCREEN_CAPTURE"

    goto :goto_7

    .line 625
    :pswitch_b
    const-string v0, "TYPE_MIRRORING"

    goto :goto_7

    .line 627
    :pswitch_e
    const-string v0, "TYPE_PRESENTATION"

    goto :goto_7

    .line 621
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 158
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 159
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, mDeathEaters:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    .line 160
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    if-eqz v0, :cond_12

    .line 161
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 163
    :cond_12
    return-void
.end method


# virtual methods
.method public monitor()V
    .registers 3

    .prologue
    .line 105
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 87
    const-string/jumbo v0, "media_projection"

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$1;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 89
    iget-object v0, p0, mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x4

    iget-object v2, p0, mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 91
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 95
    iget-object v0, p0, mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 96
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_8
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_11

    .line 98
    iget-object v0, p0, mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 100
    :cond_11
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method
