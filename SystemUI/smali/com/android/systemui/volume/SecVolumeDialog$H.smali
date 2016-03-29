.class final Lcom/android/systemui/volume/SecVolumeDialog$H;
.super Landroid/os/Handler;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 1

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    .line 1496
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1497
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1501
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1511
    :goto_0
    return-void

    .line 1502
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->showH(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4500(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    goto :goto_0

    .line 1503
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    goto :goto_0

    .line 1504
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4400(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 1505
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4400(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 1506
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5600(Lcom/android/systemui/volume/SecVolumeDialog;IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1507
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0

    .line 1508
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$3000(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v1

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4600(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    goto :goto_0

    .line 1509
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$H;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->updateDialogBottomMarginH()V
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5700(Lcom/android/systemui/volume/SecVolumeDialog;)V

    goto :goto_0

    .line 1501
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
    .end packed-switch
.end method
