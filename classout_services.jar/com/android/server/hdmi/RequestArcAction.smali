.class abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestArcAction.java"


# static fields
.field protected static final STATE_WATING_FOR_REQUEST_ARC_REQUEST_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestArcAction"


# instance fields
.field protected final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 5
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 43
    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 44
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 45
    iput p2, p0, mAvrAddress:I

    .line 46
    return-void
.end method


# virtual methods
.method protected final disableArcTransmission()V
    .registers 5

    .prologue
    .line 77
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget v2, p0, mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 79
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 80
    return-void
.end method

.method final handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 84
    iget v0, p0, mState:I

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 90
    :cond_7
    :goto_7
    return-void

    .line 87
    :cond_8
    const-string v0, "[T] RequestArcAction."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, disableArcTransmission()V

    .line 89
    invoke-virtual {p0}, finish()V

    goto :goto_7
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    iget v4, p0, mState:I

    if-ne v4, v2, :cond_10

    iget v4, p0, mAvrAddress:I

    const-string v5, "RequestArcAction"

    invoke-static {p1, v4, v5}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_10
    move v2, v3

    .line 72
    :goto_11
    return v2

    .line 54
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 55
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_40

    move v2, v3

    .line 72
    goto :goto_11

    .line 60
    :pswitch_1b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    aget-byte v4, v4, v3

    and-int/lit16 v1, v4, 0xff

    .line 61
    .local v1, "originalOpcode":I
    const/16 v4, 0xc4

    if-ne v1, v4, :cond_2e

    .line 62
    invoke-virtual {p0}, disableArcTransmission()V

    .line 63
    invoke-virtual {p0}, finish()V

    goto :goto_11

    .line 65
    :cond_2e
    const/16 v4, 0xc3

    if-ne v1, v4, :cond_3d

    .line 66
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    .line 67
    invoke-virtual {p0}, finish()V

    goto :goto_11

    :cond_3d
    move v2, v3

    .line 70
    goto :goto_11

    .line 55
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method
