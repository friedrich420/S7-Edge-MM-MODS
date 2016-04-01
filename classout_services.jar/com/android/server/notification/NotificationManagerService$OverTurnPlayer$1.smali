.class Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/samsung/android/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

.field final synthetic val$this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3

    .prologue
    .line 4518
    iput-object p1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iput-object p2, p0, val$this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Lcom/samsung/android/motion/MREvent;)V
    .registers 6
    .param p1, "motionEvent"    # Lcom/samsung/android/motion/MREvent;

    .prologue
    const/4 v3, 0x0

    .line 4520
    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_b0

    .line 4538
    :goto_8
    return-void

    .line 4523
    :pswitch_9
    :try_start_9
    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 4524
    .local v0, "player":Landroid/media/IRingtonePlayer;
    if-eqz v0, :cond_18

    .line 4525
    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_4a
    .catchall {:try_start_9 .. :try_end_18} :catchall_7d

    .line 4529
    :cond_18
    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 4530
    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 4532
    :cond_3b
    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 4534
    const-string v1, "NotificationService"

    const-string v2, "MREvent.FLIP_TOP_TO_BOTTOM"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4527
    .end local v0    # "player":Landroid/media/IRingtonePlayer;
    :catch_4a
    move-exception v1

    .line 4529
    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 4530
    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 4532
    :cond_6e
    iget-object v1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 4534
    const-string v1, "NotificationService"

    const-string v2, "MREvent.FLIP_TOP_TO_BOTTOM"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4529
    :catchall_7d
    move-exception v1

    iget-object v2, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    if-eqz v2, :cond_a1

    iget-object v2, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 4530
    iget-object v2, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 4532
    :cond_a1
    iget-object v2, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 4534
    const-string v2, "NotificationService"

    const-string v3, "MREvent.FLIP_TOP_TO_BOTTOM"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .line 4520
    :pswitch_data_b0
    .packed-switch 0xa
        :pswitch_9
    .end packed-switch
.end method
