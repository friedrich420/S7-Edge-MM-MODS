.class public Lcom/sec/epdg/EpdgTestRilAdapter;
.super Ljava/lang/Object;
.source "EpdgTestRilAdapter.java"

# interfaces
.implements Lcom/sec/epdg/EpdgRilInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;,
        Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;
    }
.end annotation


# static fields
.field private static final INCOMING_TAG:Ljava/lang/String; = "[RIL-EPDG]"

.field private static final OEM_DATA_IWLAN_INTF_CONF:B = 0x11t

.field private static final OEM_DATA_IWLAN_INTF_INIT:B = 0x10t

.field private static final OEM_FUNCTION_ID_DATA:B = 0xdt

.field private static final OUTGOING_TAG:Ljava/lang/String; = "[EPDG-RIL]"

.field private static final SRIL_PROTO_IPV4:I = 0x1

.field private static final SRIL_PROTO_IPV4V6:I = 0x3

.field private static final SRIL_PROTO_IPV6:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[TESTRILADAPTER]"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

.field private static mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;


# instance fields
.field private final mIpsecMessenger:Landroid/os/Messenger;

.field private final mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

.field private rilConnInitInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, mServiceMessenger:Landroid/os/Messenger;

    .line 162
    new-instance v1, Lcom/sec/epdg/EpdgTestRilAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgTestRilAdapter$1;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;)V

    iput-object v1, p0, mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 65
    sput-object p1, mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EPDGTestRilThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v1, Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;Landroid/os/Looper;)V

    sput-object v1, mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    .line 69
    new-instance v1, Landroid/os/Messenger;

    sget-object v2, mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, mIpsecMessenger:Landroid/os/Messenger;

    .line 70
    invoke-direct {p0}, connectToRilService()V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/sec/epdg/EpdgTestRilAdapter;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgTestRilAdapter;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 30
    iput-object p1, p0, mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/epdg/EpdgTestRilAdapter;)Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgTestRilAdapter;

    .prologue
    .line 30
    iget-object v0, p0, rilConnInitInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgTestRilAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    .prologue
    .line 30
    iput-object p1, p0, rilConnInitInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgTestRilAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    .prologue
    .line 30
    invoke-direct {p0, p1}, configureInterfaceInit(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V

    return-void
.end method

.method private configureInterface(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    .prologue
    .line 147
    const-string v1, "[TESTRILADAPTER]"

    const-string v2, "configureInterface is called"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getInterfaceConfigureCommand()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 151
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 153
    return-void
.end method

.method private configureInterfaceInit(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    .prologue
    .line 138
    const-string v1, "[TESTRILADAPTER]"

    const-string v2, "configureInterfaceInit is called"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->getInterfaceInitCommand()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 141
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 143
    return-void
.end method

.method private connectToRilService()V
    .registers 5

    .prologue
    .line 156
    const-string v1, "[TESTRILADAPTER]"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    sget-object v1, mContext:Landroid/content/Context;

    iget-object v2, p0, mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 160
    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 133
    sget-object v0, mHandler:Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgTestRilAdapter;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v0, mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;

    if-nez v0, :cond_15

    .line 75
    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "Creating EpdgTestRilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/sec/epdg/EpdgTestRilAdapter;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;

    .line 77
    sget-object v0, mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;

    .line 80
    :goto_14
    return-object v0

    .line 79
    :cond_15
    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "EpdgTestRilAdapter already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, mInstance:Lcom/sec/epdg/EpdgTestRilAdapter;

    goto :goto_14
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 8
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 91
    .local v1, "req":Landroid/os/Bundle;
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 93
    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 94
    iget-object v2, p0, mIpsecMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 97
    :try_start_11
    iget-object v2, p0, mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1b

    .line 98
    iget-object v2, p0, mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 105
    :goto_1a
    return-void

    .line 100
    :cond_1b
    const-string v2, "[TESTRILADAPTER]"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_23} :catch_24

    goto :goto_1a

    .line 101
    :catch_24
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[TESTRILADAPTER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invokeOemRilRequestRaw: RemoteException occured !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a
.end method

.method private makeToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, mContext:Landroid/content/Context;

    const/16 v1, 0x1388

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    return-void
.end method


# virtual methods
.method public triggerHandover(IZ)V
    .registers 3
    .param p1, "cid"    # I
    .param p2, "handoverToWifi"    # Z

    .prologue
    .line 435
    return-void
.end method

.method public updateApnConnStatus(IZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;ZZZ)V
    .registers 11
    .param p1, "cid"    # I
    .param p2, "isConnSuccessful"    # Z
    .param p3, "prop"    # Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .param p4, "isHandover"    # Z
    .param p5, "isAttachPdn"    # Z
    .param p6, "isPermanentFail"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 439
    const-string v0, "[EPDG-RIL]"

    const-string/jumbo v1, "updateApnConnStatus"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz p2, :cond_70

    .line 444
    new-instance v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-direct {v0, p0, v3}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$1;)V

    iput-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    .line 445
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIpv4addr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setLocalIP(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIpv6addr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setLocalIPv6(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne v0, v1, :cond_4b

    .line 449
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setGatewayIP(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setIpType(I)V

    .line 458
    :cond_39
    :goto_39
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    # setter for: Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I
    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->access$402(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;I)I

    .line 459
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setConnectionId(I)V

    .line 460
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-direct {p0, v0}, configureInterface(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V

    .line 469
    :goto_4a
    return-void

    .line 451
    :cond_4b
    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne v0, v1, :cond_5a

    .line 452
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setIpType(I)V

    goto :goto_39

    .line 453
    :cond_5a
    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne v0, v1, :cond_39

    .line 454
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setGatewayIP(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setIpType(I)V

    goto :goto_39

    .line 463
    :cond_70
    new-instance v0, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-direct {v0, p0, v3}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$1;)V

    iput-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    .line 464
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->intfstatus:I
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->access$402(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;I)I

    .line 465
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;->setConnectionId(I)V

    .line 466
    iget-object v0, p0, rilConnInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    invoke-direct {p0, v0}, configureInterface(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V

    goto :goto_4a
.end method

.method public updateEpdgAvailability(Z)V
    .registers 2
    .param p1, "isAvailable"    # Z

    .prologue
    .line 473
    return-void
.end method

.method public updateEpdgHoThreshold(ZIIIIII)V
    .registers 8
    .param p1, "isAvailable"    # Z
    .param p2, "threhold4gRoveIn"    # I
    .param p3, "threhold4gRoveOut"    # I
    .param p4, "threhold3gRoveIn"    # I
    .param p5, "threhold3gRoveOut"    # I
    .param p6, "threhold2gRoveIn"    # I
    .param p7, "threhold2gRoveOut"    # I

    .prologue
    .line 478
    return-void
.end method
