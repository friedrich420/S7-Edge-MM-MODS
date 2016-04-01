.class abstract Lcom/android/server/hdmi/SystemAudioAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAction.java"


# static fields
.field private static final MAX_SEND_RETRY_COUNT:I = 0x2

.field private static final OFF_TIMEOUT_MS:I = 0x7d0

.field private static final ON_TIMEOUT_MS:I = 0x1388

.field private static final STATE_CHECK_ROUTING_IN_PRGRESS:I = 0x1

.field private static final STATE_WAIT_FOR_SET_SYSTEM_AUDIO_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SystemAudioAction"


# instance fields
.field protected final mAvrLogicalAddress:I

.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mSendRetryCount:I

.field protected mTargetAudioStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "targetStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, mSendRetryCount:I

    .line 68
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 69
    iput p2, p0, mAvrLogicalAddress:I

    .line 70
    iput-boolean p3, p0, mTargetAudioStatus:Z

    .line 71
    iput-object p4, p0, mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/SystemAudioAction;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/SystemAudioAction;

    .prologue
    .line 31
    invoke-direct {p0}, sendSystemAudioModeRequestInternal()V

    return-void
.end method

.method private getSystemAudioModeRequestParam()I
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 117
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v0, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 120
    :cond_18
    :goto_18
    return v0

    .line 119
    :cond_19
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v0

    .line 120
    .local v0, "param":I
    const v1, 0xffff

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    goto :goto_18
.end method

.method private handleSendSystemAudioModeRequestTimeout()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-boolean v0, p0, mTargetAudioStatus:Z

    if-eqz v0, :cond_e

    iget v0, p0, mSendRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mSendRetryCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1d

    .line 127
    :cond_e
    const-string v0, "[T]:wait for <Set System Audio Mode>."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0, v2}, setSystemAudioMode(Z)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, finishWithCallback(I)V

    .line 133
    :goto_1c
    return-void

    .line 132
    :cond_1d
    invoke-virtual {p0}, sendSystemAudioModeRequest()V

    goto :goto_1c
.end method

.method private sendSystemAudioModeRequestInternal()V
    .registers 6

    .prologue
    .line 93
    invoke-virtual {p0}, getSourceAddress()I

    move-result v1

    iget v2, p0, mAvrLogicalAddress:I

    invoke-direct {p0}, getSystemAudioModeRequestParam()I

    move-result v3

    iget-boolean v4, p0, mTargetAudioStatus:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 96
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAction$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAction$2;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    invoke-virtual {p0, v0, v1}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 106
    const/4 v1, 0x2

    iput v1, p0, mState:I

    .line 107
    iget v2, p0, mState:I

    iget-boolean v1, p0, mTargetAudioStatus:Z

    if-eqz v1, :cond_27

    const/16 v1, 0x1388

    :goto_23
    invoke-virtual {p0, v2, v1}, addTimer(II)V

    .line 108
    return-void

    .line 107
    :cond_27
    const/16 v1, 0x7d0

    goto :goto_23
.end method


# virtual methods
.method protected finishWithCallback(I)V
    .registers 5
    .param p1, "returnCode"    # I

    .prologue
    .line 201
    iget-object v1, p0, mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz v1, :cond_9

    .line 203
    :try_start_4
    iget-object v1, p0, mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_d

    .line 208
    :cond_9
    :goto_9
    invoke-virtual {p0}, finish()V

    .line 209
    return-void

    .line 204
    :catch_d
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAudioAction"

    const-string v2, "Failed to invoke callback."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method final handleTimerEvent(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 188
    iget v0, p0, mState:I

    if-eq v0, p1, :cond_5

    .line 196
    :goto_4
    return-void

    .line 191
    :cond_5
    iget v0, p0, mState:I

    packed-switch v0, :pswitch_data_10

    goto :goto_4

    .line 193
    :pswitch_b
    invoke-direct {p0}, handleSendSystemAudioModeRequestTimeout()V

    goto :goto_4

    .line 191
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_b
    .end packed-switch
.end method

.method final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    iget v4, p0, mAvrLogicalAddress:I

    if-eq v3, v4, :cond_c

    .line 172
    :cond_b
    :goto_b
    return v1

    .line 144
    :cond_c
    iget v3, p0, mState:I

    packed-switch v3, :pswitch_data_72

    goto :goto_b

    .line 146
    :pswitch_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x70

    if-ne v3, v4, :cond_33

    .line 149
    const-string v3, "Failed to start system audio mode request."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0, v1}, setSystemAudioMode(Z)V

    .line 151
    invoke-virtual {p0, v5}, finishWithCallback(I)V

    move v1, v2

    .line 152
    goto :goto_b

    .line 154
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x72

    if-ne v3, v4, :cond_b

    iget v3, p0, mAvrLogicalAddress:I

    const-string v4, "SystemAudioAction"

    invoke-static {p1, v3, v4}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 158
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 159
    .local v0, "receivedStatus":Z
    iget-boolean v3, p0, mTargetAudioStatus:Z

    if-ne v0, v3, :cond_55

    .line 160
    invoke-virtual {p0, v0}, setSystemAudioMode(Z)V

    .line 161
    invoke-virtual {p0}, startAudioStatusAction()V

    move v1, v2

    .line 162
    goto :goto_b

    .line 164
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected system audio mode request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0, v5}, finishWithCallback(I)V

    goto :goto_b

    .line 144
    nop

    :pswitch_data_72
    .packed-switch 0x2
        :pswitch_12
    .end packed-switch
.end method

.method protected removeSystemAudioActionInProgress()V
    .registers 2

    .prologue
    .line 182
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0, p0}, removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 183
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0, p0}, removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 184
    return-void
.end method

.method protected sendSystemAudioModeRequest()V
    .registers 4

    .prologue
    .line 76
    const-class v2, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v2}, getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "routingActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/RoutingControlAction;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 78
    const/4 v2, 0x1

    iput v2, p0, mState:I

    .line 80
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/RoutingControlAction;

    .line 81
    .local v0, "routingAction":Lcom/android/server/hdmi/RoutingControlAction;
    new-instance v2, Lcom/android/server/hdmi/SystemAudioAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/SystemAudioAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    invoke-virtual {v0, p0, v2}, Lcom/android/server/hdmi/RoutingControlAction;->addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V

    .line 90
    .end local v0    # "routingAction":Lcom/android/server/hdmi/RoutingControlAction;
    :goto_1e
    return-void

    .line 89
    :cond_1f
    invoke-direct {p0}, sendSystemAudioModeRequestInternal()V

    goto :goto_1e
.end method

.method protected setSystemAudioMode(Z)V
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    .line 136
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    .line 137
    return-void
.end method

.method protected startAudioStatusAction()V
    .registers 5

    .prologue
    .line 177
    new-instance v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, mAvrLogicalAddress:I

    iget-object v3, p0, mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SystemAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 178
    invoke-virtual {p0}, finish()V

    .line 179
    return-void
.end method
