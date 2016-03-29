.class final Lcom/android/systemui/volume/VolumeDialogController$W;
.super Landroid/os/Handler;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    .line 677
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 678
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 682
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 698
    :goto_0
    return-void

    .line 683
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onVolumeChangedW(II)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->access$800(Lcom/android/systemui/volume/VolumeDialogController;II)V

    goto :goto_0

    .line 684
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onDismissRequestedW(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$900(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_0

    .line 685
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onGetStateW()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$1000(Lcom/android/systemui/volume/VolumeDialogController;)V

    goto :goto_0

    .line 686
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    :goto_1
    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onSetRingerModeW(IZ)V
    invoke-static {v2, v3, v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$1100(Lcom/android/systemui/volume/VolumeDialogController;IZ)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 687
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onSetZenModeW(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$1200(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_0

    .line 688
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/Condition;

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onSetExitConditionW(Landroid/service/notification/Condition;)V
    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$1300(Lcom/android/systemui/volume/VolumeDialogController;Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 689
    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    :goto_2
    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamMuteW(IZ)V
    invoke-static {v2, v3, v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$1400(Lcom/android/systemui/volume/VolumeDialogController;IZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 690
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onLayoutDirectionChanged(I)V

    goto :goto_0

    .line 691
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$C;->onConfigurationChanged()V

    goto :goto_0

    .line 692
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamVolumeW(II)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->access$1600(Lcom/android/systemui/volume/VolumeDialogController;II)V

    goto :goto_0

    .line 693
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onSetActiveStreamW(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$1700(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_0

    .line 694
    :pswitch_b
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    :goto_3
    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onNotifyVisibleW(Z)V
    invoke-static {v2, v0}, Lcom/android/systemui/volume/VolumeDialogController;->access$1800(Lcom/android/systemui/volume/VolumeDialogController;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 695
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->onUserActivityW()V

    goto :goto_0

    .line 696
    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/volume/VolumeDialogController;->onShowSafetyWarningW(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->access$1900(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto/16 :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
