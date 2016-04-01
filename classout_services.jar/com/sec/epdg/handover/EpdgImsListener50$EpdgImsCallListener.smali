.class Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;
.super Ljava/lang/Object;
.source "EpdgImsListener50.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgImsCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener50;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsListener50$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p2, "x1"    # Lcom/sec/epdg/handover/EpdgImsListener50$1;

    .prologue
    .line 300
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .registers 16
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 304
    if-nez p3, :cond_1d

    .line 305
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There is no session id, call type, ignore it:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_1c
    :goto_1c
    return-void

    .line 308
    :cond_1d
    const-string/jumbo v7, "sessionid"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 309
    .local v6, "sessionID":I
    const-string v7, "calltype"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 311
    .local v3, "callType":I
    packed-switch p2, :pswitch_data_43c

    .line 499
    :cond_2d
    :goto_2d
    :pswitch_2d
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 313
    :pswitch_46
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onRinging: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v7, v8, :cond_7b

    .line 315
    const-string v7, "[EpdgImsListener]"

    const-string/jumbo v8, "video call is ongoing and second call is coming, might be handover delayed case"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setIsHandoverDelayedCase(Z)V
    invoke-static {v7, v11}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    .line 318
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setHandoverDelayedSessionId(I)V
    invoke-static {v7, v6}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1000(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 321
    :cond_7b
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto :goto_1c

    .line 325
    :pswitch_83
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCalling: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_1c

    .line 331
    :pswitch_a5
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCallEstablished: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ImsCallType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "callCount":[I
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I

    move-result-object v0

    .line 334
    if-nez v0, :cond_e1

    .line 335
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_ESTABLISHED: callCount is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_1c

    .line 339
    :cond_e1
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v7, v0, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    .line 341
    .local v2, "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 342
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getIsHandoverDelayedCase()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-eqz v7, :cond_149

    .line 343
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setIsHandoverDelayedCase(Z)V
    invoke-static {v7, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    .line 344
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setHandoverDelayedSessionId(I)V
    invoke-static {v7, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1000(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 345
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v7, v8, :cond_112

    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v7, v8, :cond_131

    .line 347
    :cond_112
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Newly established call is video or voice+video"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-nez v7, :cond_12a

    .line 349
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Appropriate dedicated bearer is not established"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 352
    :cond_12a
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_1c

    .line 353
    :cond_131
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v7, v8, :cond_1c

    .line 355
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Newly established call is voice, need to inform handover delay"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informHandoverDelayToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1700(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_1c

    .line 360
    :cond_149
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-nez v7, :cond_15a

    .line 361
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Appropriate dedicated bearer is not established"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 364
    :cond_15a
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_1c

    .line 370
    .end local v0    # "callCount":[I
    .end local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :pswitch_161
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCallSwitched: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    .line 372
    .restart local v0    # "callCount":[I
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I

    move-result-object v0

    .line 373
    if-nez v0, :cond_19d

    .line 374
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_SWITCHED: callCount is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_1c

    .line 378
    :cond_19d
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v7, v0, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    .line 380
    .restart local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 381
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_1c

    .line 385
    .end local v0    # "callCount":[I
    .end local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :pswitch_1af
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCallHeld: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " holdRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "holdrequest"

    invoke-virtual {p3, v9}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 389
    :pswitch_1db
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCallResumed: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resumeRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "resumerequest"

    invoke-virtual {p3, v9}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 393
    :pswitch_207
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCallEnded: sessionID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "reason"

    invoke-virtual {p3, v9}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v7, "reason"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 396
    .local v1, "callEndReason":I
    const/16 v7, 0x454

    if-ne v1, v7, :cond_245

    .line 397
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_ENDED: do not consider this call end, as user is busy on other CS call"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 400
    :cond_245
    const/4 v0, 0x0

    .line 401
    .restart local v0    # "callCount":[I
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I

    move-result-object v0

    .line 402
    if-nez v0, :cond_25e

    .line 403
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_ENDED: callCount is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_1c

    .line 407
    :cond_25e
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->checkForHandoverDelayedCase(I)V
    invoke-static {v7, v6}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1800(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 408
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v7, v0, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    .line 410
    .restart local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 411
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getIsHandoverDelayedCase()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-eqz v7, :cond_27f

    .line 412
    const-string v7, "[EpdgImsListener]"

    const-string v8, "This is handover delayed case, wait for 2nd call establish"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 415
    :cond_27f
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_1c

    .line 420
    .end local v0    # "callCount":[I
    .end local v1    # "callEndReason":I
    .end local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :pswitch_286
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onChangeRequest: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ImsCallType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 424
    :pswitch_2ab
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onEarlyMediaStart: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 428
    :pswitch_2c6
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onError: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "errorcode"

    invoke-virtual {p3, v9}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x0

    .line 430
    .restart local v0    # "callCount":[I
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I

    move-result-object v0

    .line 431
    if-nez v0, :cond_309

    .line 432
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_ENDED: callCount is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_1c

    .line 436
    :cond_309
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->checkForHandoverDelayedCase(I)V
    invoke-static {v7, v6}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1800(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 437
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v7, v0, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    .line 439
    .restart local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 440
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getIsHandoverDelayedCase()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-eqz v7, :cond_32a

    .line 441
    const-string v7, "[EpdgImsListener]"

    const-string v8, "This is handover delayed case, wait for 2nd call establish"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 444
    :cond_32a
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-nez v7, :cond_33b

    .line 445
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Appropriate dedicated bearer is not established"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 448
    :cond_33b
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_1c

    .line 453
    .end local v0    # "callCount":[I
    .end local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :pswitch_342
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onConferenceCallParticipantAdded: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 457
    :pswitch_35d
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onConferenceCallParticipantRemoved: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 460
    :pswitch_378
    const-string v7, "bearerstate"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 461
    .local v4, "dedicatedBearerState":I
    const-string v7, "bearertype"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 462
    .local v5, "dedicatedBearerType":I
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onDedicatedBearerChanged: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ImsCallType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    if-nez v4, :cond_3e8

    .line 465
    packed-switch v5, :pswitch_data_480

    .line 473
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IIMSListener.CALL.DEDICATED_BEARER: Unhandled action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 467
    :pswitch_3da
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setVoiceDedicatedBearerState(Z)V
    invoke-static {v7, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    goto/16 :goto_2d

    .line 470
    :pswitch_3e1
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setVideoDedicatedBearerState(Z)V
    invoke-static {v7, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$2000(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    goto/16 :goto_2d

    .line 478
    :cond_3e8
    packed-switch v5, :pswitch_data_488

    .line 486
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IIMSListener.CALL.DEDICATED_BEARER: Unhandled action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_403
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v7, v8, :cond_2d

    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v7, v8, :cond_2d

    .line 491
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-nez v7, :cond_434

    .line 492
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Appropriate dedicated bearer has not established yet"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 480
    :pswitch_428
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setVoiceDedicatedBearerState(Z)V
    invoke-static {v7, v11}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    goto :goto_403

    .line 483
    :pswitch_42e
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setVideoDedicatedBearerState(Z)V
    invoke-static {v7, v11}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$2000(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    goto :goto_403

    .line 495
    :cond_434
    iget-object v7, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_2d

    .line 311
    nop

    :pswitch_data_43c
    .packed-switch 0x7d1
        :pswitch_46
        :pswitch_2d
        :pswitch_83
        :pswitch_2d
        :pswitch_a5
        :pswitch_161
        :pswitch_1af
        :pswitch_1db
        :pswitch_2d
        :pswitch_207
        :pswitch_286
        :pswitch_2d
        :pswitch_2d
        :pswitch_2ab
        :pswitch_2d
        :pswitch_2c6
        :pswitch_a5
        :pswitch_342
        :pswitch_35d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_378
    .end packed-switch

    .line 465
    :pswitch_data_480
    .packed-switch 0x1
        :pswitch_3da
        :pswitch_3e1
    .end packed-switch

    .line 478
    :pswitch_data_488
    .packed-switch 0x1
        :pswitch_428
        :pswitch_42e
    .end packed-switch
.end method
