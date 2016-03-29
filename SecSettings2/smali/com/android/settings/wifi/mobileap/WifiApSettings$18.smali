.class Lcom/android/settings/wifi/mobileap/WifiApSettings$18;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1518
    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    .line 1519
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/wifi/WifiApDialog;->setSaveButtonClicked(Z)V

    .line 1520
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1521
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-ne v2, v9, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3700(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1523
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1524
    .local v1, "configDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e046e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1525
    const v2, 0x7f0e046f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1526
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1527
    const v2, 0x7f0e0470

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings$18;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1582
    const v2, 0x7f0e01ba

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings$18;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1589
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings$18;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1600
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings$18;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1609
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4702(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1610
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1661
    .end local v1    # "configDialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1613
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v2, v8, :cond_3

    .line 1614
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->warnForHiddenNetwork()V
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1651
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1652
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1653
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep2Dialog()V

    .line 1654
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1615
    :cond_3
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v2, v8, :cond_4

    .line 1616
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->warnForOpenNetwork()V
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    goto :goto_1

    .line 1618
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1619
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v2, :cond_7

    .line 1622
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    .line 1623
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4100(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1624
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-ne v2, v9, :cond_9

    .line 1625
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3700(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1633
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_6

    .line 1634
    const-string v2, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWifiConfig.hiddenSSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeAllConnectedDevice()V

    .line 1637
    :cond_6
    sput-boolean v6, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 1638
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4400(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 1619
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_5

    .line 1620
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveLast2gChannel(I)V

    goto/16 :goto_2

    .line 1639
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueChangedFlag()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1640
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1641
    .local v0, "alarm_intent":Landroid/content/Intent;
    const-string v2, "wifiap_power_mode_alarm_option"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1642
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1643
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/settings/wifi/WifiApDialog;->setTimeoutValueChangedFlag(Z)V

    goto/16 :goto_1

    .line 1646
    .end local v0    # "alarm_intent":Landroid/content/Intent;
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3700(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1647
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4600(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 1658
    :cond_a
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    goto/16 :goto_0
.end method
