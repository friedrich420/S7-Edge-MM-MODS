.class Lcom/android/settings/GigaLteSettings$5;
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
    .line 319
    iput-object p1, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 321
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isNetworkEnabling:Z
    invoke-static {v0, v2}, Lcom/android/settings/GigaLteSettings;->access$402(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 322
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isMobileDataEnabling:Z
    invoke-static {v0, v2}, Lcom/android/settings/GigaLteSettings;->access$502(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 323
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$800(Lcom/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings/GigaLteSettings;->showProgressDialog()V

    .line 327
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v0, v2}, Lcom/android/settings/GigaLteSettings;->access$602(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 329
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$5;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 331
    :cond_0
    return-void
.end method
