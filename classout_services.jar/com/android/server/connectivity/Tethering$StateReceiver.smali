.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    .prologue
    .line 1418
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 1418
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 49
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1422
    .local v6, "action":Ljava/lang/String;
    if-nez v6, :cond_7

    .line 1786
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 1423
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1424
    .local v13, "cr":Landroid/content/ContentResolver;
    const-string v41, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_e6

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v42

    monitor-enter v42

    .line 1426
    :try_start_2a
    const-string v41, "connected"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v38

    .line 1427
    .local v38, "usbConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const-string/jumbo v43, "rndis"

    const/16 v44, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    move-object/from16 v0, v41

    move/from16 v1, v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1429
    if-eqz v38, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_7d

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1432
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const-string/jumbo v43, "ncm"

    const/16 v44, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    move-object/from16 v0, v41

    move/from16 v1, v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$702(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1435
    if-eqz v38, :cond_d1

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_d1

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_d1

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1438
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1440
    monitor-exit v42

    goto/16 :goto_6

    .end local v38    # "usbConnected":Z
    :catchall_e3
    move-exception v41

    monitor-exit v42
    :try_end_e5
    .catchall {:try_start_2a .. :try_end_e5} :catchall_e3

    throw v41

    .line 1441
    :cond_e6
    const-string v41, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_129

    .line 1442
    const-string/jumbo v41, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkInfo;

    .line 1444
    .local v26, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v26, :cond_6

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v41

    sget-object v42, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_6

    .line 1446
    const-string v41, "Tethering"

    const-string v42, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v41

    const/16 v42, 0x3

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1449
    .end local v26    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_129
    const-string v41, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_13e

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_6

    .line 1451
    :cond_13e
    const-string v41, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1cc

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_174

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)I

    move-result v42

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1455
    :cond_174
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_1a0

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)I

    move-result v42

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1458
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)I

    move-result v42

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1462
    :cond_1cc
    const-string v41, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3b0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-nez v41, :cond_1ee

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_3b0

    :cond_1ee
    # getter for: Lcom/android/server/connectivity/Tethering;->mRVFMode:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v41

    if-nez v41, :cond_3b0

    .line 1464
    const-string v41, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1465
    .local v37, "type":Ljava/lang/String;
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    if-eqz v37, :cond_6

    .line 1467
    const-string v41, "NUM"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 1468
    .local v27, "numExtra":I
    if-gez v27, :cond_22e

    const/16 v27, 0x0

    .line 1469
    :cond_22e
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 1471
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastClients:I
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2002(I)I

    .line 1472
    # setter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->access$1902(I)I

    .line 1473
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "**number of client: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2102(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1478
    const-string v41, "VZW"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_319

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "statusbar"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/StatusBarManager;

    .line 1480
    .local v36, "statusBar":Landroid/app/StatusBarManager;
    const/16 v19, 0x0

    .line 1481
    .local v19, "iconId":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "wifi"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/net/wifi/WifiManager;

    .line 1482
    .local v40, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v41

    if-eqz v41, :cond_2f8

    .line 1483
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    sget-object v42, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_2ef

    .line 1484
    sget-object v41, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v42, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    aget v19, v41, v42

    .line 1488
    :goto_2bf
    const-string/jumbo v41, "wifi_ap"

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v19

    move/from16 v3, v42

    move-object/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1489
    const-string/jumbo v41, "wifi_ap"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const v42, 0x10807bf

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1486
    :cond_2ef
    sget-object v41, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v42

    aget v19, v41, v42

    goto :goto_2bf

    .line 1492
    :cond_2f8
    const-string v41, "Tethering"

    const-string v42, "Wifi Ap is not enabled."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string/jumbo v41, "wifi_ap"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1494
    const-string/jumbo v41, "wifi_ap"

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1496
    .end local v19    # "iconId":I
    .end local v36    # "statusBar":Landroid/app/StatusBarManager;
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :cond_319
    const-string v41, "SPRINT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_331

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const v42, 0x10807be

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1498
    :cond_331
    const-string v41, "TMO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_345

    const-string v41, "NEWCO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_353

    .line 1500
    :cond_345
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const v42, 0x10807bb

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1504
    :cond_353
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const v42, 0x10807bd

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    .line 1506
    const-string v41, "ATT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v41

    if-nez v41, :cond_6

    .line 1507
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "createMaxApNotification(), clients = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    # getter for: Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_3a5

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto/16 :goto_6

    .line 1511
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_6

    .line 1516
    .end local v27    # "numExtra":I
    .end local v37    # "type":Ljava/lang/String;
    :cond_3b0
    const-string v41, "ATT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3cf

    const-string v41, "com.samsung.android.net.wifi.MAXAP_NOTI"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3cf

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_6

    .line 1518
    :cond_3cf
    const-string v41, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_408

    .line 1519
    const-string/jumbo v41, "wifi_state"

    const/16 v42, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1520
    .local v9, "apState":I
    packed-switch v9, :pswitch_data_aba

    :pswitch_3eb
    goto/16 :goto_6

    .line 1531
    :pswitch_3ed
    const-string v41, "ATT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v41

    if-nez v41, :cond_6

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_6

    .line 1536
    .end local v9    # "apState":I
    :cond_408
    const-string v41, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6d0

    .line 1537
    const-string/jumbo v41, "wifiap_power_mode_alarm_option"

    const/16 v42, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 1538
    .local v28, "option":I
    if-nez v28, :cond_528

    .line 1541
    :try_start_423
    const-string/jumbo v41, "wifi_ap_plugged_type"

    move-object/from16 v0, v41

    invoke-static {v13, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_42b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_423 .. :try_end_42b} :catch_4d2

    move-result v30

    .line 1545
    .local v30, "pluggedType":I
    :goto_42c
    const-string v41, "TMO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_438

    if-nez v30, :cond_6

    .line 1546
    :cond_438
    const-string/jumbo v41, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2300()I

    move-result v42

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1547
    .local v32, "powermode_value":I
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "ALARM_START : set "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " sec"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    if-eqz v32, :cond_4d7

    .line 1549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v16, v42, v44

    .line 1551
    .local v16, "expireTime":J
    new-instance v7, Landroid/content/Intent;

    const-string v41, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v41

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v7, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v41, "wifiap_power_mode_alarm_option"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    const/high16 v43, 0x10000000

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1555
    .local v29, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "alarm"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1556
    .local v8, "am":Landroid/app/AlarmManager;
    const/16 v41, 0x0

    move/from16 v0, v41

    move-wide/from16 v1, v16

    move-object/from16 v3, v29

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1558
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    .line 1559
    const/16 v41, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2502(Z)Z

    goto/16 :goto_6

    .line 1542
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v16    # "expireTime":J
    .end local v29    # "pending":Landroid/app/PendingIntent;
    .end local v30    # "pluggedType":I
    .end local v32    # "powermode_value":I
    :catch_4d2
    move-exception v14

    .line 1543
    .local v14, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v30, 0x0

    .restart local v30    # "pluggedType":I
    goto/16 :goto_42c

    .line 1561
    .end local v14    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v32    # "powermode_value":I
    :cond_4d7
    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Z

    move-result v41

    if-eqz v41, :cond_521

    .line 1562
    new-instance v7, Landroid/content/Intent;

    const-string v41, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v41

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1563
    .restart local v7    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v41, "wifiap_power_mode_alarm_option"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    const/high16 v43, 0x10000000

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1566
    .restart local v29    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "alarm"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1567
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1569
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v29    # "pending":Landroid/app/PendingIntent;
    :cond_521
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2502(Z)Z

    goto/16 :goto_6

    .line 1572
    .end local v30    # "pluggedType":I
    .end local v32    # "powermode_value":I
    :cond_528
    const/16 v41, 0x4

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_570

    .line 1573
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "WIFIAP_POWER_MODE_VALUE_CHANGED, clients = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    if-nez v41, :cond_6

    .line 1575
    const-string v41, "Tethering"

    const-string v42, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering;->sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    invoke-static/range {v41 .. v43}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V

    goto/16 :goto_6

    .line 1578
    :cond_570
    const/16 v41, 0x1

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_66a

    .line 1579
    const-string v41, "Tethering"

    const-string v42, "ALARM_EXPIRE"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/16 v41, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    .line 1581
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2502(Z)Z

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "power"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/PowerManager;

    .line 1585
    .local v31, "pm":Landroid/os/PowerManager;
    const/16 v41, 0x1

    const-string v42, "MobileAPCloseService"

    move-object/from16 v0, v31

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v25

    .line 1587
    .local v25, "mStopService":Landroid/os/PowerManager$WakeLock;
    :try_start_5aa
    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_5ad
    .catch Ljava/lang/Throwable; {:try_start_5aa .. :try_end_5ad} :catch_630

    .line 1592
    :goto_5ad
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "wifi"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/net/wifi/WifiManager;

    .line 1594
    .restart local v40    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v39

    .line 1595
    .local v39, "wifiApState":I
    const-string/jumbo v41, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2300()I

    move-result v42

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1596
    .restart local v32    # "powermode_value":I
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "powermode_value = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    if-nez v41, :cond_627

    const/16 v41, 0xd

    move/from16 v0, v39

    move/from16 v1, v41

    if-ne v0, v1, :cond_627

    if-eqz v32, :cond_627

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "connectivity"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/ConnectivityManager;

    .line 1599
    .local v23, "mCm":Landroid/net/ConnectivityManager;
    const-string v41, "Tethering"

    const-string v42, "--> data disable"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string v41, "Tethering"

    const-string v42, "--> ap disable"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1605
    .end local v23    # "mCm":Landroid/net/ConnectivityManager;
    :cond_627
    if-eqz v25, :cond_6

    .line 1607
    :try_start_629
    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_62c
    .catch Ljava/lang/Throwable; {:try_start_629 .. :try_end_62c} :catch_64d

    .line 1608
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 1588
    .end local v32    # "powermode_value":I
    .end local v39    # "wifiApState":I
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :catch_630
    move-exception v14

    .line 1589
    .local v14, "e":Ljava/lang/Throwable;
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5ad

    .line 1609
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v32    # "powermode_value":I
    .restart local v39    # "wifiApState":I
    .restart local v40    # "wm":Landroid/net/wifi/WifiManager;
    :catch_64d
    move-exception v14

    .line 1610
    .restart local v14    # "e":Ljava/lang/Throwable;
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Cannot release wake lock ~~"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1613
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v25    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v31    # "pm":Landroid/os/PowerManager;
    .end local v32    # "powermode_value":I
    .end local v39    # "wifiApState":I
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :cond_66a
    const/16 v41, 0x2

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_6

    .line 1614
    const-string v41, "Tethering"

    const-string v42, "ALARM_STOP"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    # getter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v41

    if-nez v41, :cond_6

    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1616
    new-instance v7, Landroid/content/Intent;

    const-string v41, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v41

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1617
    .restart local v7    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v41, "wifiap_power_mode_alarm_option"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    const/high16 v43, 0x10000000

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1619
    .restart local v29    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "alarm"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1620
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1621
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2502(Z)Z

    goto/16 :goto_6

    .line 1624
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v28    # "option":I
    .end local v29    # "pending":Landroid/app/PendingIntent;
    :cond_6d0
    const-string v41, "android.net.wifi.wifiap_stand_by_mode_start"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_732

    .line 1625
    const-string v41, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1626
    .restart local v37    # "type":Ljava/lang/String;
    if-eqz v37, :cond_6

    .line 1627
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[WIFI] onReceive() WIFIAP_STAND_BY_MODE_START intent, type of EVENT: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const-string/jumbo v41, "no_data"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "wifi"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/net/wifi/WifiManager;

    .line 1630
    .restart local v40    # "wm":Landroid/net/wifi/WifiManager;
    const-string v41, "Tethering"

    const-string v42, "--> ap disable"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_6

    .line 1634
    .end local v37    # "type":Ljava/lang/String;
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :cond_732
    const-string v41, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_859

    .line 1635
    const-string v41, "TMO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_750

    const-string v41, "NEWCO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1637
    :cond_750
    const-string/jumbo v41, "level"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1638
    .local v24, "mLevel":I
    const-string/jumbo v41, "plugged"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 1639
    .restart local v30    # "pluggedType":I
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "lowBatteryThreshold = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0xf

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-nez v41, :cond_7af

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_82e

    :cond_7af
    const/16 v41, 0xf

    move/from16 v0, v24

    move/from16 v1, v41

    if-gt v0, v1, :cond_82e

    if-nez v30, :cond_82e

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v41

    if-nez v41, :cond_82e

    .line 1642
    const-string v41, "Tethering"

    const-string/jumbo v42, "showLowBatteryNotification"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)V

    .line 1651
    :cond_7d6
    :goto_7d6
    if-nez v30, :cond_7de

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3000()Z

    move-result v41

    if-nez v41, :cond_7e6

    :cond_7de
    if-eqz v30, :cond_6

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3000()Z

    move-result v41

    if-nez v41, :cond_6

    .line 1652
    :cond_7e6
    const-string/jumbo v41, "wifi_ap_plugged_type"

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1653
    new-instance v15, Landroid/content/Intent;

    const-string v41, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1654
    .local v15, "i":Landroid/content/Intent;
    const-string/jumbo v41, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_81e

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1658
    :cond_81e
    if-nez v30, :cond_84b

    .line 1659
    const-string v41, "Tethering"

    const-string v42, "Unplugged"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3002(Z)Z

    goto/16 :goto_6

    .line 1645
    .end local v15    # "i":Landroid/content/Intent;
    :cond_82e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v41

    if-eqz v41, :cond_7d6

    .line 1646
    const-string v41, "Tethering"

    const-string v42, "clearLowBatteryNotification"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_7d6

    .line 1675
    .restart local v15    # "i":Landroid/content/Intent;
    :cond_84b
    const-string v41, "Tethering"

    const-string v42, "Plugged"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/16 v41, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3002(Z)Z

    goto/16 :goto_6

    .line 1689
    .end local v15    # "i":Landroid/content/Intent;
    .end local v24    # "mLevel":I
    .end local v30    # "pluggedType":I
    :cond_859
    const-string v41, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_8f9

    .line 1690
    const-string v41, "Tethering"

    const-string v42, "Boot complete."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3102(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v41

    if-nez v41, :cond_88e

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v42

    # setter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3202(Lcom/android/server/connectivity/Tethering;Landroid/app/enterprise/knoxcustom/SystemManager;)Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 1698
    :cond_88e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v41

    if-eqz v41, :cond_8cc

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetState()Z

    move-result v41

    if-eqz v41, :cond_8cc

    const-string v41, "adb_enabled"

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    if-nez v41, :cond_8cc

    .line 1702
    const-string v41, "Tethering"

    const-string v42, "Activate USB Net on boot up"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_6

    .line 1707
    :cond_8cc
    const-string/jumbo v41, "enabled"

    const-string v42, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v42

    invoke-static {v13, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1708
    const-string v41, "Tethering"

    const-string v42, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const-string/jumbo v41, "net.tether.always"

    const-string v42, "1"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_6

    .line 1725
    :cond_8f9
    const-string v41, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9dd

    .line 1726
    const-string v41, "Tethering"

    const-string v42, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_9d4

    .line 1729
    const-string v41, "Tethering"

    const-string v42, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const-string/jumbo v41, "network_management"

    invoke-static/range {v41 .. v41}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 1732
    .local v11, "b":Landroid/os/IBinder;
    invoke-static {v11}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v34

    .line 1733
    .local v34, "service":Landroid/os/INetworkManagementService;
    const/16 v41, 0x0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1736
    .local v21, "ifaces":[Ljava/lang/String;
    :try_start_930
    invoke-interface/range {v34 .. v34}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_933
    .catch Ljava/lang/Exception; {:try_start_930 .. :try_end_933} :catch_9b7

    move-result-object v21

    .line 1742
    move-object/from16 v10, v21

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_93b
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-object v20, v10, v18

    .line 1743
    .local v20, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_9b4

    .line 1744
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1747
    .local v35, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v35, :cond_9b4

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v41

    if-eqz v41, :cond_9b4

    .line 1748
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    .line 1742
    .end local v35    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_9b4
    add-int/lit8 v18, v18, 0x1

    goto :goto_93b

    .line 1737
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v22    # "len$":I
    :catch_9b7
    move-exception v14

    .line 1738
    .local v14, "e":Ljava/lang/Exception;
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1754
    .end local v11    # "b":Landroid/os/IBinder;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v21    # "ifaces":[Ljava/lang/String;
    .end local v34    # "service":Landroid/os/INetworkManagementService;
    :cond_9d4
    const-string v41, "Tethering"

    const-string v42, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1757
    :cond_9dd
    const-string v41, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfigNetworkTypeCapability:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfigNetworkTypeCapability:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "KDI"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1759
    const-string v41, "Tethering"

    const-string v42, "Tethering Denied"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v21

    .line 1761
    .restart local v21    # "ifaces":[Ljava/lang/String;
    move-object/from16 v10, v21

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_a1d
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-object v20, v10, v18

    .line 1762
    .restart local v20    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_a52

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "wifi"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/net/wifi/WifiManager;

    .line 1764
    .restart local v40    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1761
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :cond_a4f
    :goto_a4f
    add-int/lit8 v18, v18, 0x1

    goto :goto_a1d

    .line 1765
    :cond_a52
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_aa1

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v41

    if-eqz v41, :cond_a98

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothPan;

    .line 1768
    .local v12, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v12, :cond_a90

    .line 1769
    const-string v41, "Tethering"

    const-string/jumbo v42, "setBluetoothTethering"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_a4f

    .line 1772
    :cond_a90
    const-string v41, "Tethering"

    const-string v42, "bluetoothPan is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4f

    .line 1775
    .end local v12    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_a98
    const-string v41, "Tethering"

    const-string/jumbo v42, "mBluetoothPan is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4f

    .line 1778
    :cond_aa1
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v33

    .line 1779
    .local v33, "result":I
    if-eqz v33, :cond_a4f

    .line 1780
    const-string v41, "Tethering"

    const-string v42, "Tether off error"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4f

    .line 1520
    nop

    :pswitch_data_aba
    .packed-switch 0xb
        :pswitch_3ed
        :pswitch_3eb
        :pswitch_6
        :pswitch_3ed
    .end packed-switch
.end method
