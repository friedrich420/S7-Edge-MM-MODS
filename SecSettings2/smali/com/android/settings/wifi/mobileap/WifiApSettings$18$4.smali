.class Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1600
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1605
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$4;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v1, v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    .line 1607
    :cond_0
    return-void
.end method
