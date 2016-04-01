.class Lcom/android/server/audio/MediaFocusControl$2;
.super Ljava/lang/Thread;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;

.field final synthetic val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 3

    .prologue
    .line 778
    iput-object p1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    iput-object p2, p0, val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 781
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 782
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$2200(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 783
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_2b

    .line 794
    :goto_12
    return-void

    .line 786
    :cond_13
    :try_start_13
    iget-object v3, p0, val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$2200(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_2e
    .catchall {:try_start_13 .. :try_end_29} :catchall_2b

    .line 793
    :goto_29
    :try_start_29
    monitor-exit v2

    goto :goto_12

    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v1

    .line 789
    :catch_2e
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2f
    const-string v1, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_2b

    goto :goto_29
.end method
