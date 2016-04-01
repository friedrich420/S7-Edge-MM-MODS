.class public Lcom/sec/epdg/handover/EpdgImsListener60;
.super Lcom/sec/epdg/handover/EpdgImsListener;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;,
        Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;,
        Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnRegistered;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;,
        Lcom/sec/epdg/handover/EpdgImsListener60$ImsCallRunnable;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEstablish;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallStarted;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallModified;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallModifyRequested;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEnded;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnDedicatedBearerEvent;,
        Lcom/sec/epdg/handover/EpdgImsListener60$ImsManagerConnected;,
        Lcom/sec/epdg/handover/EpdgImsListener60$EpdgCallEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[EpdgImsListener]"

.field private static mContext:Landroid/content/Context;

.field private static mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

.field private static mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

.field private static mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

.field private static mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

.field private static final mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

.field private static mImsManager:Lcom/sec/ims/ImsManager;

.field private static final mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

.field private static mIpmeStatus:Z

.field private static mService:Lcom/sec/ims/volte2/IVolteService;

.field private static mSvcConn:Landroid/content/ServiceConnection;

.field private static mePdgHandler:Landroid/os/Handler;


# instance fields
.field private final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

    .line 49
    sput-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 50
    sput-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    .line 51
    sput-object v0, mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    .line 52
    sput-object v0, mImsManager:Lcom/sec/ims/ImsManager;

    .line 53
    sput-object v0, mSvcConn:Landroid/content/ServiceConnection;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, mIpmeStatus:Z

    .line 57
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60$1;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsListener60$1;-><init>()V

    sput-object v0, mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    .line 193
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60$3;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsListener60$3;-><init>()V

    sput-object v0, mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;-><init>()V

    .line 249
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/handover/EpdgImsListener60$4;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;)V

    iput-object v0, p0, mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 69
    sput-object p2, mePdgHandler:Landroid/os/Handler;

    .line 70
    sput-object p1, mContext:Landroid/content/Context;

    .line 72
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    sput-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 73
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;-><init>()V

    sput-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    .line 74
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsRegStatus;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;-><init>()V

    sput-object v0, mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    .line 75
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v0, :cond_2a

    .line 76
    invoke-direct {p0}, postImsReadyToEpdgService()V

    .line 78
    :cond_2a
    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 42
    invoke-static {p0}, setIpmeStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 42
    invoke-static {p0}, informIpmeStatusChangeToHandoverModule(Z)V

    return-void
.end method

.method static synthetic access$1000()Lcom/sec/epdg/handover/EpdgImsRegStatus;
    .registers 1

    .prologue
    .line 42
    sget-object v0, mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 42
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/sec/ims/volte2/IVolteService;
    .registers 1

    .prologue
    .line 42
    sget-object v0, mService:Lcom/sec/ims/volte2/IVolteService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;
    .registers 1
    .param p0, "x0"    # Lcom/sec/ims/volte2/IVolteService;

    .prologue
    .line 42
    sput-object p0, mService:Lcom/sec/ims/volte2/IVolteService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/epdg/handover/EpdgImsListener60;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener60;

    .prologue
    .line 42
    invoke-direct {p0}, resetCallList()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 42
    sget-object v0, mePdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Lcom/sec/epdg/handover/EpdgImsSettings;
    .registers 1

    .prologue
    .line 42
    sget-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/List;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-static {p0}, initImsSettings(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900()Lcom/sec/epdg/handover/EpdgImsCallStatus;
    .registers 1

    .prologue
    .line 42
    sget-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    return-object v0
.end method

.method public static getImsManager()Lcom/sec/ims/ImsManager;
    .registers 3

    .prologue
    .line 88
    sget-object v0, mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v0, :cond_14

    .line 89
    new-instance v0, Lcom/sec/ims/ImsManager;

    sget-object v1, mContext:Landroid/content/Context;

    sget-object v2, mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    sput-object v0, mImsManager:Lcom/sec/ims/ImsManager;

    .line 90
    sget-object v0, mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 92
    :cond_14
    sget-object v0, mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 81
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v0, p0, p1}, <init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

    .line 84
    :cond_b
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

    return-object v0
.end method

.method protected static informCallStatusChangeToHandoverModule()V
    .registers 3

    .prologue
    .line 411
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v0, :cond_10

    .line 412
    const/16 v0, 0x3e

    sget-object v1, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, postToEpdgService(ILjava/lang/Object;I)V

    .line 415
    :cond_10
    return-void
.end method

.method protected static informHandoverDelayToHandoverModule()V
    .registers 3

    .prologue
    .line 418
    sget v0, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    if-eqz v0, :cond_10

    .line 419
    const/16 v0, 0x3d

    sget-object v1, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, postToEpdgService(ILjava/lang/Object;I)V

    .line 422
    :cond_10
    return-void
.end method

.method protected static informImsRegStatusChangeToHandoverModule(I)V
    .registers 3
    .param p0, "networkType"    # I

    .prologue
    .line 425
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v0, :cond_f

    .line 426
    const/16 v0, 0x40

    sget-object v1, mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v1

    invoke-static {v0, v1, p0}, postToEpdgService(ILjava/lang/Object;I)V

    .line 430
    :cond_f
    return-void
.end method

