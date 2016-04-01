.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 81
    iput-object p1, p0, this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 84
    iget-object v5, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    if-nez v5, :cond_f

    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v3, :cond_f

    .line 128
    :goto_e
    return-void

    .line 88
    :cond_f
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_c0

    goto :goto_e

    .line 90
    :pswitch_15
    iget-object v4, p0, this$0:Landroid/telecom/InCallService;

    new-instance v5, Landroid/telecom/Phone;

    new-instance v6, Landroid/telecom/InCallAdapter;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v6, v3}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    invoke-direct {v5, v6}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;)V

    # setter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4, v5}, Landroid/telecom/InCallService;->access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    .line 91
    iget-object v3, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    iget-object v4, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 92
    iget-object v3, p0, this$0:Landroid/telecom/InCallService;

    iget-object v4, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    goto :goto_e

    .line 95
    :pswitch_43
    iget-object v3, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_e

    .line 98
    :pswitch_51
    iget-object v3, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_e

    .line 101
    :pswitch_5f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 103
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_63
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "remaining":Ljava/lang/String;
    iget-object v3, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_63 .. :try_end_74} :catchall_78

    .line 107
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_e

    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    :catchall_78
    move-exception v3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    .line 112
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7d
    iget-object v3, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/CallAudioState;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    goto :goto_e

    .line 115
    :pswitch_8b
    iget-object v5, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_9a

    :goto_95
    invoke-virtual {v5, v3}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    goto/16 :goto_e

    :cond_9a
    move v3, v4

    goto :goto_95

    .line 118
    :pswitch_9c
    iget-object v5, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_ab

    :goto_a6
    invoke-virtual {v5, v3}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    goto/16 :goto_e

    :cond_ab
    move v3, v4

    goto :goto_a6

    .line 122
    :pswitch_ad
    iget-object v3, p0, this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalChangeInContent(I)V

    goto/16 :goto_e

    .line 88
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_43
        :pswitch_51
        :pswitch_5f
        :pswitch_7d
        :pswitch_8b
        :pswitch_9c
        :pswitch_ad
    .end packed-switch
.end method
