.class Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;
.super Ljava/lang/Object;
.source "WifiSnsSetupWizardDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 113
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 116
    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSnsSetupWizardDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 118
    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiSnsSetupWizardDialog"

    const-string v1, "CANCEL Pressed, SNS Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    # invokes: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->setPreferenceValue(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$200(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    const-string v1, "SETUPWIZARD_OFF"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->sendGSIMdata(Ljava/lang/String;)V

    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 123
    :cond_2
    return v3
.end method
