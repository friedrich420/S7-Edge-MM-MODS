.class Lcom/android/settings/wifi/WifiSnsSettingDialog$3;
.super Ljava/lang/Object;
.source "WifiSnsSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 171
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

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
    const/4 v3, 0x1

    .line 174
    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSnsSettingDialog"

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

    .line 175
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->sendGSIMdata(Ljava/lang/String;)V

    .line 182
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 184
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_0
.end method
