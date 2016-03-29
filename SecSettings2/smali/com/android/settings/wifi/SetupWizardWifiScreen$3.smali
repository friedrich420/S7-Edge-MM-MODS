.class Lcom/android/settings/wifi/SetupWizardWifiScreen$3;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V
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
    .line 244
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    const-string v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OnClick of Positibe Button : Is Wi-Fi connected ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z
    invoke-static {v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$600(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z
    invoke-static {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isDataAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v2, 0x5

    # invokes: Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$800(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)V

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_wifi_connected"

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z
    invoke-static {v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$600(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setResult(ILandroid/content/Intent;)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    goto :goto_0
.end method
