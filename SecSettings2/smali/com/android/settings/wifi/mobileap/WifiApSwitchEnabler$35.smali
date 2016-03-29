.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;->val$cr:Landroid/content/ContentResolver;

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

    .line 1028
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1029
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x4d

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1030
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1031
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "feature"

    const-string v4, "MHWS"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    if-ne p2, v5, :cond_1

    .line 1034
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_ap_wifi_sharing"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1035
    const-string v3, "extra"

    const-string v4, "ON"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_0
    const-string v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider value after ok button"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;->val$cr:Landroid/content/ContentResolver;

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

    .line 1044
    :goto_1
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1045
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1047
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1048
    return-void

    .line 1036
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 1037
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_ap_wifi_sharing"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1038
    const-string v3, "extra"

    const-string v4, "OFF"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v1

    .line 1042
    .local v1, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiApSwitchEnabler"

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
