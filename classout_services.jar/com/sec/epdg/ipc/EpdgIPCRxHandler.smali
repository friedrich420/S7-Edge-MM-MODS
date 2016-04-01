.class public Lcom/sec/epdg/ipc/EpdgIPCRxHandler;
.super Ljava/lang/Object;
.source "EpdgIPCRxHandler.java"

# interfaces
.implements Lcom/sec/epdg/ipc/RilToEpdgInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "[RILRECEIVER]"


# instance fields
.field private final mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedData:Lcom/sec/epdg/EpdgRilSharedData;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "[RILRECEIVER]"

    const-string v1, "Initiating EpdgRxHandler"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    iput-object v0, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    .line 42
    const-string v0, "[RILRECEIVER]"

    const-string v1, "Exiting EpdgRxHandler initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private getEpdgContextInfo()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v2, "mpdpCtxInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v3, :cond_b5

    .line 210
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getNewEpdgContextInfo()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v0

    .line 212
    .local v0, "ctxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    if-eqz v0, :cond_96

    .line 213
    invoke-virtual {v0, v1}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setCid(I)V

    .line 214
    invoke-virtual {v0, v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setDataCallRsn(I)V

    .line 215
    invoke-virtual {v0, v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setDataCallType(I)V

    .line 216
    const/4 v3, 0x4

    iget-object v4, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v4

    if-ne v3, v4, :cond_61

    .line 217
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    .line 218
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- connected-- (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_5b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 223
    :cond_61
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    .line 224
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- not connected-- (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 231
    :cond_96
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_CMD_GET] -- RESPONSE -- none[dropped] -- (No Context info for cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 235
    .end local v0    # "ctxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    :cond_b5
    return-object v2
.end method

.method private static getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;
    .registers 3
    .param p0, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 292
    const-string v0, "Suppressed"

    .line 294
    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private handleHandOverStatus(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V
    .registers 6
    .param p1, "netIpcMsg"    # Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .prologue
    .line 46
    const-string v1, "[RILRECEIVER]"

    const-string v2, "RX [NET_DATA_HANDOVER] -- RESPONSE -- true(always)"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->decodeHandoverResult()Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;

    move-result-object v0

    .line 49
    .local v0, "handoverResult":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    if-nez v0, :cond_e

    .line 54
    :goto_d
    return-void

    .line 50
    :cond_e
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 51
    new-instance v1, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->getPdnType()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->getAct()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;-><init>(II)V

    invoke-static {v1}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnHandoverResult(Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;)V

    goto :goto_d
.end method

.method private handleIILSsacEvent(Lcom/sec/epdg/ipc/EpdgIilIpcMessage;)V
    .registers 8
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;->decodeIilSsacInfo()Lcom/sec/epdg/ipc/EpdgIilSsacInfo;

    move-result-object v0

    .line 190
    .local v0, "ssacInfo":Lcom/sec/epdg/ipc/EpdgIilSsacInfo;
    if-nez v0, :cond_e

    .line 191
    const-string v2, "[RILRECEIVER]"

    const-string v3, "Incorrect EpdgIilIpcMessage IPC Message"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_d
    return-void

    .line 193
    :cond_e
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSAC info received. Voice Factor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVoiceFactor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Voice Time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVoiceTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Video Factor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVideoFactor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Video Time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVideoTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVoiceFactor()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVoiceTime()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVideoFactor()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->getVideoTime()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;-><init>(IIII)V

    .line 202
    .local v1, "ssacUpdate":Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
    invoke-static {v1}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvIilSsacUpdate(Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;)V

    goto :goto_d
.end method

.method private handleIPSecConnectionInitRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V
    .registers 10
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .prologue
    const/4 v7, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->decodeDefinePdpContext()Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    move-result-object v2

    .line 70
    .local v2, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    if-nez v2, :cond_8

    .line 119
    :goto_7
    return-void

    .line 71
    :cond_8
    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getCid()I

    move-result v1

    .line 72
    .local v1, "cid":I
    if-lez v1, :cond_113

    .line 73
    iget-object v3, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v0

    .line 74
    .local v0, "apnState":I
    if-eqz v0, :cond_28

    const/4 v3, 0x2

    if-eq v3, v0, :cond_28

    const/4 v3, 0x3

    if-ne v3, v0, :cond_de

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 78
    :cond_28
    iget-object v3, p0, mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 79
    const-string v3, "[RILRECEIVER]"

    const-string v4, "Define pdp context gets called again without gprs pdp context"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- falseDuplicate define pdp context for Cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v7, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 91
    iget-object v3, p0, mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 94
    :cond_66
    iget-object v3, p0, mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v3, 0x1

    invoke-static {v3, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 96
    const-string v4, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- true -- Received Values: Cid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getCid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "APNName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "v4: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_d4

    const-string v3, "Suppressed"

    :goto_a5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "v6: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_d9

    const-string v3, "Suppressed"

    :goto_b8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "pcscfreq: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_d4
    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v3

    goto :goto_a5

    :cond_d9
    invoke-virtual {v2}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v3

    goto :goto_b8

    .line 108
    :cond_de
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid IWlan state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") (cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "apnState":I
    :goto_10e
    invoke-static {v7, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_7

    .line 115
    :cond_113
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RX [IPC_GPRS_DEFINE_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid Cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10e
.end method

.method private handleIPSecConnectionToggleRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V
    .registers 11
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 122
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->decodePdpContext()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v7

    .line 123
    .local v7, "pdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    if-nez v7, :cond_a

    .line 186
    :cond_9
    :goto_9
    return-void

    .line 124
    :cond_a
    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getCid()I

    move-result v1

    .line 125
    .local v1, "cid":I
    if-lez v1, :cond_9

    .line 126
    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-eq v2, v8, :cond_23

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-ne v2, v4, :cond_e2

    .line 129
    :cond_23
    iget-object v2, p0, mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    .line 131
    .local v6, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    if-nez v6, :cond_53

    .line 132
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- false-- (previously missing [IPC_GPRS_DEFINE_PDP_CONTEXT]) (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto :goto_9

    .line 138
    :cond_53
    iget-object v2, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    if-ne v2, v4, :cond_9e

    .line 139
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for connect -- RESPONSE -- false-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach received for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Connected state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_9

    .line 146
    :cond_9e
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for connect -- RESPONSE -- true-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v8, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 150
    new-instance v0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv4Addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getIpv6Addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->getPcscfReq()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    .local v0, "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    iget-object v2, p0, mEpdgReqInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {v0}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnAttachRequest(Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;)V

    goto/16 :goto_9

    .line 161
    .end local v0    # "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    .end local v6    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    :cond_e2
    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v2

    if-nez v2, :cond_175

    .line 162
    iget-object v2, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_109

    iget-object v2, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_109

    iget-object v2, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgRilSharedData;->getIWlanApnState(I)I

    move-result v2

    if-nez v2, :cond_14a

    .line 165
    :cond_109
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for disconnect -- RESPONSE -- false-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detach received for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Disconnected/Disconnecting/Idle state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_9

    .line 171
    :cond_14a
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] for disconnect -- RESPONSE -- true-- (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v8, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 175
    new-instance v2, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v2, v1}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvApnDetachRequest(Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;)V

    goto/16 :goto_9

    .line 179
    :cond_175
    const-string v2, "[RILRECEIVER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RX [IPC_GPRS_PDP_CONTEXT] -- RESPONSE -- false-- (Invalid State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") (cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {v5, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    goto/16 :goto_9
.end method

.method private handleNetRegQuery(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V
    .registers 7
    .param p1, "netIpcMsg"    # Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .prologue
    const/4 v4, 0x2

    .line 57
    iget-object v1, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    .line 58
    .local v0, "epdgAvailable":I
    const-string v2, "[RILRECEIVER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RX [NET_REGIST] -- RESPONSE -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, v4, :cond_32

    const-string v1, "EPDG AVAILABLE"

    :goto_18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/16 v1, 0x30

    iget-object v2, p0, mSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetRegist(III)Z

    .line 64
    invoke-static {v0}, Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;->onRecvEpdgStatusQuery(I)V

    .line 65
    return-void

    .line 58
    :cond_32
    const-string v1, "EPDG NOT AVAILABLE"

    goto :goto_18
.end method

.method private processIpcMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;)V
    .registers 9
    .param p1, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .prologue
    const/4 v6, 0x5

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "header":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-static {p1}, getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "param":Ljava/lang/String;
    :goto_30
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Rx]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Rx]: Param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v3

    sparse-switch v3, :sswitch_data_112

    .line 284
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRITICAL : Unknown IPC Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_83
    :goto_83
    return-void

    .line 242
    .end local v2    # "param":Ljava/lang/String;
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_84
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    .line 249
    .restart local v2    # "param":Ljava/lang/String;
    :sswitch_8d
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_9e

    .line 250
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    check-cast p1, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, handleHandOverStatus(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V

    goto :goto_83

    .line 252
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_9e
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    if-ne v3, v6, :cond_83

    .line 253
    check-cast p1, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, handleNetRegQuery(Lcom/sec/epdg/ipc/EpdgNetIpcMessage;)V

    goto :goto_83

    .line 257
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :sswitch_aa
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getcmdType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bc

    .line 258
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, getEpdgContextInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    .local v0, "epdgCtxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    invoke-static {v0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->SendEpdgCtxtInfo(Ljava/util/ArrayList;)Z

    goto :goto_83

    .line 262
    .end local v0    # "epdgCtxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    :cond_bc
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_cc

    .line 263
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    check-cast p1, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, handleIPSecConnectionInitRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V

    goto :goto_83

    .line 265
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_cc
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_83

    .line 266
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    check-cast p1, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, handleIPSecConnectionToggleRequest(Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;)V

    goto :goto_83

    .line 273
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :sswitch_dc
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getcmdType()I

    move-result v3

    if-ne v3, v6, :cond_f3

    .line 274
    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_83

    .line 275
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgDumpState;->addRilToEpdgMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    check-cast p1, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    .end local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {p0, p1}, handleIILSsacEvent(Lcom/sec/epdg/ipc/EpdgIilIpcMessage;)V

    goto :goto_83

    .line 280
    .restart local p1    # "msg":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_f3
    const-string v3, "[RILRECEIVER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown IPC Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_83

    .line 247
    nop

    :sswitch_data_112
    .sparse-switch
        0x8 -> :sswitch_8d
        0xd -> :sswitch_aa
        0x70 -> :sswitch_dc
    .end sparse-switch
.end method


# virtual methods
.method public receive([BI)V
    .registers 7
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 300
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessageFactory;->fromByteArray([BI)Lcom/sec/epdg/ipc/EpdgIpcMessage;

    move-result-object v1

    .line 301
    .local v1, "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    if-eqz v1, :cond_9

    .line 302
    invoke-direct {p0, v1}, processIpcMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 308
    .end local v1    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    :cond_9
    :goto_9
    return-void

    .line 305
    :catch_a
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "[RILRECEIVER]"

    const-string v3, "Could not parse IPC message"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method