.method private static informIpmeStatusChangeToHandoverModule(Z)V
    .registers 4
    .param p0, "isExist"    # Z

    .prologue
    .line 465
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_e

    .line 466
    const/16 v0, 0x4e

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, postToEpdgService(ILjava/lang/Object;I)V

    .line 468
    :cond_e
    return-void
.end method

.method private static initImsSettings(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->getInstance()Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->getImsSettings(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->initImsSettings(Ljava/util/HashMap;)V

    .line 154
    return-void
.end method

.method private postImsReadyToEpdgService()V
    .registers 3

    .prologue
    .line 612
    sget-object v1, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 613
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 614
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 615
    return-void
.end method

.method private static postToEpdgService(ILjava/lang/Object;I)V
    .registers 5
    .param p0, "event"    # I
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "arg1"    # I

    .prologue
    .line 472
    sget-object v1, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 474
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 476
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 477
    return-void
.end method

.method private registerCallStatusListener()V
    .registers 5

    .prologue
    .line 162
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "registerCallStatusListener()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.VolteService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$2;

    invoke-direct {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener60$2;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;)V

    sput-object v1, mSvcConn:Landroid/content/ServiceConnection;

    .line 190
    sget-object v1, mContext:Landroid/content/Context;

    sget-object v2, mSvcConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 191
    return-void
.end method

.method private registerIpmeListener()V
    .registers 3

    .prologue
    .line 433
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "registerIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    sget-object v1, mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 435
    return-void
.end method

.method private registerRegStatusListener()V
    .registers 3

    .prologue
    .line 246
    invoke-static {}, getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 247
    return-void
.end method

.method private registerSettingsChangeListener()V
    .registers 3

    .prologue
    .line 265
    sget-object v1, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->getFields()Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->getInstance()Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->registerForSettingChangeEvent(Ljava/util/List;)V

    .line 267
    return-void
.end method

.method private resetCallList()V
    .registers 3

    .prologue
    .line 157
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "resetCallList()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->resetCallList()V

    .line 159
    return-void
.end method

.method private static setIpmeStatus(Z)V
    .registers 4
    .param p0, "value"    # Z

    .prologue
    .line 447
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIpmeStatus: new call status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sput-boolean p0, mIpmeStatus:Z

    .line 449
    return-void
.end method

.method private unregisterIpmeListener()V
    .registers 3

    .prologue
    .line 438
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "unregisterIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {}, getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    sget-object v1, mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 440
    return-void
.end method


# virtual methods
.method public getCallCount()[I
    .registers 2

    .prologue
    .line 116
    sget-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    return-object v0
.end method

.method public getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 2

    .prologue
    .line 108
    sget-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method public getE911CallCount()I
    .registers 2

    .prologue
    .line 120
    sget-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getE911CallCount()I

    move-result v0

    return v0
.end method

.method public getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;
    .registers 2

    .prologue
    .line 112
    sget-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method public getIpmeStatus()Z
    .registers 2

    .prologue
    .line 443
    sget-boolean v0, mIpmeStatus:Z

    return v0
.end method

.method public getNonE911CallCount()I
    .registers 2

    .prologue
    .line 124
    sget-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getNonE911CallCount()I

    move-result v0

    return v0
.end method

.method public getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .registers 2

    .prologue
    .line 104
    sget-object v0, mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v0

    return-object v0
.end method

.method public getVoWifiSessionConnected()Z
    .registers 5

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 453
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

    .line 454
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

    .line 456
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

    .line 459
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

    .line 461
    return v0

    .line 456
    :cond_68
    const/4 v0, 0x0

    goto :goto_4e
.end method

.method public onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V
    .registers 4
    .param p1, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    .line 96
    sget-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    if-eqz v0, :cond_e

    .line 97
    sget-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-static {}, getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/handover/EpdgImsSettings;->onEpdgSettingChanged(Lcom/sec/ims/ImsManager;Lcom/sec/epdg/EpdgSettings;)V

    .line 101
    :goto_d
    return-void

    .line 99
    :cond_e
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onEpdgSettingChanged failed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public registerListener()V
    .registers 2

    .prologue
    .line 132
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v0, :cond_7

    .line 133
    invoke-direct {p0}, registerCallStatusListener()V

    .line 135
    :cond_7
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v0, :cond_e

    .line 136
    invoke-direct {p0}, registerRegStatusListener()V

    .line 138
    :cond_e
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v0, :cond_15

    .line 139
    invoke-direct {p0}, registerSettingsChangeListener()V

    .line 141
    :cond_15
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_1c

    .line 142
    invoke-direct {p0}, registerIpmeListener()V

    .line 144
    :cond_1c
    return-void
.end method

.method public setEcbmChanged(Z)V
    .registers 3
    .param p1, "ecbmModeOn"    # Z

    .prologue
    .line 128
    sget-object v0, mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->setEcbmChanged(Z)V

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 602
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 603
    .local v1, "status":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, getCallCount()[I

    move-result-object v0

    .line 604
    .local v0, "callCount":[I
    if-eqz v0, :cond_32

    .line 605
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

    .line 607
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

    .line 608
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unregisterListener()V
    .registers 2

    .prologue
    .line 147
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_7

    .line 148
    invoke-direct {p0}, unregisterIpmeListener()V

    .line 150
    :cond_7
    return-void
.end method
