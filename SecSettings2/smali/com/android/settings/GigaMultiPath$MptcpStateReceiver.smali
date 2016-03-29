.class Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GigaMultiPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MptcpStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/android/settings/GigaMultiPath;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

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

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "action":Ljava/lang/String;
    const-string v6, "GigaMultiPath"

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

    .line 363
    const-string v6, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 364
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$1000(Lcom/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$1000(Lcom/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$1200(Lcom/android/settings/GigaMultiPath;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/settings/GigaMultiPath;->access$1100(Lcom/android/settings/GigaMultiPath;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$1000(Lcom/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 368
    :cond_0
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 369
    const-string v6, "GigaMultiPath"

    const-string v7, "MPTCP State intent is received"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v6, "mptcp_state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 371
    .local v2, "mptcpState":I
    if-nez v2, :cond_2

    .line 372
    iget-object v4, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v4}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 405
    .end local v2    # "mptcpState":I
    :cond_1
    :goto_0
    return-void

    .line 373
    .restart local v2    # "mptcpState":I
    :cond_2
    if-ne v2, v4, :cond_3

    .line 374
    iget-object v5, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v5}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 376
    :cond_3
    const-string v4, "GigaMultiPath"

    const-string v6, "Cannot enable/disable MPTCP"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v4, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v4}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 379
    .end local v2    # "mptcpState":I
    :cond_4
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 382
    .local v3, "state":I
    const/4 v6, 0x2

    if-eq v6, v3, :cond_1

    .line 383
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # invokes: Lcom/android/settings/GigaMultiPath;->getWiFiState(I)Z
    invoke-static {v6, v3}, Lcom/android/settings/GigaMultiPath;->access$1300(Lcom/android/settings/GigaMultiPath;I)Z

    move-result v1

    .line 384
    .local v1, "isState":Z
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->isNetworkEnabling:Z
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$400(Lcom/android/settings/GigaMultiPath;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->isWiFiEnabling:Z
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$600(Lcom/android/settings/GigaMultiPath;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 385
    iget-object v4, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # setter for: Lcom/android/settings/GigaMultiPath;->isWiFiEnabling:Z
    invoke-static {v4, v5}, Lcom/android/settings/GigaMultiPath;->access$602(Lcom/android/settings/GigaMultiPath;Z)Z

    .line 386
    iget-object v4, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->isMobileDataEnabling:Z
    invoke-static {v4}, Lcom/android/settings/GigaMultiPath;->access$500(Lcom/android/settings/GigaMultiPath;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 387
    iget-object v4, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # setter for: Lcom/android/settings/GigaMultiPath;->isNetworkEnabling:Z
    invoke-static {v4, v5}, Lcom/android/settings/GigaMultiPath;->access$402(Lcom/android/settings/GigaMultiPath;Z)Z

    .line 388
    iget-object v4, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    iget-object v5, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v5}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    # invokes: Lcom/android/settings/GigaMultiPath;->sendMptcpStartBroadCast(Z)V
    invoke-static {v4, v5}, Lcom/android/settings/GigaMultiPath;->access$700(Lcom/android/settings/GigaMultiPath;Z)V

    goto :goto_0

    .line 390
    :cond_5
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->isWiFiEnabling:Z
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$600(Lcom/android/settings/GigaMultiPath;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 391
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # setter for: Lcom/android/settings/GigaMultiPath;->isWiFiEnabling:Z
    invoke-static {v6, v5}, Lcom/android/settings/GigaMultiPath;->access$602(Lcom/android/settings/GigaMultiPath;Z)Z

    .line 392
    if-eqz v1, :cond_6

    .line 393
    iget-object v4, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    iget-object v5, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v5}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    # invokes: Lcom/android/settings/GigaMultiPath;->sendMptcpStartBroadCast(Z)V
    invoke-static {v4, v5}, Lcom/android/settings/GigaMultiPath;->access$700(Lcom/android/settings/GigaMultiPath;Z)V

    goto/16 :goto_0

    .line 395
    :cond_6
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$1000(Lcom/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 396
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$1200(Lcom/android/settings/GigaMultiPath;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/settings/GigaMultiPath;->access$1100(Lcom/android/settings/GigaMultiPath;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$1000(Lcom/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 399
    :cond_7
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 400
    iget-object v6, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v6}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/GigaMultiPath;->access$000(Lcom/android/settings/GigaMultiPath;)Landroid/content/Context;

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
