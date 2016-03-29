.class Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;
.super Ljava/lang/Object;
.source "WifiAuthFailWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

.field final synthetic val$nId:I

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;II)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;->this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

    iput p2, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;->val$reason:I

    iput p3, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;->val$nId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;->this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

    # getter for: Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->access$000(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 113
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "WifiSettingsIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    const-string v1, "wifi_settings_start_with"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v1, "changeReason"

    iget v2, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;->val$reason:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v1, "wifi_auth_fail_nId"

    iget v2, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;->val$nId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;->this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "WifiSettingsIntent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$2;->this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->finish()V

    .line 123
    return-void

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method
