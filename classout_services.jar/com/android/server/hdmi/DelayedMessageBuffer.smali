.class final Lcom/android/server/hdmi/DelayedMessageBuffer;
.super Ljava/lang/Object;
.source "DelayedMessageBuffer.java"


# instance fields
.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mBuffer:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 34
    return-void
.end method

.method private removeActiveSource()V
    .registers 5

    .prologue
    .line 69
    iget-object v2, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 71
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x82

    if-ne v2, v3, :cond_6

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 75
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1e
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 43
    const/4 v0, 0x1

    .line 49
    .local v0, "buffered":Z
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    sparse-switch v1, :sswitch_data_34

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_9
    if-eqz v0, :cond_24

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_24
    return-void

    .line 51
    :sswitch_25
    invoke-direct {p0}, removeActiveSource()V

    .line 52
    iget-object v1, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 56
    :sswitch_2e
    iget-object v1, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 49
    :sswitch_data_34
    .sparse-switch
        0x72 -> :sswitch_2e
        0x82 -> :sswitch_25
        0xc0 -> :sswitch_2e
    .end sparse-switch
.end method

.method isBuffered(I)Z
    .registers 5
    .param p1, "opcode"    # I

    .prologue
    .line 78
    iget-object v2, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 79
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 80
    const/4 v2, 0x1

    .line 83
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method processActiveSource(I)V
    .registers 7
    .param p1, "address"    # I

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 140
    .local v2, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_49

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-ne v3, p1, :cond_49

    .line 142
    iget-object v3, p0, mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 145
    :cond_49
    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 148
    .end local v2    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_4f
    return-void
.end method

.method processAllMessages()V
    .registers 6

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 91
    .local v2, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v3, p0, mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 94
    .end local v2    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_3b
    return-void
.end method

.method processMessagesForDevice(I)V
    .registers 8
    .param p1, "address"    # I

    .prologue
    const/4 v5, 0x0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking message for address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 111
    .local v2, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v3, p1, :cond_41

    .line 112
    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 115
    :cond_41
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_5b

    iget-object v3, p0, mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isInputReady(I)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 117
    iget-object v3, p0, mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 120
    :cond_5b
    iget-object v3, p0, mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    .line 123
    .end local v2    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_79
    return-void
.end method
