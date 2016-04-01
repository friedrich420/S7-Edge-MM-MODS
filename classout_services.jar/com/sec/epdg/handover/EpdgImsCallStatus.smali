.class public Lcom/sec/epdg/handover/EpdgImsCallStatus;
.super Ljava/lang/Object;
.source "EpdgImsCallStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    }
.end annotation


# static fields
.field private static final DOWNGRADED_VIDEO_CALL_COUNT:I = 0x2

.field private static final E911_CALL_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[EpdgImsCallStatus]"

.field private static final TOTAL_CALL_COUNT:I = 0x0

.field private static final VIDEO_CALL_COUNT:I = 0x1


# instance fields
.field private mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field private mEcbmModeOn:Z

.field private mHoDelayVoiceCallSessionId:Ljava/lang/String;

.field private final mImsCallList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v0, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, mEcbmModeOn:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mImsCallList:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0}, getCallType(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/handover/EpdgImsCallStatus;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsCallStatus;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, isVideoCall(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/handover/EpdgImsCallStatus;)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsCallStatus;

    .prologue
    .line 25
    iget-object v0, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    return-object v0
.end method

.method private static getCallType(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;
    .registers 3
    .param p0, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallType()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method private getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDownGradedVideoCall(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedVideoCall()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method private isDowngradedAtEstablish(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedAtEstablish()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method private isVideoCall(I)Z
    .registers 3
    .param p1, "imsCallType"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_8

    .line 375
    :goto_4
    :pswitch_4
    return v0

    .line 362
    :pswitch_5
    const/4 v0, 0x1

    .line 363
    goto :goto_4

    .line 357
    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateEpdgCallStatus()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 387
    iget-boolean v1, p0, mEcbmModeOn:Z

    if-eqz v1, :cond_c

    .line 388
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 420
    :goto_b
    return-void

    .line 391
    :cond_c
    invoke-virtual {p0}, getCallCount()[I

    move-result-object v0

    .line 392
    .local v0, "callCount":[I
    if-nez v0, :cond_1f

    .line 393
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : callCount is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_b

    .line 395
    :cond_1f
    aget v1, v0, v4

    if-nez v1, :cond_30

    .line 396
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : There is no call"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_b

    .line 398
    :cond_30
    const/4 v1, 0x3

    aget v1, v0, v1

    if-lez v1, :cond_42

    .line 399
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : At least one call is E911"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_b

    .line 401
    :cond_42
    aget v1, v0, v4

    aget v2, v0, v5

    if-ne v1, v2, :cond_55

    .line 402
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : All calls are video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_b

    .line 404
    :cond_55
    aget v1, v0, v4

    aget v2, v0, v6

    if-ne v1, v2, :cond_68

    .line 405
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : All calls are downgraded video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_b

    .line 407
    :cond_68
    aget v1, v0, v4

    aget v2, v0, v5

    aget v3, v0, v6

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_7e

    .line 408
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : All calls are video or downgraded video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_b

    .line 410
    :cond_7e
    aget v1, v0, v4

    aget v2, v0, v4

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aget v3, v0, v6

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_98

    .line 411
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : All calls are voice calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_b

    .line 413
    :cond_98
    aget v1, v0, v4

    aget v2, v0, v4

    aget v3, v0, v5

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_af

    .line 414
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : All calls are downgraded video or voice calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_b

    .line 417
    :cond_af
    const-string v1, "[EpdgImsCallStatus]"

    const-string/jumbo v2, "updateEpdgCallStatus() : Mixed call case"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_b
.end method


# virtual methods
.method protected getCallCount()[I
    .registers 12

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 136
    new-array v0, v6, [I

    .line 137
    .local v0, "callCount":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v6, :cond_d

    .line 138
    aput v9, v0, v2

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 140
    :cond_d
    iget-object v6, p0, mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 141
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 143
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .line 144
    .local v1, "callInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->getCallType()Ljava/lang/Integer;

    move-result-object v3

    .line 145
    .local v3, "imsCallType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_b4

    .line 166
    :goto_36
    :pswitch_36
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    if-eqz v6, :cond_58

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isDownGradedVideoCall()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 167
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    if-eqz v6, :cond_96

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isDowngradedAtEstablish()Z

    move-result v6

    if-nez v6, :cond_96

    .line 168
    const-string v6, "[EpdgImsCallStatus]"

    const-string/jumbo v7, "getCallCount() DownGradedVideoCall for ATT"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    aget v6, v0, v10

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v10

    .line 177
    :cond_58
    :goto_58
    aget v6, v0, v9

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v9

    .line 178
    const-string v6, "[EpdgImsCallStatus]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCallCount() Key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 153
    :pswitch_86
    const/4 v6, 0x1

    aget v7, v0, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v6

    goto :goto_36

    .line 157
    :pswitch_8e
    const/4 v6, 0x3

    aget v7, v0, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v6

    goto :goto_36

    .line 170
    :cond_96
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    if-nez v6, :cond_a9

    .line 171
    const-string v6, "[EpdgImsCallStatus]"

    const-string/jumbo v7, "getCallCount() DownGradedVideoCall"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    aget v6, v0, v10

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v10

    goto :goto_58

    .line 174
    :cond_a9
    const-string v6, "[EpdgImsCallStatus]"

    const-string/jumbo v7, "getCallCount() isDowngradedAtEstablish for ATT - Accept as voice"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 180
    .end local v1    # "callInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v3    # "imsCallType":Ljava/lang/Integer;
    .end local v5    # "key":Ljava/lang/String;
    :cond_b2
    return-object v0

    .line 145
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_36
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_36
        :pswitch_86
        :pswitch_8e
        :pswitch_8e
    .end packed-switch
.end method

.method protected getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 2

    .prologue
    .line 129
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-nez v0, :cond_7

    .line 130
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 132
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_6
.end method

.method protected getE911CallCount()I
    .registers 3

    .prologue
    .line 184
    invoke-virtual {p0}, getCallCount()[I

    move-result-object v0

    .line 185
    .local v0, "callCount":[I
    if-eqz v0, :cond_a

    .line 186
    const/4 v1, 0x3

    aget v1, v0, v1

    .line 188
    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected getNonE911CallCount()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0}, getCallCount()[I

    move-result-object v0

    .line 193
    .local v0, "callCount":[I
    if-eqz v0, :cond_d

    .line 194
    aget v1, v0, v1

    const/4 v2, 0x3

    aget v2, v0, v2

    sub-int/2addr v1, v2

    .line 196
    :cond_d
    return v1
.end method

.method protected onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 7
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 229
    :try_start_0
    invoke-direct {p0, p1}, getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "key":Ljava/lang/String;
    const-string v2, "[EpdgImsCallStatus]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallEnded() Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-direct {p0}, updateEpdgCallStatus()V

    .line 233
    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    if-eqz v2, :cond_38

    .line 234
    iget-object v2, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    if-eqz v2, :cond_38

    .line 235
    iget-object v2, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 237
    const/4 v2, 0x0

    iput-object v2, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 245
    :cond_38
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informCallStatusChangeToHandoverModule()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 249
    .end local v1    # "key":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-void

    .line 246
    :catch_3c
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3b
.end method

.method protected onCallEstablish(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 268
    return-void
.end method

.method protected onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 8
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 289
    :try_start_0
    invoke-direct {p0, p1}, getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "key":Ljava/lang/String;
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallModified() Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .line 292
    .local v1, "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    if-nez v1, :cond_41

    .line 293
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallModified() No callinfo for Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :goto_40
    return-void

    .line 296
    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_41
    invoke-virtual {v1, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 297
    invoke-direct {p0}, updateEpdgCallStatus()V

    .line 298
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallModified() epdgCallInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isHandoverReady()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 300
    const-string v3, "[EpdgImsCallStatus]"

    const-string/jumbo v4, "onCallModified() Handover ready"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    if-eqz v3, :cond_99

    .line 302
    iget-object v3, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    if-eqz v3, :cond_99

    iget-object v3, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 304
    const/4 v3, 0x0

    iput-object v3, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_99

    .line 306
    const-string v3, "[EpdgImsCallStatus]"

    const-string v4, "Newly established call is voice, need to inform handover delay"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informHandoverDelayToHandoverModule()V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_93} :catch_94

    goto :goto_40

    .line 317
    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :catch_94
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_40

    .line 313
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_99
    :try_start_99
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informCallStatusChangeToHandoverModule()V

    goto :goto_40

    .line 315
    :cond_9d
    const-string v3, "[EpdgImsCallStatus]"

    const-string/jumbo v4, "onCallModified() Handover not ready"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a5} :catch_94

    goto :goto_40
.end method

.method protected onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 8
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 253
    :try_start_0
    invoke-direct {p0, p1}, getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "key":Ljava/lang/String;
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallModifyRequested() Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .line 256
    .local v1, "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    if-nez v1, :cond_41

    .line 257
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallModifyRequested() No callinfo for Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :goto_40
    return-void

    .line 260
    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_41
    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->resetAckRcvd()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_40

    .line 261
    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_40
.end method

.method protected onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 7
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 272
    :try_start_0
    invoke-direct {p0, p1}, getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "key":Ljava/lang/String;
    const-string v2, "[EpdgImsCallStatus]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallStarted() Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, mImsCallList:Ljava/util/HashMap;

    new-instance v3, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    invoke-direct {v3, p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;-><init>(Lcom/sec/epdg/handover/EpdgImsCallStatus;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    if-eqz v2, :cond_35

    .line 276
    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v2, v3, :cond_35

    .line 278
    iput-object v1, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 281
    :cond_35
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v2, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_39} :catch_3a

    .line 285
    .end local v1    # "key":Ljava/lang/String;
    :goto_39
    return-void

    .line 282
    :catch_3a
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_39
.end method

.method protected onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
    .registers 10
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "bearerstate"    # I
    .param p3, "qci"    # I

    .prologue
    .line 324
    :try_start_0
    invoke-direct {p0, p1}, getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "key":Ljava/lang/String;
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDedicatedBearerEvent() Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .line 327
    .local v1, "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    if-nez v1, :cond_41

    .line 328
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDedicatedBearerEvent() No callinfo for Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :goto_40
    return-void

    .line 331
    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_41
    invoke-virtual {v1, p2, p3}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->storeDedicatedBearerState(II)V

    .line 332
    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isHandoverReady()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 333
    const-string v3, "[EpdgImsCallStatus]"

    const-string/jumbo v4, "onDedicatedBearerEvent() Handover ready"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    if-eqz v3, :cond_7d

    .line 335
    iget-object v3, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    if-eqz v3, :cond_7d

    iget-object v3, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 337
    const/4 v3, 0x0

    iput-object v3, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_7d

    .line 339
    const-string v3, "[EpdgImsCallStatus]"

    const-string v4, "Newly established call is voice, need to inform handover delay"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informHandoverDelayToHandoverModule()V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_77} :catch_78

    goto :goto_40

    .line 350
    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :catch_78
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_40

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_7d
    :try_start_7d
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informCallStatusChangeToHandoverModule()V

    goto :goto_40

    .line 348
    :cond_81
    const-string v3, "[EpdgImsCallStatus]"

    const-string/jumbo v4, "onDedicatedBearerEvent() Handover not ready"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_89} :catch_78

    goto :goto_40
.end method

.method protected resetCallList()V
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 425
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v0, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, mEcbmModeOn:Z

    .line 428
    return-void
.end method

.method protected setEcbmChanged(Z)V
    .registers 5
    .param p1, "ecbmModeOn"    # Z

    .prologue
    .line 200
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-nez v0, :cond_5

    .line 209
    :cond_4
    :goto_4
    return-void

    .line 203
    :cond_5
    const-string v0, "[EpdgImsCallStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEcbmChanged() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-boolean p1, p0, mEcbmModeOn:Z

    .line 205
    invoke-direct {p0}, updateEpdgCallStatus()V

    .line 206
    iget-object v0, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v0, v1, :cond_4

    .line 207
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informCallStatusChangeToHandoverModule()V

    goto :goto_4
.end method
