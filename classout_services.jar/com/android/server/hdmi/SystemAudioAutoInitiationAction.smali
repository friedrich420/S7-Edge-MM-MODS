.class final Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAutoInitiationAction.java"


# static fields
.field private static final STATE_WAITING_FOR_SYSTEM_AUDIO_MODE_STATUS:I = 0x1


# instance fields
.field private final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 3
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 34
    iput p2, p0, mAvrAddress:I

    .line 35
    return-void
.end method

.method private canChangeSystemAudio()Z
    .registers 3

    .prologue
    .line 112
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private handleSystemAudioModeStatusMessage()V
    .registers 6

    .prologue
    .line 74
    invoke-direct {p0}, canChangeSystemAudio()Z

    move-result v1

    if-nez v1, :cond_12

    .line 75
    const-string v1, "Cannot change system audio mode in auto initiation action."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, finish()V

    .line 85
    :goto_11
    return-void

    .line 80
    :cond_12
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSystemAudioModeSetting()Z

    move-result v0

    .line 82
    .local v0, "systemAudioModeSetting":Z
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    iget v3, p0, mAvrAddress:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v1}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 84
    invoke-virtual {p0}, finish()V

    goto :goto_11
.end method

.method private handleSystemAudioModeStatusTimeout()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 101
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSystemAudioModeSetting()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 102
    invoke-direct {p0}, canChangeSystemAudio()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 103
    new-instance v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 108
    :cond_20
    :goto_20
    invoke-virtual {p0}, finish()V

    .line 109
    return-void

    .line 106
    :cond_24
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    goto :goto_20
.end method

.method private sendGiveSystemAudioModeStatus()V
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    iget v1, p0, mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V

    invoke-virtual {p0, v0, v1}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 57
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 89
    iget v0, p0, mState:I

    if-eq v0, p1, :cond_5

    .line 98
    :goto_4
    return-void

    .line 93
    :cond_5
    iget v0, p0, mState:I

    packed-switch v0, :pswitch_data_10

    goto :goto_4

    .line 95
    :pswitch_b
    invoke-direct {p0}, handleSystemAudioModeStatusTimeout()V

    goto :goto_4

    .line 93
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget v2, p0, mState:I

    if-ne v2, v0, :cond_e

    iget v2, p0, mAvrAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v2, v3, :cond_10

    :cond_e
    move v0, v1

    .line 70
    :goto_f
    return v0

    .line 66
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_1c

    .line 67
    invoke-direct {p0}, handleSystemAudioModeStatusMessage()V

    goto :goto_f

    :cond_1c
    move v0, v1

    .line 70
    goto :goto_f
.end method

.method start()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 39
    iput v2, p0, mState:I

    .line 41
    iget v0, p0, mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, addTimer(II)V

    .line 42
    invoke-direct {p0}, sendGiveSystemAudioModeStatus()V

    .line 43
    return v2
.end method
