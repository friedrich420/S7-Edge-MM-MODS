.class public Lcom/android/server/hdmi/TimerRecordingAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "TimerRecordingAction.java"


# static fields
.field private static final STATE_WAITING_FOR_TIMER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimerRecordingAction"

.field private static final TIMER_STATUS_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field private final mRecordSource:[B

.field private final mRecorderAddress:I

.field private final mSourceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V
    .registers 5
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "recorderAddress"    # I
    .param p3, "sourceType"    # I
    .param p4, "recordSource"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 50
    iput p2, p0, mRecorderAddress:I

    .line 51
    iput p3, p0, mSourceType:I

    .line 52
    iput-object p4, p0, mRecordSource:[B

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/TimerRecordingAction;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/TimerRecordingAction;

    .prologue
    .line 34
    iget v0, p0, mRecorderAddress:I

    return v0
.end method

.method private static bytesToInt([B)I
    .registers 7
    .param p0, "data"    # [B

    .prologue
    .line 149
    array-length v3, p0

    const/4 v4, 0x4

    if-le v3, v4, :cond_21

    .line 150
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_21
    const/4 v1, 0x0

    .line 153
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    array-length v3, p0

    if-ge v0, v3, :cond_33

    .line 154
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v2, v3, 0x8

    .line 155
    .local v2, "shift":I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 157
    .end local v2    # "shift":I
    :cond_33
    return v1
.end method

.method private handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 130
    .local v1, "params":[B
    aget-byte v5, v1, v4

    and-int/lit16 v0, v5, 0xff

    .line 131
    .local v0, "messageType":I
    sparse-switch v0, :sswitch_data_42

    move v3, v4

    .line 144
    :goto_e
    return v3

    .line 139
    :sswitch_f
    aget-byte v4, v1, v3

    and-int/lit16 v2, v4, 0xff

    .line 140
    .local v2, "reason":I
    const-string v4, "TimerRecordingAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Feature Abort] for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    iget v5, p0, mRecorderAddress:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 143
    invoke-virtual {p0}, finish()V

    goto :goto_e

    .line 131
    :sswitch_data_42
    .sparse-switch
        0x34 -> :sswitch_f
        0x97 -> :sswitch_f
        0xa2 -> :sswitch_f
    .end sparse-switch
.end method

.method private handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v4, 0x1

    .line 114
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 116
    .local v0, "timerStatusData":[B
    array-length v1, v0

    if-eq v1, v4, :cond_c

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_39

    .line 117
    :cond_c
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, mRecorderAddress:I

    invoke-static {v0}, bytesToInt([B)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 118
    const-string v1, "TimerRecordingAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received [Timer Status Data]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_35
    invoke-virtual {p0}, finish()V

    .line 125
    return v4

    .line 120
    :cond_39
    const-string v1, "TimerRecordingAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid [Timer Status Data]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private sendTimerMessage()V
    .registers 5

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget v1, p0, mSourceType:I

    packed-switch v1, :pswitch_data_44

    .line 77
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, mRecorderAddress:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 79
    invoke-virtual {p0}, finish()V

    .line 95
    :goto_13
    return-void

    .line 65
    :pswitch_14
    invoke-virtual {p0}, getSourceAddress()I

    move-result v1

    iget v2, p0, mRecorderAddress:I

    iget-object v3, p0, mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 82
    :goto_20
    new-instance v1, Lcom/android/server/hdmi/TimerRecordingAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/TimerRecordingAction$1;-><init>(Lcom/android/server/hdmi/TimerRecordingAction;)V

    invoke-virtual {p0, v0, v1}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_13

    .line 69
    :pswitch_29
    invoke-virtual {p0}, getSourceAddress()I

    move-result v1

    iget v2, p0, mRecorderAddress:I

    iget-object v3, p0, mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 71
    goto :goto_20

    .line 73
    :pswitch_36
    invoke-virtual {p0}, getSourceAddress()I

    move-result v1

    iget v2, p0, mRecorderAddress:I

    iget-object v3, p0, mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 75
    goto :goto_20

    .line 63
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_14
        :pswitch_29
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 162
    iget v0, p0, mState:I

    if-eq v0, p1, :cond_2f

    .line 163
    const-string v0, "TimerRecordingAction"

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

    .line 170
    :goto_2e
    return-void

    .line 167
    :cond_2f
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, mRecorderAddress:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 169
    invoke-virtual {p0}, finish()V

    goto :goto_2e
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v0, 0x0

    .line 99
    iget v1, p0, mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    iget v2, p0, mRecorderAddress:I

    if-eq v1, v2, :cond_f

    .line 110
    :cond_e
    :goto_e
    return v0

    .line 104
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    sparse-switch v1, :sswitch_data_22

    goto :goto_e

    .line 108
    :sswitch_17
    invoke-direct {p0, p1}, handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_e

    .line 106
    :sswitch_1c
    invoke-direct {p0, p1}, handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_e

    .line 104
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_17
        0x35 -> :sswitch_1c
    .end sparse-switch
.end method

.method start()Z
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, sendTimerMessage()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
