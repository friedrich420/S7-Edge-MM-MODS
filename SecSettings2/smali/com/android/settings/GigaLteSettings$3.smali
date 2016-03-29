.class Lcom/android/settings/GigaLteSettings$3;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GigaLteSettings;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 279
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$000(Lcom/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isNetworkEnabling:Z
    invoke-static {v0, v2}, Lcom/android/settings/GigaLteSettings;->access$402(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 282
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isMobileDataEnabling:Z
    invoke-static {v0, v2}, Lcom/android/settings/GigaLteSettings;->access$502(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 283
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$800(Lcom/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v0, v2}, Lcom/android/settings/GigaLteSettings;->access$602(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 287
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 302
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings/GigaLteSettings;->showProgressDialog()V

    .line 304
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v0, v2}, Lcom/android/settings/GigaLteSettings;->access$602(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 292
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/GigaLteSettings;->access$700(Lcom/android/settings/GigaLteSettings;Z)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isMobileDataEnabling:Z
    invoke-static {v0, v2}, Lcom/android/settings/GigaLteSettings;->access$502(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 298
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$800(Lcom/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings/GigaLteSettings$3;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/GigaLteSettings;->access$700(Lcom/android/settings/GigaLteSettings;Z)V

    goto :goto_0
.end method
