.class Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;
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
    name = "EpdgImsGeneralListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener50;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsListener50$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p2, "x1"    # Lcom/sec/epdg/handover/EpdgImsListener50$1;

    .prologue
    .line 241
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x0

    .line 244
    packed-switch p2, :pswitch_data_b2

    .line 275
    const-string v2, "[EpdgImsListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_1e
    return-void

    .line 246
    :pswitch_1f
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v3, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$500(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    .line 247
    const-string/jumbo v2, "registrationinfo"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    .line 248
    .local v1, "regInfo":Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;
    const/4 v0, 0x0

    .line 249
    .local v0, "networkType":I
    const-string v2, "[EpdgImsListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REGISTRATION_DONE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getFeatureMask()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getEPDGStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getFeatureMask()I

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getEPDGStatus()I

    move-result v3

    if-ne v2, v3, :cond_69

    .line 251
    const/16 v0, 0x12

    .line 253
    :cond_69
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informImsRegStatusChangeToHandoverModule(I)V
    invoke-static {v2, v0}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$600(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 254
    if-ne v0, v5, :cond_76

    .line 255
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setImsRegNetType(I)V
    invoke-static {v2, v5}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$700(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    goto :goto_1e

    .line 257
    :cond_76
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    const/16 v3, 0xd

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setImsRegNetType(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$700(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    goto :goto_1e

    .line 262
    .end local v0    # "networkType":I
    .end local v1    # "regInfo":Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;
    :pswitch_7e
    const-string v2, "[EpdgImsListener]"

    const-string v3, "REGISTRATION_FAILED"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v2, "registrationinfo"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    .line 265
    .restart local v1    # "regInfo":Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;
    invoke-virtual {v1}, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;->getErrorCode()I

    move-result v2

    const/16 v3, 0x644

    if-ne v2, v3, :cond_a9

    .line 266
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v3, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$500(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    .line 267
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informImsRegStatusChangeToHandoverModule(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$600(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 271
    :goto_a2
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setImsRegNetType(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$700(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    goto/16 :goto_1e

    .line 269
    :cond_a9
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v3, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$500(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    goto :goto_a2

    .line 244
    nop

    :pswitch_data_b2
    .packed-switch 0x3ec
        :pswitch_1f
        :pswitch_7e
    .end packed-switch
.end method
