.class final Lcom/android/server/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2189
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 2190
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2191
    return-void
.end method

.method private initialize()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 2249
    iget-object v8, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v9, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v10

    # invokes: Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    invoke-static {v8, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    .line 2252
    iget-object v8, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v9, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->init_GpsLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V

    .line 2261
    iget-object v8, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2266
    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_is_agps_ril_supported()Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$4600()Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 2267
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2268
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2269
    const-string/jumbo v8, "sms"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2270
    const-string/jumbo v8, "localhost"

    const-string v9, "7275"

    invoke-virtual {v1, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    iget-object v8, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v11, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2273
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2274
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2276
    :try_start_6d
    const-string v8, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_72
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_6d .. :try_end_72} :catch_100

    .line 2280
    :goto_72
    iget-object v8, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v11, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2286
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_81
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2287
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2288
    const-string v8, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2289
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2290
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2291
    const-string v8, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2292
    const-string v8, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2293
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2294
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2295
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2296
    iget-object v8, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v11, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2298
    iget-object v8, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v9, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    iget-object v10, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    .line 2302
    iget-object v8, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "location"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 2304
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v4, 0x0

    .line 2305
    .local v4, "minTime":J
    const/4 v3, 0x0

    .line 2306
    .local v3, "minDistance":F
    const/4 v6, 0x0

    .line 2307
    .local v6, "oneShot":Z
    const-string/jumbo v8, "passive"

    invoke-static {v8, v4, v5, v3, v6}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v7

    .line 2314
    .local v7, "request":Landroid/location/LocationRequest;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2315
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;

    iget-object v9, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {v8, v9, v11}, Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    invoke-virtual {p0}, getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2319
    return-void

    .line 2277
    .end local v2    # "locManager":Landroid/location/LocationManager;
    .end local v3    # "minDistance":F
    .end local v4    # "minTime":J
    .end local v6    # "oneShot":Z
    .end local v7    # "request":Landroid/location/LocationRequest;
    :catch_100
    move-exception v0

    .line 2278
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v8, "GpsLocationProvider"

    const-string v9, "Malformed SUPL init mime type"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    .line 2282
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_10a
    const-string v8, "GpsLocationProvider"

    const-string v9, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 2195
    iget v1, p1, Landroid/os/Message;->what:I

    .line 2196
    .local v1, "message":I
    packed-switch v1, :pswitch_data_7a

    .line 2235
    :cond_7
    :goto_7
    :pswitch_7
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_14

    .line 2237
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2239
    :cond_14
    return-void

    .line 2198
    :pswitch_15
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_1f

    .line 2199
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleEnable()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_7

    .line 2201
    :cond_1f
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDisable()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_7

    .line 2205
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    .line 2206
    .local v0, "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$3600(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_7

    .line 2209
    .end local v0    # "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    :pswitch_33
    iget-object v3, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    invoke-static {v3, v4, v2}, Lcom/android/server/location/GpsLocationProvider;->access$3700(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_7

    .line 2212
    :pswitch_3f
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3800(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_7

    .line 2215
    :pswitch_45
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3900(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2216
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_7

    .line 2220
    :pswitch_53
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$4102(Lcom/android/server/location/GpsLocationProvider;I)I

    goto :goto_7

    .line 2223
    :pswitch_59
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$4202(Lcom/android/server/location/GpsLocationProvider;I)I

    goto :goto_7

    .line 2226
    :pswitch_5f
    iget-object v3, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v3, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    goto :goto_7

    .line 2229
    :pswitch_69
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V

    goto :goto_7

    .line 2232
    :pswitch_75
    invoke-direct {p0}, initialize()V

    goto :goto_7

    .line 2196
    nop

    :pswitch_data_7a
    .packed-switch 0x2
        :pswitch_15
        :pswitch_25
        :pswitch_33
        :pswitch_3f
        :pswitch_45
        :pswitch_5f
        :pswitch_7
        :pswitch_7
        :pswitch_53
        :pswitch_59
        :pswitch_69
        :pswitch_75
    .end packed-switch
.end method
