.class Lcom/android/settings/LteModeActivity$3;
.super Landroid/os/Handler;
.source "LteModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LteModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LteModeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/LteModeActivity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings/LteModeActivity$3;->this$0:Lcom/android/settings/LteModeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 235
    const-string v0, "LteModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK handler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/LteModeActivity$3;->this$0:Lcom/android/settings/LteModeActivity;

    # getter for: Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/LteModeActivity;->access$600(Lcom/android/settings/LteModeActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LteModeActivity$3;->this$0:Lcom/android/settings/LteModeActivity;

    # invokes: Lcom/android/settings/LteModeActivity;->getCardStatus()Z
    invoke-static {v1}, Lcom/android/settings/LteModeActivity;->access$500(Lcom/android/settings/LteModeActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/LteModeActivity$3;->this$0:Lcom/android/settings/LteModeActivity;

    # getter for: Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/LteModeActivity;->access$600(Lcom/android/settings/LteModeActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/LteModeActivity$3;->this$0:Lcom/android/settings/LteModeActivity;

    # getter for: Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/LteModeActivity;->access$600(Lcom/android/settings/LteModeActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LteModeActivity$3;->this$0:Lcom/android/settings/LteModeActivity;

    # invokes: Lcom/android/settings/LteModeActivity;->getCardStatus()Z
    invoke-static {v1}, Lcom/android/settings/LteModeActivity;->access$500(Lcom/android/settings/LteModeActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
