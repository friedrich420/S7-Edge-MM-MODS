.class Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
.super Ljava/lang/Object;
.source "EpdgImsCallStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsCallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgImsCallInfo"
.end annotation


# instance fields
.field mCallType:Ljava/lang/Integer;

.field mIsAckRecvd:Z

.field mIsDowngradedVideoCall:Z

.field mVideoDedicatedBearerUp:Z

.field mVoiceDedicatedBearerUp:Z

.field misDowngradedAtEstablish:Z

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsCallStatus;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 4
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    const/4 v0, -0x1

    .line 52
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p2}, update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 54
    invoke-virtual {p0}, resetAckRcvd()V

    .line 55
    invoke-virtual {p0, v0, v0}, storeDedicatedBearerState(II)V

    .line 56
    return-void
.end method


# virtual methods
.method getCallType()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, mCallType:Ljava/lang/Integer;

    return-object v0
.end method

.method isDownGradedVideoCall()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, mIsDowngradedVideoCall:Z

    return v0
.end method

.method isDowngradedAtEstablish()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, misDowngradedAtEstablish:Z

    return v0
.end method

.method isHandoverReady()Z
    .registers 4

    .prologue
    .line 109
    iget-object v1, p0, mCallType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    .local v0, "callType":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 111
    iget-boolean v1, p0, mIsAckRecvd:Z

    .line 113
    :goto_16
    return v1

    :cond_17
    iget-boolean v1, p0, mIsAckRecvd:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsCallStatus;->isVideoCall(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$100(Lcom/sec/epdg/handover/EpdgImsCallStatus;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, mVideoDedicatedBearerUp:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, mVoiceDedicatedBearerUp:Z

    if-nez v1, :cond_49

    :cond_2b
    iget-boolean v1, p0, mIsDowngradedVideoCall:Z

    if-eqz v1, :cond_33

    iget-boolean v1, p0, mVoiceDedicatedBearerUp:Z

    if-nez v1, :cond_49

    :cond_33
    iget-object v1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsCallStatus;->isVideoCall(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$100(Lcom/sec/epdg/handover/EpdgImsCallStatus;I)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-boolean v1, p0, mVoiceDedicatedBearerUp:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    # getter for: Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$200(Lcom/sec/epdg/handover/EpdgImsCallStatus;)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_4b

    :cond_49
    const/4 v1, 0x1

    goto :goto_16

    :cond_4b
    const/4 v1, 0x0

    goto :goto_16
.end method

.method resetAckRcvd()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsAckRecvd:Z

    .line 74
    return-void
.end method

.method storeDedicatedBearerState(II)V
    .registers 6
    .param p1, "dedicatedBearerState"    # I
    .param p2, "qci"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    sparse-switch p2, :sswitch_data_1a

    .line 94
    :goto_6
    return-void

    .line 79
    :sswitch_7
    if-eq p1, v2, :cond_c

    :goto_9
    iput-boolean v0, p0, mVoiceDedicatedBearerUp:Z

    goto :goto_6

    :cond_c
    move v0, v1

    goto :goto_9

    .line 84
    :sswitch_e
    if-eq p1, v2, :cond_13

    :goto_10
    iput-boolean v0, p0, mVideoDedicatedBearerUp:Z

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_10

    .line 88
    :sswitch_15
    iput-boolean v1, p0, mVoiceDedicatedBearerUp:Z

    .line 89
    iput-boolean v1, p0, mVideoDedicatedBearerUp:Z

    goto :goto_6

    .line 77
    :sswitch_data_1a
    .sparse-switch
        -0x1 -> :sswitch_15
        0x1 -> :sswitch_7
        0x2 -> :sswitch_e
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mCallType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mCallType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsDowngradedVideoCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsDowngradedVideoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " misDowngradedAtEstablish : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, misDowngradedAtEstablish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVideoDedicatedBearerUp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mVideoDedicatedBearerUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsAckRecvd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsAckRecvd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 7
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 60
    :try_start_3
    # invokes: Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallType(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;
    invoke-static {p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$000(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, mCallType:Ljava/lang/Integer;

    .line 61
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedVideoCall()Z

    move-result v3

    iput-boolean v3, p0, mIsDowngradedVideoCall:Z

    .line 62
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedAtEstablish()Z

    move-result v3

    iput-boolean v3, p0, misDowngradedAtEstablish:Z

    .line 63
    const/4 v3, 0x1

    iput-boolean v3, p0, mIsAckRecvd:Z

    .line 64
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getDedicatedBearerState(I)I

    move-result v3

    if-eq v3, v4, :cond_35

    move v3, v2

    :goto_20
    iput-boolean v3, p0, mVoiceDedicatedBearerUp:Z

    .line 65
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getDedicatedBearerState(I)I

    move-result v3

    if-ne v3, v4, :cond_31

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getDedicatedBearerState(I)I

    move-result v3

    if-eq v3, v4, :cond_32

    :cond_31
    move v1, v2

    :cond_32
    iput-boolean v1, p0, mVideoDedicatedBearerUp:Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_34} :catch_37

    .line 70
    :goto_34
    return-void

    :cond_35
    move v3, v1

    .line 64
    goto :goto_20

    .line 67
    :catch_37
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_34
.end method
