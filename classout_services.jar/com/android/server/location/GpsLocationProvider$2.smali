.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2

    .prologue
    .line 458
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 460
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "action":Ljava/lang/String;
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receive broadcast intent, action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v5, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 464
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v5, v8}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 500
    :cond_2b
    :goto_2b
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v6

    invoke-virtual {v5, p2, v6}, Lcom/android/server/location/GpsLocationProvider;->extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 501
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "result_mask"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5b

    .line 502
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v6, 0x1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->requestSetID(I)V
    invoke-static {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 503
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string/jumbo v6, "packet_data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v7, "packet_length"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V
    invoke-static {v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;[BI)V

    .line 505
    :cond_5b
    return-void

    .line 465
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_5c
    const-string v5, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 466
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_2b

    .line 467
    :cond_6a
    const-string v5, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 468
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_2b

    .line 469
    :cond_86
    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 470
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_2b

    .line 471
    :cond_a2
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 474
    :cond_b2
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 476
    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 478
    .local v2, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 481
    const-string/jumbo v5, "noConnectivity"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_e0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_e8

    .line 483
    :cond_e0
    const/4 v4, 0x1

    .line 489
    .local v4, "networkState":I
    :goto_e1
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    goto/16 :goto_2b

    .line 485
    .end local v4    # "networkState":I
    :cond_e8
    const/4 v4, 0x2

    .restart local v4    # "networkState":I
    goto :goto_e1

    .line 490
    .end local v2    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "networkState":I
    :cond_ea
    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10a

    const-string v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10a

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10a

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    :cond_10a
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 495
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)V

    goto/16 :goto_2b

    .line 496
    :cond_119
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 497
    iget-object v5, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V
    invoke-static {v5, p1}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_2b
.end method
