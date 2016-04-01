.class public Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 706
    iput-object p1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object p2, p0, mCb:Landroid/os/IBinder;

    .line 708
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 711
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 712
    :try_start_5
    const-string v0, "MediaFocusControl"

    const-string v2, "  AudioFocus   audio focus client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, mCb:Landroid/os/IBinder;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->access$2100(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 714
    monitor-exit v1

    .line 715
    return-void

    .line 714
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    return-object v0
.end method
