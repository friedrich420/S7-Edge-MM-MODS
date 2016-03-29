.class Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GigaLteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MptcpStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GigaLteSettings;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "action":Ljava/lang/String;
    const-string v6, "GigaLteSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MPTCPStateReceiver: onReceive action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v6, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 525
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$1000(Lcom/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$1000(Lcom/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 526
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$1200(Lcom/android/settings/GigaLteSettings;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/settings/GigaLteSettings;->access$1100(Lcom/android/settings/GigaLteSettings;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$1000(Lcom/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 529
    :cond_0
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 530
    const-string v6, "GigaLteSettings"

    const-string v7, "MPTCP State intent is received"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v6, "mptcp_state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 532
    .local v2, "mptcpState":I
    if-nez v2, :cond_2

    .line 533
    iget-object v4, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v4}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 566
    .end local v2    # "mptcpState":I
    :cond_1
    :goto_0
    return-void

    .line 534
    .restart local v2    # "mptcpState":I
    :cond_2
    if-ne v2, v4, :cond_3

    .line 535
    iget-object v5, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v5}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 537
    :cond_3
    const-string v4, "GigaLteSettings"

    const-string v6, "Cannot enable/disable MPTCP"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v4, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v4}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 540
    .end local v2    # "mptcpState":I
    :cond_4
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 541
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 543
    .local v3, "state":I
    const/4 v6, 0x2

    if-eq v6, v3, :cond_1

    .line 544
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # invokes: Lcom/android/settings/GigaLteSettings;->getWiFiState(I)Z
    invoke-static {v6, v3}, Lcom/android/settings/GigaLteSettings;->access$1300(Lcom/android/settings/GigaLteSettings;I)Z

    move-result v1

    .line 545
    .local v1, "isState":Z
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->isNetworkEnabling:Z
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$400(Lcom/android/settings/GigaLteSettings;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$600(Lcom/android/settings/GigaLteSettings;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 546
    iget-object v4, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v4, v5}, Lcom/android/settings/GigaLteSettings;->access$602(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 547
    iget-object v4, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->isMobileDataEnabling:Z
    invoke-static {v4}, Lcom/android/settings/GigaLteSettings;->access$500(Lcom/android/settings/GigaLteSettings;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 548
    iget-object v4, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isNetworkEnabling:Z
    invoke-static {v4, v5}, Lcom/android/settings/GigaLteSettings;->access$402(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 549
    iget-object v4, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    iget-object v5, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v5}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    # invokes: Lcom/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v4, v5}, Lcom/android/settings/GigaLteSettings;->access$700(Lcom/android/settings/GigaLteSettings;Z)V

    goto :goto_0

    .line 551
    :cond_5
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$600(Lcom/android/settings/GigaLteSettings;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 552
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v6, v5}, Lcom/android/settings/GigaLteSettings;->access$602(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 553
    if-eqz v1, :cond_6

    .line 554
    iget-object v4, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    iget-object v5, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v5}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    # invokes: Lcom/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v4, v5}, Lcom/android/settings/GigaLteSettings;->access$700(Lcom/android/settings/GigaLteSettings;Z)V

    goto/16 :goto_0

    .line 556
    :cond_6
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$1000(Lcom/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 557
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$1200(Lcom/android/settings/GigaLteSettings;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/settings/GigaLteSettings;->access$1100(Lcom/android/settings/GigaLteSettings;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$1000(Lcom/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 560
    :cond_7
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 561
    iget-object v6, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v6}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/GigaLteSettings;->access$000(Lcom/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mptcp_value"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_1
    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1
.end method
