.class Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings$18;)V
    .locals 0

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1594
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v1, v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    .line 1596
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1597
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$3;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v1, v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1598
    return-void
.end method
