.class Lcom/android/server/audio/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3947
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3948
    iput-object p2, p0, mCb:Landroid/os/IBinder;

    .line 3949
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, mCreatorPid:I

    .line 3950
    const/4 v0, 0x0

    iput v0, p0, mStartcount:I

    .line 3951
    return-void
.end method

.method private requestScoState(II)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4039
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)V

    .line 4040
    invoke-virtual {p0}, totalCount()I

    move-result v1

    if-nez v1, :cond_8b

    .line 4041
    const/16 v1, 0xc

    if-ne p1, v1, :cond_eb

    .line 4044
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v6}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;I)V

    .line 4047
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 4048
    :try_start_20
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    iget v3, p0, mCreatorPid:I

    if-ne v1, v3, :cond_e4

    :cond_41
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v7, :cond_e4

    .line 4052
    :cond_51
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_d7

    .line 4072
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2802(Lcom/android/server/audio/AudioService;I)I

    .line 4074
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 4075
    const/4 v0, 0x0

    .line 4076
    .local v0, "status":Z
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v5, :cond_8c

    .line 4077
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    .line 4086
    :cond_82
    :goto_82
    if-eqz v0, :cond_be

    .line 4087
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    .line 4102
    .end local v0    # "status":Z
    :cond_8a
    :goto_8a
    monitor-exit v2

    .line 4138
    :cond_8b
    :goto_8b
    return-void

    .line 4078
    .restart local v0    # "status":Z
    :cond_8c
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_a5

    .line 4079
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_82

    .line 4081
    :cond_a5
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v6, :cond_82

    .line 4082
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_82

    .line 4089
    :cond_be
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;I)V

    goto :goto_8a

    .line 4102
    .end local v0    # "status":Z
    :catchall_c5
    move-exception v1

    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_20 .. :try_end_c7} :catchall_c5

    throw v1

    .line 4092
    :cond_c8
    :try_start_c8
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 4093
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    goto :goto_8a

    .line 4096
    :cond_d7
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    .line 4097
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;I)V

    goto :goto_8a

    .line 4100
    :cond_e4
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;I)V
    :try_end_ea
    .catchall {:try_start_c8 .. :try_end_ea} :catchall_c5

    goto :goto_8a

    .line 4103
    :cond_eb
    const/16 v1, 0xa

    if-ne p1, v1, :cond_8b

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, v2, :cond_ff

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v5, :cond_8b

    .line 4106
    :cond_ff
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v2, :cond_19c

    .line 4107
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_18d

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_18d

    .line 4108
    const/4 v0, 0x0

    .line 4109
    .restart local v0    # "status":Z
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v5, :cond_15b

    .line 4110
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    .line 4122
    :cond_12a
    :goto_12a
    if-eqz v0, :cond_136

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v2, 0x10

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 4123
    :cond_136
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState stopScoUsingVirtualVoiceCall status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    .line 4126
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_8b

    .line 4111
    :cond_15b
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_174

    .line 4112
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_12a

    .line 4114
    :cond_174
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v6, :cond_12a

    .line 4115
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_12a

    .line 4129
    .end local v0    # "status":Z
    :cond_18d
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 4130
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v7}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    goto/16 :goto_8b

    .line 4133
    :cond_19c
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    .line 4134
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_8b
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 3954
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3955
    :try_start_7
    const-string v1, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3957
    .local v0, "index":I
    if-gez v0, :cond_24

    .line 3958
    const-string v1, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    :goto_22
    monitor-exit v2

    .line 3964
    return-void

    .line 3960
    :cond_24
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, clearCount(Z)V

    .line 3961
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    .line 3963
    .end local v0    # "index":I
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public clearCount(Z)V
    .registers 7
    .param p1, "stopSco"    # Z

    .prologue
    .line 4000
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 4001
    :try_start_7
    iget v1, p0, mStartcount:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_40

    if-eqz v1, :cond_11

    .line 4003
    :try_start_b
    iget-object v1, p0, mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_11} :catch_1e
    .catchall {:try_start_b .. :try_end_11} :catchall_40

    .line 4008
    :cond_11
    :goto_11
    const/4 v1, 0x0

    :try_start_12
    iput v1, p0, mStartcount:I

    .line 4009
    if-eqz p1, :cond_1c

    .line 4010
    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, requestScoState(II)V

    .line 4012
    :cond_1c
    monitor-exit v2

    .line 4013
    return-void

    .line 4004
    :catch_1e
    move-exception v0

    .line 4005
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 4012
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public decCount()V
    .registers 5

    .prologue
    .line 3982
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3983
    :try_start_7
    iget v1, p0, mStartcount:I

    if-nez v1, :cond_14

    .line 3984
    const-string v1, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    :goto_12
    monitor-exit v2

    .line 3997
    return-void

    .line 3986
    :cond_14
    iget v1, p0, mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mStartcount:I

    .line 3987
    iget v1, p0, mStartcount:I
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2b

    if-nez v1, :cond_24

    .line 3989
    :try_start_1e
    iget-object v1, p0, mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_24
    .catch Ljava/util/NoSuchElementException; {:try_start_1e .. :try_end_24} :catch_2e
    .catchall {:try_start_1e .. :try_end_24} :catchall_2b

    .line 3994
    :cond_24
    :goto_24
    const/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_27
    invoke-direct {p0, v1, v3}, requestScoState(II)V

    goto :goto_12

    .line 3996
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v1

    .line 3990
    :catch_2e
    move-exception v0

    .line 3991
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_2f
    const-string v1, "AudioService"

    const-string/jumbo v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2b

    goto :goto_24
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 4020
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 4016
    iget v0, p0, mStartcount:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .prologue
    .line 4024
    iget v0, p0, mCreatorPid:I

    return v0
.end method

.method public incCount(I)V
    .registers 7
    .param p1, "scoAudioMode"    # I

    .prologue
    .line 3967
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3968
    const/16 v1, 0xc

    :try_start_9
    invoke-direct {p0, v1, p1}, requestScoState(II)V

    .line 3969
    iget v1, p0, mStartcount:I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_40

    if-nez v1, :cond_16

    .line 3971
    :try_start_10
    iget-object v1, p0, mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_1e
    .catchall {:try_start_10 .. :try_end_16} :catchall_40

    .line 3977
    :cond_16
    :goto_16
    :try_start_16
    iget v1, p0, mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mStartcount:I

    .line 3978
    monitor-exit v2

    .line 3979
    return-void

    .line 3972
    :catch_1e
    move-exception v0

    .line 3974
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 3978
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public totalCount()I
    .registers 6

    .prologue
    .line 4028
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 4029
    const/4 v0, 0x0

    .line 4030
    .local v0, "count":I
    :try_start_8
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4031
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_29

    .line 4032
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-virtual {v3}, getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 4031
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4034
    :cond_29
    monitor-exit v4

    return v0

    .line 4035
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v3
.end method
