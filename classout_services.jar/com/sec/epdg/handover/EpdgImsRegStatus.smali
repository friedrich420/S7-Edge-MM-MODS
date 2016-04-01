.class public Lcom/sec/epdg/handover/EpdgImsRegStatus;
.super Ljava/lang/Object;
.source "EpdgImsRegStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[EpdgImsRegStatus]"


# instance fields
.field private mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    iput-object v0, p0, mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    return-void
.end method

.method private getNetworkType(Lcom/sec/ims/ImsRegistration;)I
    .registers 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x12

    :goto_9
    return v0

    :cond_a
    const/16 v0, 0xd

    goto :goto_9
.end method

.method private setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    .registers 5
    .param p1, "value"    # Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .prologue
    .line 54
    const-string v0, "[EpdgImsRegStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRegStatus: new Reg status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 56
    return-void
.end method


# virtual methods
.method protected getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .registers 2

    .prologue
    .line 47
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-nez v0, :cond_7

    .line 48
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 50
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    goto :goto_6
.end method

.method protected onDeRegistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .prologue
    .line 30
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    .line 31
    if-eqz p2, :cond_b

    const/16 v0, 0xc8

    if-ne v0, p2, :cond_18

    .line 32
    :cond_b
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    .line 33
    invoke-direct {p0, p1}, getNetworkType(Lcom/sec/ims/ImsRegistration;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->informImsRegStatusChangeToHandoverModule(I)V

    .line 44
    :goto_17
    return-void

    .line 36
    :cond_18
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_2a

    const/16 v0, 0x25e

    if-ne p2, v0, :cond_2a

    .line 38
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_BLOCKED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->informImsRegStatusChangeToHandoverModule(I)V

    goto :goto_17

    .line 41
    :cond_2a
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    goto :goto_17
.end method

.method protected onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .prologue
    .line 24
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    .line 25
    invoke-direct {p0, p1}, getNetworkType(Lcom/sec/ims/ImsRegistration;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->informImsRegStatusChangeToHandoverModule(I)V

    .line 27
    return-void
.end method
