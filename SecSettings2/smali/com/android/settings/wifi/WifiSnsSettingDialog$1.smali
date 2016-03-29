.class Lcom/android/settings/wifi/WifiSnsSettingDialog$1;
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
    .line 107
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 113
    :cond_0
    if-ne p2, v2, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    const-string v0, "WifiSnsSettingDialog"

    const-string v1, "SNS On pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "KT_Specific"

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mDisconnectWeakAP:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitor_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    :cond_1
    :goto_1
    if-ne p2, v2, :cond_3

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->sendGSIMdata(Ljava/lang/String;)V

    .line 149
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    const-string v0, "WifiSnsSettingDialog"

    const-string v1, "SNS Off pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2
.end method
