.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .prologue
    .line 7307
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 7307
    invoke-direct {p0, p1}, <init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7310
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 7311
    .local v12, "action":Ljava/lang/String;
    const/16 v27, 0x0

    .line 7312
    .local v27, "outDevice":I
    const/16 v22, 0x0

    .line 7313
    .local v22, "inDevice":I
    const/16 v32, 0x0

    .line 7314
    .local v32, "state":I
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 7315
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 7318
    .local v19, "dockState":I
    packed-switch v19, :pswitch_data_b74

    .line 7333
    const/16 v17, 0x0

    .line 7336
    .local v17, "config":I
    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3d

    if-nez v19, :cond_3d

    .line 7337
    const-string v2, "AudioService"

    const-string v5, "EXTRA_DOCK_STATE_DESK onSendBecomingNoisyIntent "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7338
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0x800

    # invokes: Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;I)V

    .line 7345
    :cond_3d
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_67

    const/16 v2, 0x69

    move/from16 v0, v19

    if-eq v0, v2, :cond_67

    if-nez v19, :cond_61

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_67

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/16 v5, 0x69

    if-eq v2, v5, :cond_67

    .line 7348
    :cond_61
    const/4 v2, 0x3

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7352
    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v19

    # setter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$10502(Lcom/android/server/audio/AudioService;I)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .local v4, "state":I
    move/from16 v3, v27

    .line 7797
    .end local v17    # "config":I
    .end local v19    # "dockState":I
    .end local v27    # "outDevice":I
    .local v3, "outDevice":I
    :goto_74
    return-void

    .line 7320
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v19    # "dockState":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :pswitch_75
    const/16 v17, 0x7

    .line 7321
    .restart local v17    # "config":I
    goto :goto_20

    .line 7323
    .end local v17    # "config":I
    :pswitch_78
    const/16 v17, 0x6

    .line 7324
    .restart local v17    # "config":I
    goto :goto_20

    .line 7326
    .end local v17    # "config":I
    :pswitch_7b
    const/16 v17, 0x8

    .line 7327
    .restart local v17    # "config":I
    goto :goto_20

    .line 7329
    .end local v17    # "config":I
    :pswitch_7e
    const/16 v17, 0x9

    .line 7330
    .restart local v17    # "config":I
    goto :goto_20

    .line 7353
    .end local v17    # "config":I
    .end local v19    # "dockState":I
    :cond_81
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 7354
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7356
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 7359
    .local v15, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const-string v5, "android.bluetooth.aoble.extra.SUPPORT_AOBLE"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mbAobleState:Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$10602(Lcom/android/server/audio/AudioService;Z)Z

    .line 7362
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v15, v4}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    move/from16 v3, v27

    .line 7363
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto :goto_74

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v15    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_b6
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 7364
    const/4 v14, 0x0

    .line 7365
    .local v14, "broadcast":Z
    const/16 v30, -0x1

    .line 7366
    .local v30, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 7367
    :try_start_ca
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 7369
    .local v16, "btState":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_103

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_102

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_102

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_103

    .line 7373
    :cond_102
    const/4 v14, 0x1

    .line 7375
    :cond_103
    packed-switch v16, :pswitch_data_b80

    .line 7397
    :cond_106
    :goto_106
    const/4 v14, 0x0

    .line 7400
    :cond_107
    :goto_107
    monitor-exit v5
    :try_end_108
    .catchall {:try_start_ca .. :try_end_108} :catchall_160

    .line 7401
    if-eqz v14, :cond_12e

    .line 7402
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v30

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;I)V

    .line 7405
    new-instance v26, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7406
    .local v26, "newIntent":Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7407
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .end local v26    # "newIntent":Landroid/content/Intent;
    :cond_12e
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7409
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7377
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :pswitch_134
    const/16 v30, 0x1

    .line 7378
    :try_start_136
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_107

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_107

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_107

    .line 7381
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    goto :goto_107

    .line 7400
    .end local v16    # "btState":I
    :catchall_160
    move-exception v2

    monitor-exit v5
    :try_end_162
    .catchall {:try_start_136 .. :try_end_162} :catchall_160

    throw v2

    .line 7385
    .restart local v16    # "btState":I
    :pswitch_163
    const/16 v30, 0x0

    .line 7386
    :try_start_165
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    .line 7387
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    goto :goto_107

    .line 7390
    :pswitch_177
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_106

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_106

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_106

    .line 7393
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I
    :try_end_1a0
    .catchall {:try_start_165 .. :try_end_1a0} :catchall_160

    goto/16 :goto_106

    .line 7409
    .end local v14    # "broadcast":Z
    .end local v16    # "btState":I
    .end local v30    # "scoAudioState":I
    :cond_1a2
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d4

    .line 7410
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 7411
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 7413
    :cond_1b7
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7415
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCPUBoostForComm:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-nez v2, :cond_b69

    .line 7416
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->stopCPUBoost()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7419
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_1d4
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21c

    .line 7420
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 7422
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 7424
    :cond_1e9
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7426
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9900(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b69

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_b69

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0xc

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v2

    if-eqz v2, :cond_b69

    .line 7430
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->startCPUBoost(Z)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;Z)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7433
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_21c
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_233

    .line 7434
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7435
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_233
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b3

    .line 7437
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7445
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 7448
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$11400(Lcom/android/server/audio/AudioService;Z)V

    .line 7450
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v29

    .line 7451
    .local v29, "ringVolume":I
    if-nez v29, :cond_289

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_289

    .line 7452
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v5, 0x2

    aget-object v2, v2, v5

    const/16 v5, 0xa

    const/4 v6, 0x2

    const-string v7, "AudioService"

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 7456
    :cond_289
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7463
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->checkAndSetThemeSound(Z)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$9600(Lcom/android/server/audio/AudioService;Z)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7465
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v29    # "ringVolume":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_2b3
    const-string v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ec

    .line 7467
    const-string v2, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 7468
    .local v34, "userId":I
    if-ltz v34, :cond_2d9

    .line 7470
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v36

    .line 7471
    .local v36, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v36

    # invokes: Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 7473
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2d9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string/jumbo v5, "no_record_audio"

    const/4 v6, 0x1

    move/from16 v0, v34

    invoke-virtual {v2, v5, v6, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7475
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v34    # "userId":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_2ec
    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_310

    .line 7477
    const-string v2, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 7478
    .restart local v34    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string/jumbo v5, "no_record_audio"

    const/4 v6, 0x0

    move/from16 v0, v34

    invoke-virtual {v2, v5, v6, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7480
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7482
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v34    # "userId":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_310
    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_498

    .line 7483
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 7484
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, 0x1000000

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v24

    .line 7485
    .local v24, "isConnected":Z
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### WiFi Display device state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7486
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### WiFi Display device isConnected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7489
    const/16 v23, 0x0

    .line 7490
    .local v23, "isChangePath":Z
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTRA_INTENDED_CHANGEPATH from Wifi manager : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7493
    if-nez v23, :cond_38a

    .line 7494
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const v5, 0x1008000

    move/from16 v0, v32

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v2, v5, v0}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;II)I

    .line 7497
    :cond_38a
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_428

    if-nez v24, :cond_428

    .line 7498
    const-string v2, "count"

    const/16 v5, 0x780

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 7499
    .local v25, "nBufCnt":I
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTERNAL_WIFI_CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wfdBufferCount="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7501
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, 0x1000000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v8, 0x1000000

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7502
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const v6, 0x8000

    const-string v7, "0"

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/server/audio/AudioService;

    const v8, 0x8000

    const-string v10, "0"

    const-string/jumbo v11, "remote-submix"

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7503
    const-string v2, "audioParam;ScreenMirroringState=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .end local v25    # "nBufCnt":I
    :cond_422
    :goto_422
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7523
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7505
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_428
    if-nez v32, :cond_422

    if-eqz v24, :cond_422

    .line 7506
    const-string v2, "audioParam;ScreenMirroringState=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7508
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, 0x1000000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7509
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const v6, 0x8000

    const-string v7, "0"

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7511
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v2, :cond_490

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMode:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_47e

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMode:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_490

    .line 7512
    :cond_47e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7520
    :cond_490
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    goto :goto_422

    .line 7524
    .end local v23    # "isChangePath":Z
    .end local v24    # "isConnected":Z
    :cond_498
    const-string v2, "com.sec.android.intent.action.SPLIT_SOUND"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b6

    .line 7525
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "enabled"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7528
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_4b6
    const-string v2, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4ed

    .line 7529
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7535
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const/4 v2, -0x1

    if-ne v4, v2, :cond_4d5

    .line 7536
    const-string/jumbo v2, "earcare=reset"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7538
    .end local v3    # "outDevice":I
    .restart local v27    # "outDevice":I
    :cond_4d5
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    if-ne v4, v2, :cond_4eb

    const/4 v2, 0x1

    :goto_4dd
    # setter for: Lcom/android/server/audio/AudioService;->mIsEarCareSettingOn:Z
    invoke-static {v5, v2}, Lcom/android/server/audio/AudioService;->access$11802(Lcom/android/server/audio/AudioService;Z)Z

    .line 7539
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8500(Lcom/android/server/audio/AudioService;)V

    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7538
    .end local v3    # "outDevice":I
    .restart local v27    # "outDevice":I
    :cond_4eb
    const/4 v2, 0x0

    goto :goto_4dd

    .line 7544
    .end local v4    # "state":I
    .restart local v32    # "state":I
    :cond_4ed
    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50d

    .line 7545
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x69

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7554
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_50d
    const-string v2, "com.sec.tms.audio.server"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_663

    .line 7555
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7556
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7557
    const-string v2, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7558
    .local v13, "app":Ljava/lang/String;
    if-eqz v13, :cond_659

    .line 7559
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7560
    const-string/jumbo v2, "server"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5ce

    .line 7561
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, 0x2000000

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v24

    .line 7562
    .restart local v24    # "isConnected":Z
    const/4 v2, 0x2

    if-ne v4, v2, :cond_598

    if-eqz v24, :cond_598

    .line 7563
    const/high16 v2, 0x2000000

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7565
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, 0x2000000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v24    # "isConnected":Z
    :cond_594
    :goto_594
    move/from16 v3, v27

    .line 7597
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7567
    .end local v3    # "outDevice":I
    .restart local v24    # "isConnected":Z
    .restart local v27    # "outDevice":I
    :cond_598
    const/4 v2, 0x1

    if-ne v4, v2, :cond_594

    if-nez v24, :cond_594

    .line 7568
    const/high16 v2, 0x2000000

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7570
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, 0x2000000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v8, 0x2000000

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_594

    .line 7575
    .end local v24    # "isConnected":Z
    :cond_5ce
    const-string v2, "client"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63e

    .line 7576
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, -0x7fe00000

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v24

    .line 7577
    .restart local v24    # "isConnected":Z
    const/4 v2, 0x2

    if-ne v4, v2, :cond_607

    if-eqz v24, :cond_607

    .line 7578
    const/high16 v2, -0x7fe00000

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7580
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, -0x7fe00000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_594

    .line 7582
    :cond_607
    const/4 v2, 0x1

    if-ne v4, v2, :cond_594

    if-nez v24, :cond_594

    .line 7583
    const/high16 v2, -0x7fe00000

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7585
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, -0x7fe00000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/server/audio/AudioService;

    const/high16 v8, -0x7fe00000

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_594

    .line 7592
    .end local v24    # "isConnected":Z
    :cond_63e
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt app wrong : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_594

    .line 7595
    :cond_659
    const-string v2, "AudioService"

    const-string/jumbo v5, "tms evt app is null "

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_594

    .line 7600
    .end local v4    # "state":I
    .end local v13    # "app":Ljava/lang/String;
    .restart local v32    # "state":I
    :cond_663
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a2

    .line 7601
    const-string/jumbo v2, "reason"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 7602
    .local v28, "reason":I
    const/4 v2, 0x3

    move/from16 v0, v28

    if-ne v0, v2, :cond_696

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    const/16 v5, 0x200

    invoke-virtual {v2, v5}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v2

    if-nez v2, :cond_696

    .line 7603
    const-string/jumbo v2, "emergency_mode=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_690
    :goto_690
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7607
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7604
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_696
    const/4 v2, 0x5

    move/from16 v0, v28

    if-ne v0, v2, :cond_690

    .line 7605
    const-string/jumbo v2, "emergency_mode=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_690

    .line 7610
    .end local v28    # "reason":I
    :cond_6a2
    const-string v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b5

    .line 7611
    const-string v2, "audioParam;factoryteststate=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7613
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_6b5
    const-string v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c8

    .line 7614
    const-string v2, "audioParam;factoryteststate=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7618
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_6c8
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75b

    .line 7619
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7620
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7621
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0x800

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v24

    .line 7622
    .restart local v24    # "isConnected":Z
    if-nez v4, :cond_725

    if-eqz v24, :cond_725

    .line 7623
    const/16 v2, 0x800

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7625
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v6, 0x800

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_721
    :goto_721
    move/from16 v3, v27

    .line 7636
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7627
    .end local v3    # "outDevice":I
    .restart local v27    # "outDevice":I
    :cond_725
    const/4 v2, 0x1

    if-ne v4, v2, :cond_721

    if-nez v24, :cond_721

    .line 7628
    const/16 v2, 0x800

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7630
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v6, 0x800

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v8, 0x800

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_721

    .line 7636
    .end local v4    # "state":I
    .end local v24    # "isConnected":Z
    .restart local v32    # "state":I
    :cond_75b
    const-string v2, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f4

    .line 7637
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7638
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const-string/jumbo v2, "smartdock"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 7640
    .local v31, "smartdock":Z
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceiver: EXTERNAL_USB_HEADSET_PLUG  state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", smartdock : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7642
    if-eqz v31, :cond_b6f

    .line 7643
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$12000(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7bd

    .line 7644
    const-string v2, "AudioService"

    const-string v5, "EXTERNAL_USB_HEADSET_PLUG, get USB Info mExternalUsbInfo fail"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7645
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    new-instance v5, Ljava/lang/String;

    const-string v6, "2:44100:44100:1:0:0:48000:16"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12002(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 7647
    :cond_7bd
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTERNAL_USB_HEADSET_PLUG, mExternalUsbInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$12000(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7648
    const/16 v3, 0x4000

    .line 7650
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12000(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "AudioService"

    # invokes: Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_74

    .line 7655
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v31    # "smartdock":Z
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_7f4
    const-string v2, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80f

    .line 7656
    const-string v2, "AudioService"

    const-string v5, "HMT mount!"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7657
    const-string/jumbo v2, "hmtState=mount"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7658
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_80f
    const-string v2, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82a

    .line 7659
    const-string v2, "AudioService"

    const-string v5, "HMT unmount"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7660
    const-string/jumbo v2, "hmtState=unmount"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7663
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_82a
    const-string v2, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_859

    .line 7664
    const-string v2, "CONNECTION_MODE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 7665
    .local v18, "connectionMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioParam;wfdFixedVolume="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7666
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7668
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v18    # "connectionMode":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_859
    const-string v2, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_887

    .line 7670
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mono"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mMonoMode:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12202(Lcom/android/server/audio/AudioService;I)I

    .line 7671
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonoMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)I

    move-result v5

    # invokes: Lcom/android/server/audio/AudioService;->setMonoMode(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12300(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7674
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_887
    const-string v2, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d6

    .line 7675
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12402(Lcom/android/server/audio/AudioService;I)I

    .line 7676
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "on receive : mNbQualityMode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$12400(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7677
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12400(Lcom/android/server/audio/AudioService;)I

    move-result v5

    # invokes: Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12500(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7680
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_8d6
    const-string v2, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_904

    .line 7681
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mDualMicMode:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12602(Lcom/android/server/audio/AudioService;I)I

    .line 7682
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDualMicMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12600(Lcom/android/server/audio/AudioService;)I

    move-result v5

    # invokes: Lcom/android/server/audio/AudioService;->setDualMicMode(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12700(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7686
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_904
    const-string v2, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_932

    .line 7687
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mNaturalSound:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12802(Lcom/android/server/audio/AudioService;I)I

    .line 7688
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNaturalSound:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12800(Lcom/android/server/audio/AudioService;)I

    move-result v5

    # invokes: Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12900(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7692
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_932
    const-string v2, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_958

    .line 7694
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mute"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mAllSoundMute:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13002(Lcom/android/server/audio/AudioService;I)I

    .line 7695
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setAllSoundMute()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$13100(Lcom/android/server/audio/AudioService;)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7698
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_958
    const-string v2, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96e

    .line 7699
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/audio/AudioService;->mStatusbarExpanded:Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13202(Lcom/android/server/audio/AudioService;Z)Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7700
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_96e
    const-string v2, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_984

    .line 7701
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mStatusbarExpanded:Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13202(Lcom/android/server/audio/AudioService;Z)Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7703
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_984
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9bb

    .line 7705
    const-string/jumbo v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 7706
    .local v33, "strState":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b5

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v2

    if-nez v2, :cond_9b5

    .line 7707
    const-string v2, "AudioService"

    const-string v5, "autorejection on"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7708
    const-string v2, "autorejection=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_9b5
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7710
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7713
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v33    # "strState":Ljava/lang/String;
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_9bb
    const-string v2, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f9

    .line 7714
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "flipOpen"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13302(Lcom/android/server/audio/AudioService;Z)Z

    .line 7715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "folder_open="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$13300(Lcom/android/server/audio/AudioService;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7719
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_9f9
    const-string v2, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a85

    .line 7720
    const-string/jumbo v2, "persona_id"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 7721
    .local v9, "lockedPersonaId":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v35

    .line 7722
    .local v35, "userIdForCurrentAudioFocus":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v21

    .line 7724
    .local v21, "gainRequest":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_a32

    const/4 v2, 0x3

    move/from16 v0, v21

    if-eq v0, v2, :cond_a32

    const/4 v2, 0x4

    move/from16 v0, v21

    if-ne v0, v2, :cond_a38

    :cond_a32
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7727
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7730
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_a38
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AS.onReceive() persona not active: lockedPersonaId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; userIdForCurrentAudioFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7734
    const/4 v2, -0x1

    if-eq v9, v2, :cond_a7f

    move/from16 v0, v35

    if-ne v9, v0, :cond_a7f

    .line 7736
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x6e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7746
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    :cond_a7f
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7748
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7750
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v9    # "lockedPersonaId":I
    .end local v21    # "gainRequest":I
    .end local v35    # "userIdForCurrentAudioFocus":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_a85
    const-string v2, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad3

    .line 7752
    const-string v2, "EXTRA_STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 7753
    .local v20, "extra_state":I
    const/16 v2, 0x8

    move/from16 v0, v20

    if-ne v0, v2, :cond_ab0

    .line 7754
    const-string v2, "AudioService"

    const-string/jumbo v5, "wb_amr swb"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7755
    const-string/jumbo v2, "wb_amr=swb"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_aaa
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7763
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7756
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_ab0
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_ac4

    .line 7757
    const-string v2, "AudioService"

    const-string/jumbo v5, "wb_amr on"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7758
    const-string/jumbo v2, "wb_amr=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_aaa

    .line 7760
    :cond_ac4
    const-string v2, "AudioService"

    const-string/jumbo v5, "wb_amr off"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7761
    const-string/jumbo v2, "wb_amr=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_aaa

    .line 7772
    .end local v20    # "extra_state":I
    :cond_ad3
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0e

    .line 7773
    const-string v2, "AudioService"

    const-string v5, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7774
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$13400(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/audio/MediaFocusControl;->unregisterPhoneStateListener(Landroid/content/Context;)V

    .line 7775
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$13400(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/audio/MediaFocusControl;->registerPhoneStateListener(Landroid/content/Context;)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7778
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_b0e
    const-string v2, "com.samsung.intent.action.HMT_CONNECTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b30

    .line 7780
    const-string v2, "AudioService"

    const-string v5, "HMT Docked"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7781
    const-string/jumbo v2, "hmtState=dock"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7782
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mHMTstate:Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7784
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_b30
    const-string v2, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b52

    .line 7786
    const-string v2, "AudioService"

    const-string v5, "HMT OFF"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7787
    const-string/jumbo v2, "hmtState=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7788
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mHMTstate:Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7791
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_b52
    const-string/jumbo v2, "sec.app.policy.UPDATE.audio"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b69

    .line 7793
    const-string v2, "AudioService"

    const-string v5, "Reload effect white list"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7794
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->reloadWhitelist()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$13500(Lcom/android/server/audio/AudioService;)V

    :cond_b69
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .end local v3    # "outDevice":I
    .restart local v27    # "outDevice":I
    .restart local v31    # "smartdock":Z
    :cond_b6f
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_74

    .line 7318
    nop

    :pswitch_data_b74
    .packed-switch 0x1
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
    .end packed-switch

    .line 7375
    :pswitch_data_b80
    .packed-switch 0xa
        :pswitch_163
        :pswitch_177
        :pswitch_134
    .end packed-switch
.end method
