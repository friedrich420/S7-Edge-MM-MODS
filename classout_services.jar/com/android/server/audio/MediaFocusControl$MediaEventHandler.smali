.class Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 393
    iput-object p1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 394
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 399
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_62

    .line 443
    :goto_5
    :pswitch_5
    return-void

    .line 401
    :pswitch_6
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayClear()V
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$900(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_5

    .line 406
    :pswitch_c
    iget-object v2, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$1000(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V

    goto :goto_5

    .line 410
    :pswitch_18
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemote()V
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$1100(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_5

    .line 414
    :pswitch_1e
    iget-object v2, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteVolumeObserver;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    invoke-static {v2, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->access$1200(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_5

    .line 420
    :pswitch_2a
    iget-object v2, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteControlDisplay;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->access$1300(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_5

    .line 425
    :pswitch_38
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemoteControlDisplays()V
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$1400(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_5

    .line 429
    :pswitch_3e
    iget-object v2, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_5

    .line 433
    :pswitch_48
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 435
    :try_start_4d
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1500()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_59
    .catchall {:try_start_4d .. :try_end_54} :catchall_56

    .line 439
    :goto_54
    :try_start_54
    monitor-exit v2

    goto :goto_5

    :catchall_56
    move-exception v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_56

    throw v1

    .line 436
    :catch_59
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5a
    const-string v1, "MediaFocusControl"

    const-string v3, "EXCEPTION : mAudioFocusLock didn\'t notified and will be notified automatically"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_56

    goto :goto_54

    .line 399
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_18
        :pswitch_5
        :pswitch_1e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2a
        :pswitch_38
        :pswitch_3e
        :pswitch_48
    .end packed-switch
.end method
