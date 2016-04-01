.class public Lcom/sec/epdg/IWlanApnContext;
.super Ljava/lang/Object;
.source "IWlanApnContext.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "[IWLANAPNCONTEXT]"

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"


# instance fields
.field private final mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

.field private mIwlanApnName:Ljava/lang/String;

.field private mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;

.field private final mIwlanState:Lcom/sec/epdg/IWlanState;

.field private mReqIpv4addr:Ljava/lang/String;

.field private mReqIpv6addr:Ljava/lang/String;

.field private mRilCid:I

.field private mTCRulesStatus:Z

.field private mVirtualAdapaterName:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, mTCRulesStatus:Z

    .line 63
    new-instance v0, Lcom/sec/epdg/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/IWlanState;-><init>()V

    iput-object v0, p0, mIwlanState:Lcom/sec/epdg/IWlanState;

    .line 64
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, setmRilCid(I)V

    .line 65
    iget-object v0, p0, mIwlanState:Lcom/sec/epdg/IWlanState;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanState;->setState(I)V

    .line 66
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v0

    iput-object v0, p0, mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    .line 67
    return-void
.end method

.method public static getNewIWlanApnContextInstance(I)Lcom/sec/epdg/IWlanApnContext;
    .registers 2
    .param p0, "id"    # I

    .prologue
    .line 59
    new-instance v0, Lcom/sec/epdg/IWlanApnContext;

    invoke-direct {v0, p0}, <init>(I)V

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "[IWLANAPNCONTEXT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IwlanContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mIwlanApnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "edpgApnName"    # Ljava/lang/String;
    .param p2, "epdgApnType"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v5, "[IWLANAPNCONTEXT]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " edpgApnName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " epdgApnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IWlanApnSetting;

    .line 150
    .local v3, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "remoteUri":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "apnType":Ljava/lang/String;
    if-eqz p1, :cond_4e

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    :cond_4e
    if-eqz p2, :cond_2a

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 154
    :cond_56
    invoke-virtual {p0, v3}, setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 161
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v3    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v4    # "remoteUri":Ljava/lang/String;
    :cond_59
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IwlanContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public getIWlanApnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, mIwlanApnName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIWlanState()Lcom/sec/epdg/IWlanState;
    .registers 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mIwlanState:Lcom/sec/epdg/IWlanState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTCRulesStatus()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, mTCRulesStatus:Z

    return v0
.end method

.method public getmReqIpv4addr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, mReqIpv4addr:Ljava/lang/String;

    return-object v0
.end method

.method public getmReqIpv6addr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, mReqIpv6addr:Ljava/lang/String;

    return-object v0
.end method

.method public getmRilCid()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, mRilCid:I

    return v0
.end method

.method public resetReqIpAddress()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 123
    const-string v0, "[IWLANAPNCONTEXT]"

    const-string/jumbo v1, "resetReqIpAddress()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iput-object v2, p0, mReqIpv4addr:Ljava/lang/String;

    .line 125
    iput-object v2, p0, mReqIpv6addr:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public declared-synchronized setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V
    .registers 3
    .param p1, "iwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "ipv6Addr"    # Ljava/lang/String;
    .param p2, "ipv4Addr"    # Ljava/lang/String;

    .prologue
    .line 115
    if-nez p2, :cond_4

    if-eqz p1, :cond_27

    .line 116
    :cond_4
    const/4 v0, 0x0

    const-string v1, "[IWLANAPNCONTEXT]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Ipv4Addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Ipv6Addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_27
    iput-object p2, p0, mReqIpv4addr:Ljava/lang/String;

    .line 119
    iput-object p1, p0, mReqIpv6addr:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public declared-synchronized setState(I)V
    .registers 4
    .param p1, "s"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState() previous state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mIwlanState:Lcom/sec/epdg/IWlanState;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, mIwlanState:Lcom/sec/epdg/IWlanState;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/IWlanState;->setState(I)V

    .line 87
    iget-object v0, p0, mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    if-eqz v0, :cond_32

    .line 88
    iget-object v0, p0, mEpdgRilSharedDataInstance:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {p0}, getmRilCid()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/EpdgRilSharedData;->setIWlanApnState(II)V

    .line 92
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState() Current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mIwlanState:Lcom/sec/epdg/IWlanState;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 94
    monitor-exit p0

    return-void

    .line 83
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTCRulesStatus(Z)V
    .registers 2
    .param p1, "tcRuleStatus"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, mTCRulesStatus:Z

    .line 40
    return-void
.end method

.method public setmReqIpv4addr(Ljava/lang/String;)V
    .registers 2
    .param p1, "mReqIpv4addr"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, mReqIpv4addr:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setmReqIpv6addr(Ljava/lang/String;)V
    .registers 2
    .param p1, "mReqIpv6addr"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, mReqIpv6addr:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setmRilCid(I)V
    .registers 2
    .param p1, "mRilCid"    # I

    .prologue
    .line 55
    iput p1, p0, mRilCid:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mIwlanName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mIwlanApnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIwlanSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mIwlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
