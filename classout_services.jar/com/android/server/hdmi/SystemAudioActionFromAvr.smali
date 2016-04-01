.class final Lcom/android/server/hdmi/SystemAudioActionFromAvr;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "SystemAudioActionFromAvr.java"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 7
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "targetStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 40
    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 41
    return-void
.end method

.method private handleSystemAudioActionFromAvr()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-boolean v0, p0, mTargetAudioStatus:Z

    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v1

    if-ne v0, v1, :cond_11

    .line 52
    invoke-virtual {p0, v4}, finishWithCallback(I)V

    .line 73
    :goto_10
    return-void

    .line 55
    :cond_11
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 56
    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    iget v1, p0, mAvrLogicalAddress:I

    const/16 v2, 0x72

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 59
    iput-boolean v4, p0, mTargetAudioStatus:Z

    .line 60
    invoke-virtual {p0}, sendSystemAudioModeRequest()V

    goto :goto_10

    .line 64
    :cond_31
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 66
    iget-boolean v0, p0, mTargetAudioStatus:Z

    if-eqz v0, :cond_42

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setSystemAudioMode(Z)V

    .line 68
    invoke-virtual {p0}, startAudioStatusAction()V

    goto :goto_10

    .line 70
    :cond_42
    invoke-virtual {p0, v4}, setSystemAudioMode(Z)V

    .line 71
    invoke-virtual {p0, v4}, finishWithCallback(I)V

    goto :goto_10
.end method


# virtual methods
.method start()Z
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, removeSystemAudioActionInProgress()V

    .line 46
    invoke-direct {p0}, handleSystemAudioActionFromAvr()V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
