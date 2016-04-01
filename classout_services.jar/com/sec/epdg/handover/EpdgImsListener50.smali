.class public Lcom/sec/epdg/handover/EpdgImsListener50;
.super Lcom/sec/epdg/handover/EpdgImsListener;
.source "EpdgImsListener50.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;,
        Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;,
        Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;
    }
.end annotation


# static fields
.field private static final DOWNGRADED_VIDEO_CALL_COUNT:I = 0x2

.field private static final E911_CALL_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[EpdgImsListener]"

.field private static final TOTAL_CALL_COUNT:I = 0x0

.field private static final VIDEO_CALL_COUNT:I = 0x1

.field private static final VIDEO_DEDICATED_BEARER:I = 0x2

.field private static final VOICE_DEDICATED_BEARER:I = 0x1

.field private static mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;


# instance fields
.field private mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field private mContext:Landroid/content/Context;

.field private mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

.field private mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

.field private mHandoverDelayedSessionId:I

.field private final mImsCallListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

.field private mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mImsIfForSettingState:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field final mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private final mImsRegListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

.field private mImsRegNetType:I

.field private mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

.field private final mImsSettingListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

.field private mIpmeStatus:Z

.field private mIsDowngradedVideoCall:Z

.field private mIsHandoverDelayedCase:Z

.field private mVideoDedicatedBearerState:Z

.field private mVoiceDedicatedBearerState:Z

