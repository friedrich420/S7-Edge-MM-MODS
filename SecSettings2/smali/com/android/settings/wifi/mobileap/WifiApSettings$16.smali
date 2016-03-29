.class Lcom/android/settings/wifi/mobileap/WifiApSettings$16;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 1440
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1441
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x4d

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1443
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "feature"

    const-string v4, "MHWS"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    if-ne p2, v5, :cond_1

    .line 1446
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_ap_wifi_sharing"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1447
    const-string v3, "extra"

    const-string v4, "ON"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    :cond_0
    :goto_0
    const-string v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider value after ok button"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;->val$cr:Landroid/content/ContentResolver;

    const-string v6, "wifi_ap_wifi_sharing"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    :goto_1
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1460
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1462
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1463
    return-void

    .line 1448
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 1449
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_ap_wifi_sharing"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1450
    const-string v3, "extra"

    const-string v4, "OFF"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->checkWifiMobileApStatus()V
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1456
    :catch_0
    move-exception v1

    .line 1457
    .local v1, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in getting provider value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
