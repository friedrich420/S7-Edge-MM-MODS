.class Lcom/android/server/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 2

    .prologue
    .line 333
    iput-object p1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 336
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2b

    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLEAppCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_2b
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_4d

    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SamsungBleAppCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_4d
    const-string v6, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 340
    const-string v6, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "newName":Ljava/lang/String;
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_79

    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bluetooth Adapter name changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_79
    if-eqz v4, :cond_81

    .line 343
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v7, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v4, v7}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v4    # "newName":Ljava/lang/String;
    :cond_81
    :goto_81
    return-void

    .line 345
    :cond_82
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_248

    .line 346
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_b9

    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received ACTION_AIRPLANE_MODE_CHANGED, mode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_b9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BluetoothManagerService -- received ACTION_AIRPLANE_MODE_CHANGED, mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 348
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_192

    .line 349
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z
    invoke-static {v6, v10}, Lcom/android/server/BluetoothManagerService;->access$702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 350
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v6, v9}, Lcom/android/server/BluetoothManagerService;->access$602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 355
    :cond_f1
    :goto_f1
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    monitor-enter v7

    .line 356
    :try_start_f8
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 357
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1a9

    .line 358
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x2

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;I)V

    .line 364
    :cond_10e
    :goto_10e
    const/16 v5, 0xa

    .line 365
    .local v5, "st":I
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_115
    .catchall {:try_start_f8 .. :try_end_115} :catchall_18f

    move-result-object v6

    if-eqz v6, :cond_122

    .line 367
    :try_start_118
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_121
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_121} :catch_1b1
    .catchall {:try_start_118 .. :try_end_121} :catchall_18f

    move-result v5

    .line 372
    :cond_122
    :goto_122
    :try_start_122
    const-string v6, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    .line 376
    monitor-enter p0
    :try_end_144
    .catchall {:try_start_122 .. :try_end_144} :catchall_18f

    .line 377
    :try_start_144
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)I

    move-result v6

    if-ne v6, v11, :cond_152

    .line 378
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x3

    # setter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;I)I

    .line 380
    :cond_152
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)I

    move-result v6

    if-ne v6, v11, :cond_160

    .line 381
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x3

    # setter for: Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I
    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;I)I

    .line 383
    :cond_160
    const/4 v6, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$202(I)I

    .line 384
    const/4 v6, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$302(I)I

    .line 385
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 386
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 387
    monitor-exit p0
    :try_end_177
    .catchall {:try_start_144 .. :try_end_177} :catchall_1bb

    .line 388
    const/16 v6, 0xf

    if-ne v5, v6, :cond_1c7

    .line 391
    :try_start_17b
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_18c

    .line 392
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_18c
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_18c} :catch_1be
    .catchall {:try_start_17b .. :try_end_18c} :catchall_18f

    .line 429
    :cond_18c
    :goto_18c
    :try_start_18c
    monitor-exit v7

    goto/16 :goto_81

    .end local v5    # "st":I
    :catchall_18f
    move-exception v6

    monitor-exit v7
    :try_end_191
    .catchall {:try_start_18c .. :try_end_191} :catchall_18f

    throw v6

    .line 351
    :cond_192
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-nez v6, :cond_1a2

    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 352
    :cond_1a2
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v6, v10}, Lcom/android/server/BluetoothManagerService;->access$602(Lcom/android/server/BluetoothManagerService;Z)Z

    goto/16 :goto_f1

    .line 360
    :cond_1a9
    :try_start_1a9
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;I)V

    goto/16 :goto_10e

    .line 368
    .restart local v5    # "st":I
    :catch_1b1
    move-exception v2

    .line 369
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string v8, "Unable to call getState"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b9
    .catchall {:try_start_1a9 .. :try_end_1b9} :catchall_18f

    goto/16 :goto_122

    .line 387
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_1bb
    move-exception v6

    :try_start_1bc
    monitor-exit p0
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    :try_start_1bd
    throw v6

    .line 394
    :catch_1be
    move-exception v2

    .line 395
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string v8, "Unable to call onBrEdrDown"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18c

    .line 397
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1c7
    if-ne v5, v12, :cond_18c

    .line 399
    const-string v6, "BluetoothManagerService"

    const-string v8, "Calling disable"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_18c

    .line 403
    :cond_1d6
    # getter for: Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1600()Z

    move-result v6

    if-eqz v6, :cond_1e8

    .line 404
    # operator++ for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$208()I

    .line 405
    # operator++ for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$308()I

    .line 406
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;I)I

    .line 408
    :cond_1e8
    if-eq v5, v12, :cond_18c

    .line 409
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z
    :try_end_1ef
    .catchall {:try_start_1bd .. :try_end_1ef} :catchall_18f

    move-result v6

    if-eqz v6, :cond_22e

    .line 410
    const/16 v6, 0xf

    if-ne v5, v6, :cond_21a

    .line 412
    :try_start_1f6
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_18c

    .line 413
    const-string v6, "BluetoothManagerService"

    const-string v8, "Calling enable current state BLE_ON"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_20e
    .catch Landroid/os/RemoteException; {:try_start_1f6 .. :try_end_20e} :catch_210
    .catchall {:try_start_1f6 .. :try_end_20e} :catchall_18f

    goto/16 :goto_18c

    .line 416
    :catch_210
    move-exception v2

    .line 417
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_211
    const-string v6, "BluetoothManagerService"

    const-string v8, "Unable to call onServiceUp"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18c

    .line 420
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_21a
    const-string v6, "BluetoothManagerService"

    const-string v8, "Calling enable BLE BREDR"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v8, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_18c

    .line 423
    :cond_22e
    # getter for: Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1600()Z

    move-result v6

    if-eqz v6, :cond_18c

    .line 424
    const-string v6, "BluetoothManagerService"

    const-string v8, "BLE Always On After AirMode"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v8, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_246
    .catchall {:try_start_211 .. :try_end_246} :catchall_18f

    goto/16 :goto_18c

    .line 432
    .end local v5    # "st":I
    :cond_248
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_287

    .line 434
    const/4 v3, 0x0

    .line 435
    .local v3, "isNotiLockScreen":Z
    const/4 v0, 0x0

    .line 436
    .local v0, "BtPolicyChanged":Z
    const-string/jumbo v6, "isNotiFromLockScreen"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 437
    const-string/jumbo v6, "isBTChanged"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 439
    if-eqz v3, :cond_271

    .line 440
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_81

    const-string v6, "BluetoothManagerService"

    const-string v7, "EXTRA_NOTIFY_FROM_LOCKSCREEN"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81

    .line 441
    :cond_271
    if-eqz v0, :cond_81

    .line 442
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v6}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 443
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/BluetoothManagerService;->disable(Z)Z

    .line 444
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->checkItPolicy(Z)I
    invoke-static {v6, v9}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)I

    goto/16 :goto_81

    .line 457
    .end local v0    # "BtPolicyChanged":Z
    .end local v3    # "isNotiLockScreen":Z
    :cond_287
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 458
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ChinaNalSecurity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v10, :cond_81

    .line 461
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_81

    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 462
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "dismiss dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_81
.end method
