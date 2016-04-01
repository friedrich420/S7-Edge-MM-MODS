.class public Lcom/android/server/hdmi/OneTouchRecordAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchRecordAction.java"


# static fields
.field private static final RECORD_STATUS_TIMEOUT_MS:I = 0x1d4c0

.field private static final STATE_RECORDING_IN_PROGRESS:I = 0x2

.field private static final STATE_WAITING_FOR_RECORD_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchRecordAction"


# instance fields
.field private final mRecordSource:[B

.field private final mRecorderAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V
    .registers 4
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "recorderAddress"    # I
    .param p3, "recordSource"    # [B

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 48
    iput p2, p0, mRecorderAddress:I

    .line 49
    iput-object p3, p0, mRecordSource:[B

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/OneTouchRecordAction;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/OneTouchRecordAction;

    .prologue
    .line 32
    iget v0, p0, mRecorderAddress:I

    return v0
.end method

.method private handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    iget v3, p0, mRecorderAddress:I

    if-eq v2, v3, :cond_a

    .line 115
    :goto_9
    return v1

    .line 97
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    aget-byte v0, v2, v1

    .line 98
    .local v0, "recordStatus":I
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, mRecorderAddress:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 99
    const-string v1, "OneTouchRecordAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got record status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    packed-switch v0, :pswitch_data_50

    .line 112
    invoke-virtual {p0}, finish()V

    .line 115
    :goto_45
    const/4 v1, 0x1

    goto :goto_9

    .line 108
    :pswitch_47
    const/4 v1, 0x2

    iput v1, p0, mState:I

    .line 109
    iget-object v1, p0, mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    goto :goto_45

    .line 103
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method private sendRecordOn()V
    .registers 4

    .prologue
    .line 59
    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    iget v1, p0, mRecorderAddress:I

    iget-object v2, p0, mRecordSource:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/OneTouchRecordAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/OneTouchRecordAction$1;-><init>(Lcom/android/server/hdmi/OneTouchRecordAction;)V

    invoke-virtual {p0, v0, v1}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, mState:I

    .line 75
    iget v0, p0, mState:I

    const v1, 0x1d4c0

    invoke-virtual {p0, v0, v1}, addTimer(II)V

    .line 76
    return-void
.end method


# virtual methods
.method getRecorderAddress()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, mRecorderAddress:I

    return v0
.end method

.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 120
    iget v0, p0, mState:I

    if-eq v0, p1, :cond_2f

    .line 121
    const-string v0, "OneTouchRecordAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout in invalid state:[Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_2e
    return-void

    .line 125
    :cond_2f
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, mRecorderAddress:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 127
    invoke-virtual {p0}, finish()V

    goto :goto_2e
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v0, 0x0

    .line 80
    iget v1, p0, mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    iget v1, p0, mRecorderAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 88
    :cond_e
    :goto_e
    return v0

    .line 84
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    goto :goto_e

    .line 86
    :pswitch_17
    invoke-direct {p0, p1}, handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_e

    .line 84
    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_17
    .end packed-switch
.end method

.method start()Z
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, sendRecordOn()V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
