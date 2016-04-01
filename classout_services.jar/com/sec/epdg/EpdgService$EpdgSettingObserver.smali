.class final Lcom/sec/epdg/EpdgService$EpdgSettingObserver;
.super Lcom/sec/epdg/EpdgContentObserverBase;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EpdgSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1972
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    .line 1973
    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgContentObserverBase;-><init>(Landroid/os/Handler;)V

    .line 1974
    return-void
.end method


# virtual methods
.method public onChangeSlowPath(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1978
    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$2800(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1979
    const-string v1, "[EPDGService]"

    const-string v2, "EpdgSettingObserver - Roaming WIFI perferred mode changed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    # invokes: Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 2007
    :cond_1b
    :goto_1b
    return-void

    .line 1981
    :cond_1c
    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$3000(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1985
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1987
    .local v0, "wifion":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgSettingObserver - wifi on changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    if-nez v0, :cond_1b

    .line 1991
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_ad

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_ad

    .line 1994
    :cond_6f
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgSettingObserver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z
    invoke-static {v1, v4}, Lcom/sec/epdg/EpdgService;->access$2400(Lcom/sec/epdg/EpdgService;Z)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1997
    const-string v1, "[EPDGService]"

    const-string v2, "EpdgSettingObserver - do not need de-register "

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1b

    .line 2000
    :cond_ad
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v1, v2, :cond_1b

    .line 2002
    const-string v1, "[EPDGService]"

    const-string v2, "DE-registration is not required. start WIFI disconnection"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v1, v4}, Lcom/sec/epdg/EpdgService;->access$3100(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_1b
.end method
