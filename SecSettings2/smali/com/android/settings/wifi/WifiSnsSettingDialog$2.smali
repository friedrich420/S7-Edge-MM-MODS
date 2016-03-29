.class Lcom/android/settings/wifi/WifiSnsSettingDialog$2;
.super Ljava/lang/Object;
.source "WifiSnsSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsSettingDialog;->makeSnsSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsSettingDialog;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 158
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "WifiSnsSettingDialog"

    const-string v1, "Cancel button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->sendGSIMdata(Ljava/lang/String;)V

    .line 167
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$2;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_1
.end method
