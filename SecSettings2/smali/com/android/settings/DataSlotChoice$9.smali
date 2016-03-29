.class Lcom/android/settings/DataSlotChoice$9;
.super Landroid/content/BroadcastReceiver;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/android/settings/DataSlotChoice;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 580
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "intentAction":Ljava/lang/String;
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 584
    :cond_0
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v8

    # setter for: Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z
    invoke-static {v7, v8}, Lcom/android/settings/DataSlotChoice;->access$102(Lcom/android/settings/DataSlotChoice;Z)Z

    .line 586
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9"

    invoke-static {v7, v9, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9"

    invoke-static {v7, v10, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string v7, "gsm.sim.state"

    const-string v8, "UNKNOWN"

    invoke-static {v7, v9, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "simState1":Ljava/lang/String;
    const-string v7, "gsm.sim.state"

    const-string v8, "UNKNOWN"

    invoke-static {v7, v10, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "simState2":Ljava/lang/String;
    const-string v7, "DataSlotChoice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: action - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMobileData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->getAvailData()Z
    invoke-static {v9}, Lcom/android/settings/DataSlotChoice;->access$300(Lcom/android/settings/DataSlotChoice;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", SIM_STATE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CURRENT_SIM_STATE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", SIM_STATE2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CURRENT_SIM_STATE2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isAirPlaneMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->isAirPlaneMode:Z
    invoke-static {v9}, Lcom/android/settings/DataSlotChoice;->access$100(Lcom/android/settings/DataSlotChoice;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->getAvailData()Z
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$300(Lcom/android/settings/DataSlotChoice;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 605
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 609
    :goto_0
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # invokes: Lcom/android/settings/DataSlotChoice;->updateUi()V
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$000(Lcom/android/settings/DataSlotChoice;)V

    .line 629
    .end local v0    # "cardStatus1":Ljava/lang/String;
    .end local v1    # "cardStatus2":Ljava/lang/String;
    .end local v4    # "simState1":Ljava/lang/String;
    .end local v5    # "simState2":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 607
    .restart local v0    # "cardStatus1":Ljava/lang/String;
    .restart local v1    # "cardStatus2":Ljava/lang/String;
    .restart local v4    # "simState1":Ljava/lang/String;
    .restart local v5    # "simState2":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 610
    .end local v0    # "cardStatus1":Ljava/lang/String;
    .end local v1    # "cardStatus2":Ljava/lang/String;
    .end local v4    # "simState1":Ljava/lang/String;
    .end local v5    # "simState2":Ljava/lang/String;
    :cond_3
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 611
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$800(Lcom/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$800(Lcom/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 612
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$800(Lcom/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1

    .line 614
    :cond_4
    const-string v7, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 615
    const-string v7, "subscription"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 616
    .local v6, "subId":I
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 617
    .local v3, "simSlot":I
    const-string v7, "DataSlotChoice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATA_CONNECTION_CHANGE_SUCCESS , subId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ;simSlot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$900(Lcom/android/settings/DataSlotChoice;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 620
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 621
    .end local v3    # "simSlot":I
    .end local v6    # "subId":I
    :cond_5
    const-string v7, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 622
    const-string v7, "subscription"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 623
    .restart local v6    # "subId":I
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 624
    .restart local v3    # "simSlot":I
    const-string v7, "DataSlotChoice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED , subId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ;simSlot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$900(Lcom/android/settings/DataSlotChoice;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 627
    iget-object v7, p0, Lcom/android/settings/DataSlotChoice$9;->this$0:Lcom/android/settings/DataSlotChoice;

    # getter for: Lcom/android/settings/DataSlotChoice;->mHandler:Lcom/android/settings/DataSlotChoice$SwitchHandler;
    invoke-static {v7}, Lcom/android/settings/DataSlotChoice;->access$400(Lcom/android/settings/DataSlotChoice;)Lcom/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
