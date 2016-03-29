.class Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$2;
.super Ljava/lang/Object;
.source "WifiSnsSetupWizardDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->makeWifiSnsSetupWizardDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSnsSetupWizardDialog"

    const-string v1, "DO NOT ENABLE Button Pressed, SNS Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    # invokes: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->setPreferenceValue(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$200(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    const-string v1, "SETUPWIZARD_OFF"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->sendGSIMdata(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiSnsSetupWizardDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$300(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 110
    return-void
.end method
