.class Lcom/android/settings/DataSlotChoice$SwitchHandler;
.super Landroid/os/Handler;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/android/settings/DataSlotChoice;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 635
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 674
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 675
    return-void

    .line 637
    :pswitch_0
    const-string v3, "DataSlotChoice"

    const-string v4, " SwitchHandler setChecked , true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->setSwitchChecked(Z)V
    invoke-static {v3, v2}, Lcom/android/settings/DataSlotChoice;->access$1000(Lcom/android/settings/DataSlotChoice;Z)V

    goto :goto_0

    .line 641
    :pswitch_1
    const-string v2, "DataSlotChoice"

    const-string v3, " SwitchHandler setChecked , false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->setSwitchChecked(Z)V
    invoke-static {v2, v0}, Lcom/android/settings/DataSlotChoice;->access$1000(Lcom/android/settings/DataSlotChoice;Z)V

    goto :goto_0

    .line 645
    :pswitch_2
    const-string v3, "DataSlotChoice"

    const-string v4, " SwitchHandler setEnabl , true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v3}, Lcom/android/settings/DataSlotChoice;->access$1100(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 647
    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # setter for: Lcom/android/settings/DataSlotChoice;->isReadySlot:Z
    invoke-static {v3, v2}, Lcom/android/settings/DataSlotChoice;->access$1202(Lcom/android/settings/DataSlotChoice;Z)Z

    .line 648
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->updateUi()V
    invoke-static {v2}, Lcom/android/settings/DataSlotChoice;->access$000(Lcom/android/settings/DataSlotChoice;)V

    goto :goto_0

    .line 651
    :pswitch_3
    const-string v2, "DataSlotChoice"

    const-string v3, " SwitchHandler setEnabl , false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/DataSlotChoice;->access$1100(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 653
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # setter for: Lcom/android/settings/DataSlotChoice;->isReadySlot:Z
    invoke-static {v2, v0}, Lcom/android/settings/DataSlotChoice;->access$1202(Lcom/android/settings/DataSlotChoice;Z)Z

    goto :goto_0

    .line 656
    :pswitch_4
    const-string v3, "DataSlotChoice"

    const-string v4, " SwitchHandler SWITCH_DELAYREADY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/DataSlotChoice;->access$200(Lcom/android/settings/DataSlotChoice;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 659
    .local v1, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_1

    .line 660
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 662
    .local v0, "isEnableData":Z
    :cond_0
    const-string v3, "DataSlotChoice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handleMessage , isEnableData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v3}, Lcom/android/settings/DataSlotChoice;->access$1100(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 665
    .end local v0    # "isEnableData":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # setter for: Lcom/android/settings/DataSlotChoice;->isReadySlot:Z
    invoke-static {v3, v2}, Lcom/android/settings/DataSlotChoice;->access$1202(Lcom/android/settings/DataSlotChoice;Z)Z

    goto/16 :goto_0

    .line 668
    .end local v1    # "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    :pswitch_5
    const-string v2, "DataSlotChoice"

    const-string v3, " SwitchHandler updateUi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->updateUi()V
    invoke-static {v2}, Lcom/android/settings/DataSlotChoice;->access$000(Lcom/android/settings/DataSlotChoice;)V

    goto/16 :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
