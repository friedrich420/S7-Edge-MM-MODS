.class Lcom/sec/android/cover/ledcover/PlaybackStateObserver$SessionCallback;
.super Landroid/media/session/MediaController$Callback;
.source "PlaybackStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/PlaybackStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/PlaybackStateObserver;


# direct methods
.method private constructor <init>(Lcom/sec/android/cover/ledcover/PlaybackStateObserver;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver$SessionCallback;->this$0:Lcom/sec/android/cover/ledcover/PlaybackStateObserver;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/cover/ledcover/PlaybackStateObserver;Lcom/sec/android/cover/ledcover/PlaybackStateObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/cover/ledcover/PlaybackStateObserver;
    .param p2, "x1"    # Lcom/sec/android/cover/ledcover/PlaybackStateObserver$1;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver$SessionCallback;-><init>(Lcom/sec/android/cover/ledcover/PlaybackStateObserver;)V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 159
    # getter for: Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver$SessionCallback;->this$0:Lcom/sec/android/cover/ledcover/PlaybackStateObserver;

    # getter for: Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;
    invoke-static {v0}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->access$200(Lcom/sec/android/cover/ledcover/PlaybackStateObserver;)Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/PlaybackStateObserver$SessionCallback;->this$0:Lcom/sec/android/cover/ledcover/PlaybackStateObserver;

    # getter for: Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;
    invoke-static {v0}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver;->access$200(Lcom/sec/android/cover/ledcover/PlaybackStateObserver;)Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 163
    :cond_0
    return-void
.end method
