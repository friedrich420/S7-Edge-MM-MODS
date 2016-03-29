.class Lcom/android/settings/wifi/mobileap/WifiApWarning$25;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 812
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 813
    .local v3, "wifiState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 814
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 815
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z
    invoke-static {v4, v8}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2102(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z

    .line 816
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 817
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 819
    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    const-string v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 825
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v4

    if-nez v4, :cond_2

    .line 826
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "SAMSUNG_HOTSPOT"

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1002(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 827
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 828
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 829
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V
    invoke-static {v4, v9}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2300(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 832
    return-void

    .line 820
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