.field private final mePdgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;-><init>()V

    .line 43
    iput-object v2, p0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 49
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsListener50$1;)V

    iput-object v0, p0, mImsRegListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

    .line 50
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsListener50$1;)V

    iput-object v0, p0, mImsCallListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

    .line 51
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

    invoke-direct {v0, p0}, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    iput-object v0, p0, mImsSettingListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

    .line 53
    iput-boolean v1, p0, mIsHandoverDelayedCase:Z

    .line 54
    iput v1, p0, mHandoverDelayedSessionId:I

    .line 55
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    iput-object v0, p0, mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 56
    iput-object v2, p0, mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 57
    iput-boolean v1, p0, mVoiceDedicatedBearerState:Z

    .line 58
    iput-boolean v1, p0, mVideoDedicatedBearerState:Z

    .line 59
    iput-boolean v1, p0, mIsDowngradedVideoCall:Z

    .line 60
    iput v1, p0, mImsRegNetType:I

    .line 70
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v0, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 71
    iput-boolean v1, p0, mIpmeStatus:Z

    .line 73
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/handover/EpdgImsListener50$1;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    iput-object v0, p0, mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    .line 84
    iput-object p2, p0, mePdgHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mCallList:Ljava/util/Map;

    .line 88
    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v0, p0, mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 90
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 92
    invoke-static {p1}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v0

    iput-object v0, p0, mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 93
    invoke-direct {p0}, initializeEpdgImsSettings()V

    .line 94
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v0, :cond_67

    .line 95
    invoke-direct {p0}, postImsReadyToEpdgService()V

    .line 98
    :cond_67
    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/epdg/handover/EpdgImsListener50$2;

    invoke-direct {v2, p0}, Lcom/sec/epdg/handover/EpdgImsListener50$2;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, mImsManager:Lcom/sec/ims/ImsManager;

    .line 111
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/handover/EpdgImsListener50;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, setHandoverDelayedSessionId(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .prologue
    .line 36
    invoke-direct {p0, p1}, setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 36
    invoke-direct {p0}, getCallCount()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 4
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # [I
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/epdg/handover/EpdgImsListener50;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 36
    invoke-direct {p0}, getIsHandoverDelayedCase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 36
    invoke-direct {p0}, isCallTypeAndDedicatedBearerTypeMatching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 36
    invoke-direct {p0}, informCallStatusChangeToHandoverModule()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 36
    invoke-direct {p0}, informHandoverDelayToHandoverModule()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/epdg/handover/EpdgImsListener50;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, checkForHandoverDelayedCase(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, setVoiceDedicatedBearerState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, setIpmeStatus(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, setVideoDedicatedBearerState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, informIpmeStatusChangeToHandoverModule(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/handover/EpdgImsListener50;)Lcom/sec/ims/ImsManager;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 36
    iget-object v0, p0, mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .prologue
    .line 36
    invoke-direct {p0, p1}, setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/epdg/handover/EpdgImsListener50;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, informImsRegStatusChangeToHandoverModule(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/epdg/handover/EpdgImsListener50;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, setImsRegNetType(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/handover/EpdgImsListener50;)Lcom/sec/epdg/handover/EpdgImsSettings;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 36
    iget-object v0, p0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, setIsHandoverDelayedCase(Z)V

    return-void
.end method

.method private checkForHandoverDelayedCase(I)V
    .registers 6
    .param p1, "sessionID"    # I

    .prologue
    const/4 v3, 0x0

    .line 659
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForHandoverDelayedCase: sessionID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_34

    invoke-direct {p0}, getHandoverDelayedSessionId()I

    move-result v0

    if-ne p1, v0, :cond_34

    .line 662
    const-string v0, "[EpdgImsListener]"

    const-string v1, "checkForHandoverDelayedCase: 2nd call itself is ended, clear handover delayed flag and session id"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, v3}, setIsHandoverDelayedCase(Z)V

    .line 665
    invoke-direct {p0, v3}, setHandoverDelayedSessionId(I)V

    .line 667
    :cond_34
    return-void
.end method

.method private getCallCount()[I
    .registers 7

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "callCount":[I
    iget-object v3, p0, mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-nez v3, :cond_f

    .line 509
    const-string v3, "[EpdgImsListener]"

    const-string/jumbo v4, "getCallCount, ims listener for call is not yet registered"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 518
    .end local v0    # "callCount":[I
    .local v1, "callCount":[I
    :goto_e
    return-object v1

    .line 513
    .end local v1    # "callCount":[I
    .restart local v0    # "callCount":[I
    :cond_f
    :try_start_f
    iget-object v3, p0, mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    invoke-interface {v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->getCallCount()[I
    :try_end_14
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_f .. :try_end_14} :catch_30

    move-result-object v0

    .line 517
    :goto_15
    const-string v3, "[EpdgImsListener]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallCount: returning call count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 518
    .end local v0    # "callCount":[I
    .restart local v1    # "callCount":[I
    goto :goto_e

    .line 514
    .end local v1    # "callCount":[I
    .restart local v0    # "callCount":[I
    :catch_30
    move-exception v2

    .line 515
    .local v2, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    const-string v3, "[EpdgImsListener]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getCallCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 10
    .param p1, "callCount"    # [I
    .param p2, "force"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 723
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v1, :cond_1b

    if-nez p2, :cond_1b

    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_1b

    .line 726
    const-string v1, "[EpdgImsListener]"

    const-string v2, "Call state should remain in CALL_E911 for E911 call or ECBM"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 771
    :goto_1a
    return-object v0

    .line 729
    :cond_1b
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 730
    .local v0, "returnCallStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iput-boolean v4, p0, mIsDowngradedVideoCall:Z

    .line 740
    if-eqz p1, :cond_25

    aget v1, p1, v4

    if-nez v1, :cond_47

    .line 741
    :cond_25
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "getFinalCallStatusFromCallCountList: there is no call"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :goto_2d
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFinalCallStatusFromCallCountList: returning call status as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 743
    :cond_47
    const/4 v1, 0x3

    aget v1, p1, v1

    if-lt v1, v5, :cond_57

    .line 744
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "getFinalCallStatusFromCallCountList: Atleast one call is E911"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_2d

    .line 746
    :cond_57
    aget v1, p1, v4

    aget v2, p1, v5

    if-ne v1, v2, :cond_68

    .line 747
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "getFinalCallStatusFromCallCountList: All calls are video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_2d

    .line 749
    :cond_68
    aget v1, p1, v4

    aget v2, p1, v6

    if-ne v1, v2, :cond_7b

    .line 750
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "getFinalCallStatusFromCallCountList: All calls are downgraded video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iput-boolean v5, p0, mIsDowngradedVideoCall:Z

    .line 752
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_2d

    .line 753
    :cond_7b
    aget v1, p1, v4

    aget v2, p1, v5

    aget v3, p1, v6

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_91

    .line 754
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "getFinalCallStatusFromCallCountList: All calls are video or downgraded video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iput-boolean v5, p0, mIsDowngradedVideoCall:Z

    .line 756
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_2d

    .line 757
    :cond_91
    aget v1, p1, v4

    aget v2, p1, v4

    aget v3, p1, v5

    sub-int/2addr v2, v3

    aget v3, p1, v6

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_a8

    .line 758
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "getFinalCallStatusFromCallCountList: All calls are voice calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_2d

    .line 760
    :cond_a8
    aget v1, p1, v4

    aget v2, p1, v4

    aget v3, p1, v5

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_bf

    .line 761
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "getFinalCallStatusFromCallCountList: All calls are downgraded video or voice calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iput-boolean v5, p0, mIsDowngradedVideoCall:Z

    .line 763
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_2d

    .line 765
    :cond_bf
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "getFinalCallStatusFromCallCountList: Mixed call case"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_2d
.end method

.method private getHandoverDelayedSessionId()I
    .registers 4

    .prologue
    .line 718
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHandoverDelayedSessionId: value returned is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mHandoverDelayedSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget v0, p0, mHandoverDelayedSessionId:I

    return v0
.end method

.method private getImsRegNetType()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, mImsRegNetType:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 114
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;

    if-nez v0, :cond_b

    .line 115
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-direct {v0, p0, p1}, <init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;

    .line 117
    :cond_b
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;

    return-object v0
.end method

.method private getIsHandoverDelayedCase()Z
    .registers 4

    .prologue
    .line 708
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsHandoverDelayedCase: value returned is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsHandoverDelayedCase:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-boolean v0, p0, mIsHandoverDelayedCase:Z

    return v0
.end method

.method private getVideoDedicatedBearerState()Z
    .registers 2

    .prologue
    .line 593
    iget-boolean v0, p0, mVideoDedicatedBearerState:Z

    return v0
.end method

.method private getVoiceDedicatedBearerState()Z
    .registers 2

    .prologue
    .line 584
    iget-boolean v0, p0, mVoiceDedicatedBearerState:Z

    return v0
.end method

.method private informCallStatusChangeToHandoverModule()V
    .registers 4

    .prologue
    .line 670
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v0, :cond_e

    .line 671
    const/16 v0, 0x3e

    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, postToEpdgService(ILjava/lang/Object;I)V

    .line 673
    :cond_e
    return-void
.end method

.method private informHandoverDelayToHandoverModule()V
    .registers 4

    .prologue
    .line 682
    sget v0, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    if-eqz v0, :cond_e

    .line 683
    const/16 v0, 0x3d

    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, postToEpdgService(ILjava/lang/Object;I)V

    .line 685
    :cond_e
    return-void
.end method

.method private informImsRegStatusChangeToHandoverModule(I)V
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 688
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v0, :cond_d

    .line 689
    const/16 v0, 0x40

    invoke-virtual {p0}, getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, postToEpdgService(ILjava/lang/Object;I)V

    .line 692
    :cond_d
    return-void
.end method

.method private informIpmeStatusChangeToHandoverModule(Z)V
    .registers 5
    .param p1, "isExist"    # Z

    .prologue
    .line 676
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_e

    .line 677
    const/16 v0, 0x4e

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, postToEpdgService(ILjava/lang/Object;I)V

    .line 679
    :cond_e
    return-void
.end method

.method private initializeEpdgImsSettings()V
    .registers 5

    .prologue
    .line 786
    const/4 v1, 0x0

    .line 787
    .local v1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_12

    .line 788
    const/16 v2, 0xe

    new-array v0, v2, [I

    fill-array-data v0, :array_1e

    .line 802
    .local v0, "reqFields":[I
    iget-object v2, p0, mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v2, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v1

    .line 804
    .end local v0    # "reqFields":[I
    :cond_12
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v2

    iput-object v2, p0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 805
    return-void

    .line 788
    nop

    :array_1e
    .array-data 4
        0x60
        0x61
        0x5d
        0x5e
        0x84
        0x8d
        0x8b
        0x8c
        0x88
        0x85
        0x86
        0x87
        0x89
        0x8a
    .end array-data
.end method

.method private isCallTypeAndDedicatedBearerTypeMatching()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 602
    invoke-direct {p0}, getImsRegNetType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_11

    .line 603
    const-string v1, "[EpdgImsListener]"

    const-string v2, "Ims is not registered on LTE, so dedicated bearer check is not required, return true"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_10
    :goto_10
    return v0

    .line 606
    :cond_11
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Voice dedicated Bearer State is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getVoiceDedicatedBearerState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Video dedicated bearer state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getVideoDedicatedBearerState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsDowngradedVideoCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsDowngradedVideoCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_63

    invoke-direct {p0}, getVoiceDedicatedBearerState()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_63
    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_73

    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_7f

    :cond_73
    invoke-direct {p0}, getVoiceDedicatedBearerState()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-direct {p0}, getVideoDedicatedBearerState()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_7f
    iget-boolean v1, p0, mIsDowngradedVideoCall:Z

    if-eqz v1, :cond_89

    invoke-direct {p0}, getVoiceDedicatedBearerState()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_89
    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_10
.end method

.method private postImsReadyToEpdgService()V
    .registers 3

    .prologue
    .line 820
    iget-object v1, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 821
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 822
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 823
    return-void
.end method

.method private postToEpdgService(ILjava/lang/Object;I)V
    .registers 6
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    .line 695
    iget-object v1, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 696
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 697
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 699
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 700
    return-void
.end method

.method private registerCallListener()V
    .registers 4

    .prologue
    .line 141
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "registerCallListener()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-nez v1, :cond_15

    .line 144
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "mImsIfForCall is not initialized, returning...."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_14
    :goto_14
    return-void

    .line 149
    :cond_15
    :try_start_15
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v1, :cond_14

    .line 150
    iget-object v1, p0, mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v2, p0, mImsCallListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_20
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_14

    .line 152
    :catch_21
    move-exception v0

    .line 153
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_14
.end method

.method private registerGeneralListener()V
    .registers 5

    .prologue
    .line 175
    const-string v2, "[EpdgImsListener]"

    const-string/jumbo v3, "registerGeneralListener()"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v2, :cond_15

    .line 178
    const-string v2, "[EpdgImsListener]"

    const-string/jumbo v3, "mImsIfForGeneral is not initialized, returning...."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_14
    :goto_14
    return-void

    .line 182
    :cond_15
    :try_start_15
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v2, :cond_20

    .line 183
    iget-object v2, p0, mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v3, p0, mImsRegListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 185
    :cond_20
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_14

    .line 186
    const/16 v2, 0xe

    new-array v1, v2, [I

    fill-array-data v1, :array_38

    .line 201
    .local v1, "reqFields":[I
    iget-object v2, p0, mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v3, p0, mImsSettingListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

    invoke-interface {v2, v3, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForSettingStateListener(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;[I)V
    :try_end_32
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_15 .. :try_end_32} :catch_33

    goto :goto_14

    .line 203
    .end local v1    # "reqFields":[I
    :catch_33
    move-exception v0

    .line 204
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_14

    .line 186
    :array_38
    .array-data 4
        0x60
        0x61
        0x5d
        0x5e
        0x84
        0x8d
        0x8b
        0x8c
        0x88
        0x85
        0x86
        0x87
        0x89
        0x8a
    .end array-data
.end method

.method private registerIpmeListener()V
    .registers 3

    .prologue
    .line 209
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "registerIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v0, :cond_15

    .line 212
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "mImsManager is not initialized, returning...."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_14
    return-void

    .line 216
    :cond_15
    iget-object v0, p0, mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    goto :goto_14
.end method

.method private setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    .registers 5
    .param p1, "value"    # Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .prologue
    .line 557
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallStatus: new call status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iput-object p1, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 559
    return-void
.end method

.method private setHandoverDelayedSessionId(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 713
    iput p1, p0, mHandoverDelayedSessionId:I

    .line 714
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandoverDelayedSessionId: new value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private setImsRegNetType(I)V
    .registers 2
    .param p1, "imsRegNetType"    # I

    .prologue
    .line 621
    iput p1, p0, mImsRegNetType:I

    .line 622
    return-void
.end method

.method private setIpmeStatus(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 566
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIpmeStatus: new call status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iput-boolean p1, p0, mIpmeStatus:Z

    .line 568
    return-void
.end method

.method private setIsHandoverDelayedCase(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 703
    iput-boolean p1, p0, mIsHandoverDelayedCase:Z

    .line 704
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsHandoverDelayedCase: new value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method private setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    .registers 5
    .param p1, "value"    # Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .prologue
    .line 632
    const-string v0, "[EpdgImsListener]"

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

    .line 633
    iput-object p1, p0, mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 634
    return-void
.end method

.method private setVideoDedicatedBearerState(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 597
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsDedicatedBearerState: new video dedicated bearer state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iput-boolean p1, p0, mVideoDedicatedBearerState:Z

    .line 599
    return-void
.end method

.method private setVoiceDedicatedBearerState(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 588
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsDedicatedBearerState: new voice dedicated bearer state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iput-boolean p1, p0, mVoiceDedicatedBearerState:Z

    .line 590
    return-void
.end method

.method private unregisterCallListener()V
    .registers 4

    .prologue
    .line 161
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "unregisterCallListener()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :try_start_8
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v1, :cond_13

    .line 164
    iget-object v1, p0, mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v2, p0, mImsCallListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->deRegisterForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_13
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_8 .. :try_end_13} :catch_14

    .line 169
    :cond_13
    :goto_13
    return-void

    .line 166
    :catch_14
    move-exception v0

    .line 167
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_13
.end method

.method private unregisterGeneralListener()V
    .registers 4

    .prologue
    .line 228
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "unregisterGeneralListener()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :try_start_8
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v1, :cond_13

    .line 231
    iget-object v1, p0, mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, mImsRegListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 233
    :cond_13
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v1, :cond_1e

    .line 234
    iget-object v1, p0, mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, mImsSettingListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForSettingStateListener(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_1e
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_8 .. :try_end_1e} :catch_1f

    .line 239
    :cond_1e
    :goto_1e
    return-void

    .line 236
    :catch_1f
    move-exception v0

    .line 237
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_1e
.end method

.method private unregisterIpmeListener()V
    .registers 3

    .prologue
    .line 220
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "unregisterIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 222
    return-void
.end method


# virtual methods
.method public getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 2

    .prologue
    .line 550
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-nez v0, :cond_7

    .line 551
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 553
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_6
.end method

.method public getE911CallCount()I
    .registers 7

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "callCount":[I
    const/4 v1, 0x0

    .line 525
    .local v1, "e911CallCount":I
    invoke-direct {p0}, getCallCount()[I

    move-result-object v0

    .line 526
    if-nez v0, :cond_12

    .line 527
    const-string v3, "[EpdgImsListener]"

    const-string/jumbo v4, "getE911CallCount: call count is null"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 532
    .end local v1    # "e911CallCount":I
    .local v2, "e911CallCount":I
    :goto_11
    return v2

    .line 530
    .end local v2    # "e911CallCount":I
    .restart local v1    # "e911CallCount":I
    :cond_12
    const/4 v3, 0x3

    aget v1, v0, v3

    .line 531
    const-string v3, "[EpdgImsListener]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getE911CallCount: returning E911 call count as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 532
    .end local v1    # "e911CallCount":I
    .restart local v2    # "e911CallCount":I
    goto :goto_11
.end method

.method public getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method public getIpmeStatus()Z
    .registers 2

    .prologue
    .line 562
    iget-boolean v0, p0, mIpmeStatus:Z

    return v0
.end method

.method public getNonE911CallCount()I
    .registers 7

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "callCount":[I
    const/4 v1, 0x0

    .line 539
    .local v1, "otherCallCount":I
    invoke-direct {p0}, getCallCount()[I

    move-result-object v0

    .line 540
    if-nez v0, :cond_12

    .line 541
    const-string v3, "[EpdgImsListener]"

    const-string/jumbo v4, "getNonE911CallCount: call count is null"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 546
    .end local v1    # "otherCallCount":I
    .local v2, "otherCallCount":I
    :goto_11
    return v2

    .line 544
    .end local v2    # "otherCallCount":I
    .restart local v1    # "otherCallCount":I
    :cond_12
    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    sub-int v1, v3, v4

    .line 545
    const-string v3, "[EpdgImsListener]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNonE911CallCount: returning non E911 call count as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 546
    .end local v1    # "otherCallCount":I
    .restart local v2    # "otherCallCount":I
    goto :goto_11
.end method

.method public getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .registers 2

    .prologue
    .line 625
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-nez v0, :cond_7

    .line 626
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 628
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    goto :goto_6
.end method

.method public getVoWifiSessionConnected()Z
    .registers 5

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "result":Z
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoWifiSessionConnected: CALL status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoWifiSessionConnected: IPME status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, getIpmeStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    if-eqz v1, :cond_68

    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_4d

    invoke-virtual {p0}, getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_68

    :cond_4d
    const/4 v0, 0x1

    .line 578
    :goto_4e
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoWifiSessionConnected: VOLTE Session is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return v0

    .line 575
    :cond_68
    const/4 v0, 0x0

    goto :goto_4e
.end method

.method public onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V
    .registers 4
    .param p1, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    .line 808
    iget-object v0, p0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    if-eqz v0, :cond_c

    .line 809
    iget-object v0, p0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    iget-object v1, p0, mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/handover/EpdgImsSettings;->onEpdgSettingChanged(Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;Lcom/sec/epdg/EpdgSettings;)V

    .line 813
    :goto_b
    return-void

    .line 811
    :cond_c
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onEpdgSettingChanged failed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public registerListener()V
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, registerGeneralListener()V

    .line 124
    invoke-direct {p0}, registerCallListener()V

    .line 125
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, registerIpmeListener()V

    .line 126
    :cond_d
    return-void
.end method

.method public setEcbmChanged(Z)V
    .registers 7
    .param p1, "modeStart"    # Z

    .prologue
    .line 637
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-nez v2, :cond_5

    .line 656
    :cond_4
    :goto_4
    return-void

    .line 640
    :cond_5
    const-string v2, "[EpdgImsListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEcbmChanged :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 642
    .local v1, "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    if-eqz p1, :cond_2f

    .line 643
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 652
    :cond_24
    :goto_24
    invoke-direct {p0, v1}, setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 653
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_4

    .line 654
    invoke-direct {p0}, informCallStatusChangeToHandoverModule()V

    goto :goto_4

    .line 646
    :cond_2f
    const/4 v0, 0x0

    .line 647
    .local v0, "callCount":[I
    invoke-direct {p0}, getCallCount()[I

    move-result-object v0

    .line 648
    if-eqz v0, :cond_24

    .line 649
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    goto :goto_24
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 776
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 777
    .local v1, "status":Ljava/lang/StringBuffer;
    invoke-direct {p0}, getCallCount()[I

    move-result-object v0

    .line 778
    .local v0, "callCount":[I
    if-eqz v0, :cond_32

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Count is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Call status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims Reg State is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unregisterListener()V
    .registers 2

    .prologue
    .line 132
    invoke-direct {p0}, unregisterGeneralListener()V

    .line 133
    invoke-direct {p0}, unregisterCallListener()V

    .line 134
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, unregisterIpmeListener()V

    .line 135
    :cond_d
    return-void
.end method
