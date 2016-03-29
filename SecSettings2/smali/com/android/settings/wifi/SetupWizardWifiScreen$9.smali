.class Lcom/android/settings/wifi/SetupWizardWifiScreen$9;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
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
    .line 451
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 454
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 455
    const-string v0, "com.samsung.settings.wifi.CAPTIVE_PORTAL_WEBVIEW_ACTIVITY"

    .line 457
    .local v0, "actionCaptivePortal":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.vzw.huxhtmlviewer"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 458
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, "Hux extension installed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "com.samsung.vzw.action.CAPTIVE_PORTAL_WEBVIEW_ACTIVITY"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v3, "webViewActivity":Landroid/content/Intent;
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 470
    :goto_1
    return-void

    .line 460
    .end local v3    # "webViewActivity":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, "Hux extension not installed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "webViewActivity":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 468
    .local v2, "ee":Landroid/content/ActivityNotFoundException;
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
