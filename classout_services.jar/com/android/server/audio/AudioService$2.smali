.class Lcom/android/server/audio/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .prologue
    .line 4318
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 20
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 4322
    sparse-switch p1, :sswitch_data_226

    .line 4420
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_3
    :goto_3
    return-void

    .line 4324
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v8

    monitor-enter v8

    .line 4325
    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_6b

    .line 4326
    :try_start_16
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    # setter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$3502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 4327
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 4328
    .local v15, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v15, :cond_68

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_68

    .line 4329
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 4330
    .local v6, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 4331
    .local v4, "state":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v3, 0x80

    const/4 v1, 0x2

    if-ne v4, v1, :cond_6e

    const/4 v1, 0x1

    :goto_52
    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v2, v3, v1}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;II)I

    move-result v7

    .line 4334
    .local v7, "delay":I
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x66

    const/4 v5, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4341
    .end local v4    # "state":I
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "delay":I
    :cond_68
    monitor-exit v9
    :try_end_69
    .catchall {:try_start_16 .. :try_end_69} :catchall_70

    .line 4342
    :try_start_69
    monitor-exit v8

    goto :goto_3

    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_6b
    move-exception v1

    monitor-exit v8
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6b

    throw v1

    .line 4331
    .restart local v4    # "state":I
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_6e
    const/4 v1, 0x0

    goto :goto_52

    .line 4341
    .end local v4    # "state":I
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v9
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_6b

    .line 4346
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_73
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 4347
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4348
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 4349
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 4350
    :try_start_8f
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 4351
    .restart local v4    # "state":I
    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v9

    const/16 v10, 0x65

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v11, v4

    move-object v13, v6

    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4357
    monitor-exit v2

    goto/16 :goto_3

    .end local v4    # "state":I
    :catchall_ad
    move-exception v1

    monitor-exit v2
    :try_end_af
    .catchall {:try_start_8f .. :try_end_af} :catchall_ad

    throw v1

    .line 4362
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_b0
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 4364
    :try_start_b9
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 4365
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 4366
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 4367
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v15, :cond_14c

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14c

    .line 4368
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4373
    :goto_f3
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)V

    .line 4375
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_11b

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_11b

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_146

    .line 4378
    :cond_11b
    const/16 v16, 0x0

    .line 4379
    .local v16, "status":Z
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_132

    .line 4380
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    packed-switch v1, :pswitch_data_234

    .line 4409
    :cond_132
    :goto_132
    :pswitch_132
    if-nez v16, :cond_146

    .line 4410
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4414
    .end local v16    # "status":Z
    :cond_146
    monitor-exit v2

    goto/16 :goto_3

    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_149
    move-exception v1

    monitor-exit v2
    :try_end_14b
    .catchall {:try_start_b9 .. :try_end_14b} :catchall_149

    throw v1

    .line 4370
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_14c
    :try_start_14c
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_f3

    .line 4382
    .restart local v16    # "status":Z
    :pswitch_155
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    .line 4383
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_175

    .line 4384
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v16

    goto :goto_132

    .line 4385
    :cond_175
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_194

    .line 4386
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto :goto_132

    .line 4388
    :cond_194
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_132

    .line 4389
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_132

    .line 4394
    :pswitch_1b5
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1ce

    .line 4395
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v16

    goto/16 :goto_132

    .line 4396
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_1ee

    .line 4397
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_132

    .line 4399
    :cond_1ee
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_132

    .line 4400
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_132

    .line 4405
    :pswitch_20f
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_222
    .catchall {:try_start_14c .. :try_end_222} :catchall_149

    move-result v16

    goto/16 :goto_132

    .line 4322
    nop

    :sswitch_data_226
    .sparse-switch
        0x1 -> :sswitch_b0
        0x2 -> :sswitch_4
        0xb -> :sswitch_73
    .end sparse-switch

    .line 4380
    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_155
        :pswitch_132
        :pswitch_132
        :pswitch_20f
        :pswitch_1b5
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 11
    .param p1, "profile"    # I

    .prologue
    const/16 v7, 0x80

    .line 4422
    const/4 v3, 0x0

    .line 4423
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sparse-switch p1, :sswitch_data_e8

    .line 4478
    :goto_6
    return-void

    .line 4425
    :sswitch_7
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    monitor-enter v5

    .line 4426
    :try_start_e
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_66

    .line 4428
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    :try_start_16
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_43

    .line 4429
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4430
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v4, v7, :cond_39

    .line 4431
    if-eqz v3, :cond_3c

    .line 4432
    :goto_34
    iget-object v4, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4428
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 4431
    :cond_3c
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v4

    goto :goto_34

    .line 4435
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_43
    if-eqz v3, :cond_63

    .line 4436
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v7, 0x80

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v4, v7, v8}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;II)I

    move-result v0

    .line 4439
    .local v0, "delay":I
    const/4 v2, 0x0

    :goto_4f
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_63

    .line 4440
    iget-object v7, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    invoke-static {v7, v4, v0}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 4439
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 4443
    .end local v0    # "delay":I
    :cond_63
    monitor-exit v6
    :try_end_64
    .catchall {:try_start_16 .. :try_end_64} :catchall_69

    .line 4444
    :try_start_64
    monitor-exit v5

    goto :goto_6

    .end local v2    # "i":I
    :catchall_66
    move-exception v4

    monitor-exit v5
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_66

    throw v4

    .line 4443
    .restart local v2    # "i":I
    :catchall_69
    move-exception v4

    :try_start_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v4
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_66

    .line 4448
    .end local v2    # "i":I
    :sswitch_6c
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    monitor-enter v5

    .line 4450
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_74
    :try_start_74
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_a3

    .line 4451
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4452
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v6, -0x7ffe0000

    if-ne v4, v6, :cond_99

    .line 4453
    if-eqz v3, :cond_9c

    .line 4454
    :goto_94
    iget-object v4, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4450
    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 4453
    :cond_9c
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v4

    goto :goto_94

    .line 4457
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_a3
    if-eqz v3, :cond_ba

    .line 4458
    const/4 v2, 0x0

    :goto_a6
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_ba

    .line 4459
    iget-object v6, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 4458
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 4462
    :cond_ba
    monitor-exit v5

    goto/16 :goto_6

    :catchall_bd
    move-exception v4

    monitor-exit v5
    :try_end_bf
    .catchall {:try_start_74 .. :try_end_bf} :catchall_bd

    throw v4

    .line 4466
    .end local v2    # "i":I
    :sswitch_c0
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 4467
    :try_start_c7
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_db

    .line 4468
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    .line 4471
    :cond_db
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v4, v6}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 4472
    monitor-exit v5

    goto/16 :goto_6

    :catchall_e4
    move-exception v4

    monitor-exit v5
    :try_end_e6
    .catchall {:try_start_c7 .. :try_end_e6} :catchall_e4

    throw v4

    .line 4423
    nop

    :sswitch_data_e8
    .sparse-switch
        0x1 -> :sswitch_c0
        0x2 -> :sswitch_7
        0xb -> :sswitch_6c
    .end sparse-switch
.end method
