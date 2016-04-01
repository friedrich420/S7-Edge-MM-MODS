.class final Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;
.super Landroid/os/Handler;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/LedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/LedCoverController;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 112
    iput-object p1, p0, this$0:Lcom/android/server/cover/LedCoverController;

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_5a

    .line 145
    :cond_7
    :goto_7
    return-void

    .line 120
    :pswitch_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_21

    .line 121
    iget-object v1, p0, this$0:Lcom/android/server/cover/LedCoverController;

    # setter for: Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z
    invoke-static {v1, v2}, Lcom/android/server/cover/LedCoverController;->access$002(Lcom/android/server/cover/LedCoverController;Z)Z

    .line 127
    :cond_13
    :goto_13
    iget-object v2, p0, this$0:Lcom/android/server/cover/LedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    # invokes: Lcom/android/server/cover/LedCoverController;->handleSendDataToLedCover(I[B)V
    invoke-static {v2, v3, v1}, Lcom/android/server/cover/LedCoverController;->access$100(Lcom/android/server/cover/LedCoverController;I[B)V

    goto :goto_7

    .line 122
    :cond_21
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_13

    .line 125
    iget-object v2, p0, this$0:Lcom/android/server/cover/LedCoverController;

    # setter for: Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z
    invoke-static {v2, v1}, Lcom/android/server/cover/LedCoverController;->access$002(Lcom/android/server/cover/LedCoverController;Z)Z

    goto :goto_13

    .line 130
    :pswitch_2d
    iget-object v3, p0, this$0:Lcom/android/server/cover/LedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_37

    :goto_33
    # invokes: Lcom/android/server/cover/LedCoverController;->handleUpdateLedCoverAttachState(Z)V
    invoke-static {v3, v1}, Lcom/android/server/cover/LedCoverController;->access$200(Lcom/android/server/cover/LedCoverController;Z)V

    goto :goto_7

    :cond_37
    move v1, v2

    goto :goto_33

    .line 133
    :pswitch_39
    iget-object v1, p0, this$0:Lcom/android/server/cover/LedCoverController;

    # setter for: Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z
    invoke-static {v1, v2}, Lcom/android/server/cover/LedCoverController;->access$002(Lcom/android/server/cover/LedCoverController;Z)Z

    .line 135
    :try_start_3e
    iget-object v1, p0, this$0:Lcom/android/server/cover/LedCoverController;

    # getter for: Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/LedCoverController;->access$300(Lcom/android/server/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 136
    iget-object v1, p0, this$0:Lcom/android/server/cover/LedCoverController;

    # getter for: Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/LedCoverController;->access$300(Lcom/android/server/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_53
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_53} :catch_54

    goto :goto_7

    .line 138
    :catch_54
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_7

    .line 118
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2d
        :pswitch_39
    .end packed-switch
.end method
