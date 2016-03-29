.class Lcom/android/settings/GigaLteSettings$7;
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
    .line 346
    iput-object p1, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 348
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    # setter for: Lcom/android/settings/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v0, v1}, Lcom/android/settings/GigaLteSettings;->access$602(Lcom/android/settings/GigaLteSettings;Z)Z

    .line 350
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$900(Lcom/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings/GigaLteSettings;->showProgressDialog()V

    .line 356
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings/GigaLteSettings$7;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/GigaLteSettings;->access$700(Lcom/android/settings/GigaLteSettings;Z)V

    goto :goto_0
.end method
