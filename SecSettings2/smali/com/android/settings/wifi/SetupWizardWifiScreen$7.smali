.class Lcom/android/settings/wifi/SetupWizardWifiScreen$7;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 418
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "Checking Network Dialog Cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$1700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$1700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->cancel(Z)Z

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$900(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 423
    return-void
.end method
