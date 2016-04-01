.class final Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 199
    iput-object p1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 201
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 205
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_f6

    .line 261
    :cond_6
    :goto_6
    return-void

    .line 207
    :pswitch_7
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-virtual {v1}, Lcom/android/server/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V

    goto :goto_6

    .line 210
    :pswitch_d
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$000(Lcom/android/server/cover/NfcLedCoverController;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_37

    .line 211
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$100(Lcom/android/server/cover/NfcLedCoverController;)V

    .line 216
    :goto_1c
    :try_start_1c
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$300(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 217
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$300(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_31} :catch_32

    goto :goto_6

    .line 219
    :catch_32
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6

    .line 213
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_37
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    const/16 v2, 0x12

    const/4 v3, 0x0

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->access$200(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    goto :goto_1c

    .line 225
    :pswitch_40
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # setter for: Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I
    invoke-static {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$402(Lcom/android/server/cover/NfcLedCoverController;I)I

    .line 227
    :pswitch_45
    iget-object v2, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v2, v3, v1}, Lcom/android/server/cover/NfcLedCoverController;->access$200(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    .line 229
    :try_start_52
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 233
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_8e} :catch_90

    goto/16 :goto_6

    .line 235
    :catch_90
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_6

    .line 240
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :pswitch_96
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handlePollEventTouch(I)V
    invoke-static {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;I)V

    goto/16 :goto_6

    .line 243
    :pswitch_9f
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleEventResponse(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->access$800(Lcom/android/server/cover/NfcLedCoverController;II)V

    goto/16 :goto_6

    .line 246
    :pswitch_aa
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V
    invoke-static {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$900(Lcom/android/server/cover/NfcLedCoverController;I)V

    .line 248
    :try_start_b1
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 252
    iget-object v1, p0, this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_ed
    .catch Ljava/lang/IllegalStateException; {:try_start_b1 .. :try_end_ed} :catch_ef

    goto/16 :goto_6

    .line 254
    :catch_ef
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_6

    .line 205
    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_40
        :pswitch_d
        :pswitch_96
        :pswitch_9f
        :pswitch_45
        :pswitch_aa
        :pswitch_7
    .end packed-switch
.end method
