.class public Lcom/sec/epdg/EpdgRilSharedData;
.super Ljava/lang/Object;
.source "EpdgRilSharedData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[RILSHAREDDATA]"

.field public static final WIFI_CONNECTED:I = 0x2

.field public static final WIFI_DISCONNECTED:I = 0x1

.field private static mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

.field private static mIwlanApnState:[Lcom/sec/epdg/IWlanState;


# instance fields
.field private mSmartWifiState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    .line 13
    sget v0, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    new-array v0, v0, [Lcom/sec/epdg/IWlanState;

    sput-object v0, mIwlanApnState:[Lcom/sec/epdg/IWlanState;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "smartWifiState"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, setSmartWifiState(I)V

    .line 17
    return-void
.end method

.method private static declared-synchronized getIWlanInstance()Lcom/sec/epdg/IWlanState;
    .registers 2

    .prologue
    .line 33
    const-class v1, Lcom/sec/epdg/EpdgRilSharedData;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/sec/epdg/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/IWlanState;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgRilSharedData;
    .registers 3

    .prologue
    .line 40
    const-class v1, Lcom/sec/epdg/EpdgRilSharedData;

    monitor-enter v1

    :try_start_3
    sget-object v0, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    if-nez v0, :cond_12

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call makeInstance first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 40
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 43
    :cond_12
    :try_start_12
    sget-object v0, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;
    .registers 5
    .param p0, "smartWifiState"    # I

    .prologue
    .line 24
    const-class v2, Lcom/sec/epdg/EpdgRilSharedData;

    monitor-enter v2

    :try_start_3
    const-string v1, "[RILSHAREDDATA]"

    const-string v3, "Inside epdgRilSharedData makeInstance()"

    invoke-static {v1, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/sec/epdg/EpdgRilSharedData;

    invoke-direct {v1, p0}, <init>(I)V

    sput-object v1, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    sget v1, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v1, :cond_21

    .line 27
    sget-object v1, mIwlanApnState:[Lcom/sec/epdg/IWlanState;

    invoke-static {}, getIWlanInstance()Lcom/sec/epdg/IWlanState;

    move-result-object v3

    aput-object v3, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 29
    :cond_21
    sget-object v1, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v2

    return-object v1

    .line 24
    .end local v0    # "i":I
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public declared-synchronized getIWlanApnState(I)I
    .registers 5
    .param p1, "cid"    # I

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    const-string v0, "[RILSHAREDDATA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIWlanState(): returning state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mIwlanApnState:[Lcom/sec/epdg/IWlanState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "for cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, mIwlanApnState:[Lcom/sec/epdg/IWlanState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanState;->getState()I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_37

    move-result v0

    monitor-exit p0

    return v0

    .line 60
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSmartWifiState()I
    .registers 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget v0, p0, mSmartWifiState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIWlanApnState(II)V
    .registers 6
    .param p1, "cid"    # I
    .param p2, "state"    # I

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    const-string v0, "[RILSHAREDDATA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIWlanState(): setting state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "for cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "[RILSHAREDDATA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIwlanApnState for cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mIwlanApnState:[Lcom/sec/epdg/IWlanState;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, mIwlanApnState:[Lcom/sec/epdg/IWlanState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/sec/epdg/IWlanState;->setState(I)V

    .line 71
    const-string v0, "[RILSHAREDDATA]"

    const-string v1, "Exiting setIWlanApnState"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 72
    monitor-exit p0

    return-void

    .line 67
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartWifiState(I)V
    .registers 3
    .param p1, "smartWifiState"    # I

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iput p1, p0, mSmartWifiState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    if-eqz v2, :cond_52

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart wifi state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mSmartWifiState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    sget-object v2, mIwlanApnState:[Lcom/sec/epdg/IWlanState;

    array-length v2, v2

    if-ge v0, v2, :cond_52

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIwlanApnState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, mIwlanApnState:[Lcom/sec/epdg/IWlanState;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 83
    .end local v0    # "i":I
    :cond_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_58

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 75
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catchall_58
    move-exception v2

    monitor-exit p0

    throw v2
.end method
