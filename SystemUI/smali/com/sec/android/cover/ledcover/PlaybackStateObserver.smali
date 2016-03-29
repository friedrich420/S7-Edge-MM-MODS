.class public Lcom/sec/android/cover/ledcover/PlaybackStateObserver;
.super Ljava/lang/Object;
.source "PlaybackStateObserver.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/ledcover/PlaybackStateObserver$1;,
        Lcom/sec/android/cover/ledcover/PlaybackStateObserver$SessionCallback;,
        Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mBlackList:[Ljava/lang/String;


# instance fields
.field private mMediaController:Landroid/media/session/MediaController;

.field private mOnPlaybackStateChangedListener:Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->TAG:Ljava/lang/String;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.mmapp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.kidshome"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.kidsplat.media.kidsmusic"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.chromecast.remoteplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.videos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mBlackList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/ledcover/PlaybackStateObserver;)Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/ledcover/PlaybackStateObserver;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;

    return-object v0
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    if-nez p1, :cond_2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    .line 149
    :cond_1
    :goto_0
    monitor-exit p0

    .line 150
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 138
    :cond_4
    new-instance v0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver$SessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver$SessionCallback;-><init>(Lcom/sec/android/cover/ledcover/PlaybackStateObserver;Lcom/sec/android/cover/ledcover/PlaybackStateObserver$1;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 140
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isRelevant(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "result":Z
    sget-object v1, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mBlackList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mBlackList:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 57
    sget-object v1, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mBlackList:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 65
    .end local v0    # "result":Z
    :goto_0
    return v0

    .line 62
    .restart local v0    # "result":Z
    :cond_0
    sget-object v1, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRelevant packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    sget-object v6, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActiveSessionsChanged controllers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 76
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->isRelevant(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 81
    .local v2, "flags":J
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    .line 84
    .local v5, "playstate":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const-wide/16 v6, 0x2

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 86
    invoke-direct {p0, v0}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->updateController(Landroid/media/session/MediaController;)V

    .line 96
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "flags":J
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "playstate":I
    :cond_1
    :goto_0
    return-void

    .line 94
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->updateController(Landroid/media/session/MediaController;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    sget-object v1, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->TAG:Ljava/lang/String;

    const-string v2, "Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 103
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    .restart local v0    # "handler":Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 109
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->TAG:Ljava/lang/String;

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 115
    return-void
.end method
