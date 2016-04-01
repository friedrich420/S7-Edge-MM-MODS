.class public final Lcom/sec/epdg/EpdgServerSelection;
.super Ljava/lang/Object;
.source "EpdgServerSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgServerSelection$1;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/sec/epdg/EpdgServerSelection; = null

.field private static final MAX_DNS_RETRY_COUNT:I = 0x3

.field private static final MIN_DNS_RETRY_COUNT:I = 0x1

.field private static final NO_EPDG_SERVER_IP:Ljava/lang/String; = "NoEpdgServerIp"

.field private static final TAG:Ljava/lang/String; = "[EpdgServerSelection]"


# instance fields
.field private mCurrentEpdgIpCounter:I

.field private mDnsTimeout:Z

.field private mEpdgServerIpAddress:Ljava/net/InetAddress;

.field private mEpdgServerIpArray:[Ljava/net/InetAddress;

.field private mIpv6AddressUpdated:Z

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mUseHome:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, INSTANCE:Lcom/sec/epdg/EpdgServerSelection;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 28
    iput-object v1, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 29
    iput v3, p0, mCurrentEpdgIpCounter:I

    .line 30
    iput-boolean v2, p0, mIpv6AddressUpdated:Z

    .line 33
    iput-boolean v4, p0, mUseHome:Z

    .line 38
    iput-boolean v2, p0, mDnsTimeout:Z

    .line 43
    iput v3, p0, mCurrentEpdgIpCounter:I

    .line 44
    iput-boolean v2, p0, mIpv6AddressUpdated:Z

    .line 45
    iput-object v1, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 46
    iput-object v1, p0, mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 47
    iput-boolean v4, p0, mUseHome:Z

    .line 48
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, "ctx":Landroid/content/Context;
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, mTelManager:Landroid/telephony/TelephonyManager;

    .line 51
    return-void
.end method

.method private declared-synchronized getCachedEpdgServerIpAddress()Ljava/net/InetAddress;
    .registers 5

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCachedEpdgServerIpAddress() epdg server ip address is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mEpdgServerIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, mEpdgServerIpAddress:Ljava/net/InetAddress;
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 140
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgServerSelection;
    .registers 3

    .prologue
    .line 57
    const-class v1, Lcom/sec/epdg/EpdgServerSelection;

    monitor-enter v1

    :try_start_3
    sget-object v0, INSTANCE:Lcom/sec/epdg/EpdgServerSelection;

    if-nez v0, :cond_15

    .line 58
    const-string v0, "[EpdgServerSelection]"

    const-string v2, "Creating EpdgServerSelection instance"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/sec/epdg/EpdgServerSelection;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lcom/sec/epdg/EpdgServerSelection;

    .line 61
    :cond_15
    sget-object v0, INSTANCE:Lcom/sec/epdg/EpdgServerSelection;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIpv6AddressUpdated()Z
    .registers 4

    .prologue
    .line 65
    const-string v0, "[EpdgServerSelection]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpv6AddressUpdated(): returning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIpv6AddressUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, mIpv6AddressUpdated:Z

    return v0
.end method

.method private isIpPoolAndCounterValid()Z
    .registers 5

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "result":Z
    iget-object v1, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v1, :cond_11

    iget v1, p0, mCurrentEpdgIpCounter:I

    if-ltz v1, :cond_11

    iget v1, p0, mCurrentEpdgIpCounter:I

    iget-object v2, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 149
    const/4 v0, 0x1

    .line 151
    :cond_11
    const-string v1, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isIpPoolAndCounterValid: mEpdgServerIpArray is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentEpdgIpCounter is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCurrentEpdgIpCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return v0
.end method

.method private declared-synchronized peekAndAddRouteForNextEpdgServerIp()Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    monitor-enter p0

    :try_start_3
    iget-object v4, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v4, :cond_107

    .line 315
    const-string v4, "[EpdgServerSelection]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentEpdgIpCounter is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mCurrentEpdgIpCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mEpdgServerIpArray.length is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget v4, p0, mCurrentEpdgIpCounter:I

    iget-object v5, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_fd

    .line 318
    const-string v4, "[EpdgServerSelection]"

    const-string v5, "Next epdg ip address is available, remove route for existing epdg ip and add route for next epdg ip"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget v4, p0, mCurrentEpdgIpCounter:I

    add-int/lit8 v1, v4, 0x1

    .line 321
    .local v1, "tempIpCounter":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 323
    .local v0, "mConnMgr":Landroid/net/ConnectivityManager;
    iget v4, p0, mCurrentEpdgIpCounter:I

    if-ltz v4, :cond_85

    .line 325
    const/4 v4, 0x1

    iget-object v5, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v6, p0, mCurrentEpdgIpCounter:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/net/ConnectivityManager;->removeRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 327
    const/4 v4, 0x0

    const-string v5, "[EpdgServerSelection]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Route deletion of current epdg ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v8, p0, mCurrentEpdgIpCounter:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is successful"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_85
    :goto_85
    const/4 v4, 0x1

    iget-object v5, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    aget-object v5, v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 336
    const/4 v3, 0x0

    const-string v4, "[EpdgServerSelection]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route addition for new epdg ip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is successful"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 340
    iput v1, p0, mCurrentEpdgIpCounter:I
    :try_end_b5
    .catchall {:try_start_3 .. :try_end_b5} :catchall_d7

    .line 355
    .end local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "tempIpCounter":I
    :goto_b5
    monitor-exit p0

    return v2

    .line 330
    .restart local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .restart local v1    # "tempIpCounter":I
    :cond_b7
    const/4 v4, 0x0

    :try_start_b8
    const-string v5, "[EpdgServerSelection]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Route deletion fails for current epdg server ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v8, p0, mCurrentEpdgIpCounter:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_b8 .. :try_end_d6} :catchall_d7

    goto :goto_85

    .line 314
    .end local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "tempIpCounter":I
    :catchall_d7
    move-exception v2

    monitor-exit p0

    throw v2

    .line 343
    .restart local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .restart local v1    # "tempIpCounter":I
    :cond_da
    const/4 v2, 0x0

    :try_start_db
    const-string v4, "[EpdgServerSelection]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route addition fails for new epdg server ip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v7, p0, mCurrentEpdgIpCounter:I

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 345
    goto :goto_b5

    .line 348
    .end local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "tempIpCounter":I
    :cond_fd
    const-string v2, "[EpdgServerSelection]"

    const-string/jumbo v4, "peekAndAddRouteForNextEpdgServerIp: No new epdg server ip is available"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 350
    goto :goto_b5

    .line 353
    :cond_107
    const-string v2, "[EpdgServerSelection]"

    const-string/jumbo v4, "peekAndAddRouteForNextEpdgServerIp: mEpdgServerIpArray itself is not initialized, returning false"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catchall {:try_start_db .. :try_end_10f} :catchall_d7

    move v2, v3

    .line 355
    goto :goto_b5
.end method

.method private performDnsAndAddRoute(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 14
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 419
    const/4 v6, 0x0

    .line 420
    .local v6, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v8

    const-string v10, "connectivity"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mConnMgr":Landroid/net/ConnectivityManager;
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 423
    .restart local v6    # "mConnMgr":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    .line 424
    .local v4, "inetAddressArray":[Ljava/net/InetAddress;
    :try_start_f
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 425
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ip addresses returned after DNS is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    array-length v8, v4

    if-nez v8, :cond_39

    .line 428
    const-string v8, "[EpdgServerSelection]"

    const-string/jumbo v10, "performDnsAndAddRoute: No ip address is returned."

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 528
    .end local v4    # "inetAddressArray":[Ljava/net/InetAddress;
    :goto_38
    return-object v4

    .line 431
    .restart local v4    # "inetAddressArray":[Ljava/net/InetAddress;
    :cond_39
    new-instance v5, Ljava/util/ArrayList;

    array-length v8, v4

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    .local v5, "inetAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    if-nez v5, :cond_43

    move-object v4, v9

    .line 434
    goto :goto_38

    .line 436
    :cond_43
    const/4 v1, 0x0

    .line 441
    .local v1, "address":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v8

    if-nez v8, :cond_d9

    .line 442
    const/4 v3, 0x0

    .local v3, "iloop":I
    :goto_4f
    array-length v8, v4

    if-ge v3, v8, :cond_94

    .line 443
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "IPv6 address support is not enabled"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 446
    const-string v10, "[EpdgServerSelection]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Added EPDG FQDN resolved to IPv4 address to list: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v8

    if-eqz v8, :cond_a3

    const-string v8, "Suppressed"

    :goto_7a
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    aget-object v8, v4, v3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v8, :cond_b2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportMultiEpdgServerIP()Z

    move-result v8

    if-nez v8, :cond_b2

    .line 503
    :cond_94
    :goto_94
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1af

    .line 504
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "All ip addresses format of epdg server is invalid"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 505
    goto :goto_38

    :cond_a3
    move-object v8, v1

    .line 446
    goto :goto_7a

    .line 453
    :cond_a5
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 454
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Ignoring the EPDG FQDN resolved to IPv6 address, as user selected to use IPV4 address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_b2
    :goto_b2
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 456
    :cond_b5
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Invalid Address format of epdg server, try another ip address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_bc} :catch_bd

    goto :goto_b2

    .line 526
    .end local v1    # "address":Ljava/lang/String;
    .end local v3    # "iloop":I
    .end local v5    # "inetAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_bd
    move-exception v2

    .line 527
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DNS resolution failed for epdg server"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 528
    goto/16 :goto_38

    .line 461
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v5    # "inetAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_d9
    const/4 v7, 0x0

    .line 462
    .local v7, "prefAddrIndex":I
    const/4 v3, 0x0

    .restart local v3    # "iloop":I
    :goto_db
    :try_start_db
    array-length v8, v4

    if-ge v3, v8, :cond_14f

    .line 463
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InetAddress is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Preferred()Z

    move-result v8

    if-eqz v8, :cond_160

    .line 466
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "IPv6 address support is enabled and ipv6 is preferred"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_121

    .line 468
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    aget-object v10, v4, v3

    invoke-virtual {v5, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 462
    :cond_11e
    :goto_11e
    add-int/lit8 v3, v3, 0x1

    goto :goto_db

    .line 470
    :cond_121
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_158

    .line 471
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "performDnsAndAddRoute: prefAddrIndex is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    aget-object v8, v4, v3

    invoke-virtual {v5, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 473
    add-int/lit8 v7, v7, 0x1

    .line 474
    const/4 v8, 0x1

    invoke-direct {p0, v8}, setIpv6AddressUpdated(Z)V

    .line 475
    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v8, :cond_11e

    .line 501
    :cond_14f
    :goto_14f
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Added address to list: "

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_94

    .line 479
    :cond_158
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Invalid Address format of epdg server, try another ip address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11e

    .line 483
    :cond_160
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "IPv6 address support is enabled but ipv6 is not preferred"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17b

    .line 485
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    aget-object v10, v4, v3

    invoke-virtual {v5, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 487
    const/4 v8, 0x1

    invoke-direct {p0, v8}, setIpv6AddressUpdated(Z)V

    goto :goto_11e

    .line 488
    :cond_17b
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a6

    .line 489
    aget-object v8, v4, v3

    invoke-virtual {v5, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 490
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "performDnsAndAddRoute: prefAddrIndex is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    add-int/lit8 v7, v7, 0x1

    .line 492
    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v8, :cond_11e

    goto :goto_14f

    .line 496
    :cond_1a6
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Invalid Address format of epdg server, try another ip address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11e

    .line 510
    .end local v7    # "prefAddrIndex":I
    :cond_1af
    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v8, :cond_1ed

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportMultiEpdgServerIP()Z

    move-result v8

    if-nez v8, :cond_1ed

    .line 512
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Multiple ip address support is disabled, copying 1st ip address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/net/InetAddress;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Ljava/net/InetAddress;

    move-object v4, v0

    .line 520
    :goto_1cb
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number of ip addresses returned in DNS query response after parsing is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v8, 0x1

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v6, v8, v10}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    goto/16 :goto_38

    .line 517
    :cond_1ed
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/net/InetAddress;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Ljava/net/InetAddress;

    move-object v4, v0
    :try_end_1fb
    .catch Ljava/net/UnknownHostException; {:try_start_db .. :try_end_1fb} :catch_bd

    goto :goto_1cb
.end method

.method private performDnsAndSetEpdgServerIpPoolInternal(I)Z
    .registers 15
    .param p1, "dnsRetryCount"    # I

    .prologue
    const/4 v12, 0x1

    .line 278
    const/4 v6, 0x0

    .line 279
    .local v6, "result":Z
    const-wide/16 v0, 0x0

    .line 280
    .local v0, "dnsBegin":J
    const-wide/16 v2, 0x0

    .line 281
    .local v2, "dnsEnd":J
    iget-boolean v8, p0, mUseHome:Z

    invoke-virtual {p0, v8}, generateEpdgFqdn(Z)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "epdgServerIP":Ljava/lang/String;
    if-nez v4, :cond_18

    .line 283
    const-string v8, "[EpdgServerSelection]"

    const-string/jumbo v9, "performDnsAndSetEpdgServerIpPool: ERROR!!! epdg FQDN is null, returning"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 310
    .end local v6    # "result":Z
    .local v7, "result":I
    :goto_17
    return v7

    .line 286
    .end local v7    # "result":I
    .restart local v6    # "result":Z
    :cond_18
    const-string v9, "[EpdgServerSelection]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting epdg server ip address from FQDN: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v8

    if-eqz v8, :cond_6c

    const-string v8, "Suppressed"

    :goto_2d
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " dnsRetryCount "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_47
    if-gt v5, p1, :cond_53

    .line 291
    invoke-direct {p0, v4}, setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z

    move-result v6

    .line 292
    if-ne v6, v12, :cond_6e

    .line 294
    const/4 v8, 0x0

    iput v8, p0, mCurrentEpdgIpCounter:I

    .line 295
    const/4 v6, 0x1

    .line 303
    :cond_53
    if-nez v6, :cond_6a

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    sub-long v8, v2, v0

    const-wide/16 v10, 0x1388

    cmp-long v8, v8, v10

    if-lez v8, :cond_6a

    .line 306
    iput-boolean v12, p0, mDnsTimeout:Z

    .line 307
    const-string v8, "[EpdgServerSelection]"

    const-string v9, "DNS server does not respond"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    move v7, v6

    .line 310
    .restart local v7    # "result":I
    goto :goto_17

    .end local v5    # "i":I
    .end local v7    # "result":I
    :cond_6c
    move-object v8, v4

    .line 286
    goto :goto_2d

    .line 298
    .restart local v5    # "i":I
    :cond_6e
    if-ge v5, p1, :cond_8e

    .line 299
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DNS is failed doing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " retry"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_47
.end method

.method private declared-synchronized setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z
    .registers 7
    .param p1, "epdgFqdn"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 210
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "[EpdgServerSelection]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEpdgServerIpPoolFromFqdn() ePDG FQDN is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 211
    if-nez p1, :cond_31

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 214
    const/4 v1, -0x1

    iput v1, p0, mCurrentEpdgIpCounter:I

    .line 215
    const-string v1, "[EpdgServerSelection]"

    const-string/jumbo v2, "setEpdgServerIpPoolFromFqdn() FQDN is null, resetting cached server ip to null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3d

    .line 219
    :cond_2f
    :goto_2f
    monitor-exit p0

    return v0

    .line 218
    :cond_31
    :try_start_31
    invoke-direct {p0, p1}, performDnsAndAddRoute(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 219
    iget-object v1, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3d

    if-eqz v1, :cond_2f

    const/4 v0, 0x1

    goto :goto_2f

    .line 210
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setIpv6AddressUpdated(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 70
    const-string v0, "[EpdgServerSelection]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIpv6AddressUpdated() value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-boolean p1, p0, mIpv6AddressUpdated:Z

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized cacheEpdgServerIpAddress()V
    .registers 5

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_49

    .line 165
    invoke-direct {p0}, isIpPoolAndCounterValid()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 166
    const-string v1, "[EpdgServerSelection]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheEpdgServerIpAddress: Current ip address is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "Suppressed"

    :goto_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v1, p0, mCurrentEpdgIpCounter:I

    aget-object v0, v0, v1

    iput-object v0, p0, mEpdgServerIpAddress:Ljava/net/InetAddress;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_46

    .line 175
    :goto_35
    monitor-exit p0

    return-void

    .line 166
    :cond_37
    :try_start_37
    iget-object v0, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v3, p0, mCurrentEpdgIpCounter:I

    aget-object v0, v0, v3

    goto :goto_22

    .line 170
    :cond_3e
    const-string v0, "[EpdgServerSelection]"

    const-string v1, "Either Ip pool is null or ip counter is out of range"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_46

    goto :goto_35

    .line 164
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :cond_49
    :try_start_49
    const-string v0, "[EpdgServerSelection]"

    const-string v1, "Ip address is already cached"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_46

    goto :goto_35
.end method

.method public declared-synchronized checkAndAddRouteForNextEpdgServerIp()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 540
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportMultiEpdgServerIP()Z

    move-result v2

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-eqz v2, :cond_71

    .line 542
    :cond_d
    invoke-virtual {p0}, isEpdgServerDnsValid()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_34

    .line 543
    invoke-direct {p0}, peekAndAddRouteForNextEpdgServerIp()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 544
    const-string v0, "[EpdgServerSelection]"

    const-string v2, "New epdg server ip address is available"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_31

    move v0, v1

    .line 571
    :goto_27
    monitor-exit p0

    return v0

    .line 547
    :cond_29
    :try_start_29
    const-string v1, "[EpdgServerSelection]"

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_27

    .line 540
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    .line 550
    :cond_34
    :try_start_34
    invoke-virtual {p0}, isEpdgServerDnsValid()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_69

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v2

    if-nez v2, :cond_69

    .line 553
    const-string v2, "[EpdgServerSelection]"

    const-string v3, "First connection failed on IWLAN over last cached ip address, now checking from the first ip address from pool"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {p0, v2}, resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 557
    invoke-direct {p0}, peekAndAddRouteForNextEpdgServerIp()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 558
    const-string v0, "[EpdgServerSelection]"

    const-string v2, "New epdg server ip address is available"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 559
    goto :goto_27

    .line 561
    :cond_61
    const-string v1, "[EpdgServerSelection]"

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 565
    :cond_69
    const-string v1, "[EpdgServerSelection]"

    const-string v2, "Either ip pool is not initialized or No new epdg server ip address is available, returning false"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 570
    :cond_71
    const-string v1, "[EpdgServerSelection]"

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_34 .. :try_end_78} :catchall_31

    goto :goto_27
.end method

.method public generateEpdgFqdn(Z)Ljava/lang/String;
    .registers 15
    .param p1, "forceHome"    # Z

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 75
    const-string v6, "[EpdgServerSelection]"

    const-string v7, " generateEpdgFqdn(): "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgFqdn()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "defaultFqdn":Ljava/lang/String;
    const-string v6, "NoEpdgServerIp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 79
    const-string v6, "[EpdgServerSelection]"

    const-string v7, "VoWIFI is not provisioning return null"

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .line 136
    .end local v0    # "defaultFqdn":Ljava/lang/String;
    :goto_1f
    return-object v0

    .line 82
    .restart local v0    # "defaultFqdn":Ljava/lang/String;
    :cond_20
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsDynamicFqdn()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15d

    .line 83
    const/4 v2, 0x0

    .local v2, "mcc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 84
    .local v3, "mnc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    .local v4, "operatorNumeric":Ljava/lang/String;
    if-nez p1, :cond_85

    iget-object v6, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_85

    .line 86
    iget-object v6, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 87
    if-eqz v4, :cond_42

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 88
    :cond_42
    const-string v6, "[EpdgServerSelection]"

    const-string v7, "can\'t read roaming operator plmnID"

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 90
    iget-object v6, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    :cond_5d
    :goto_5d
    if-eqz v4, :cond_65

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 106
    :cond_65
    const-string v6, "[EpdgServerSelection]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t read sim MCC and MNC. use default : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 92
    :cond_7e
    iget-object v6, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    goto :goto_5d

    .line 96
    :cond_85
    if-eqz v4, :cond_8d

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 97
    :cond_8d
    const-string v6, "[EpdgServerSelection]"

    const-string v7, "can\'t read roaming operator plmnID"

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 99
    iget-object v6, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5d

    .line 101
    :cond_a9
    iget-object v6, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    goto :goto_5d

    .line 109
    :cond_b0
    const-string v6, "[EpdgServerSelection]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareFQDN: operatorNumeric:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v11, :cond_140

    .line 111
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    :goto_ea
    const/4 v5, 0x0

    .line 121
    .local v5, "prefix":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_159

    .line 122
    const-string/jumbo v5, "ss.epdg.epc.mnc"

    .line 126
    :goto_f8
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mcc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pub.3gppnetwork.org"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "finalFQDN":Ljava/lang/StringBuilder;
    const-string v6, "[EpdgServerSelection]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New ePDG FQDN is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 113
    .end local v1    # "finalFQDN":Ljava/lang/StringBuilder;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_140
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v12, :cond_14f

    .line 114
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v4, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_ea

    .line 117
    :cond_14f
    const-string v6, "[EpdgServerSelection]"

    const-string/jumbo v7, "operator numeric has wrong length use default"

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 124
    .restart local v5    # "prefix":Ljava/lang/String;
    :cond_159
    const-string/jumbo v5, "epdg.epc.mnc"

    goto :goto_f8

    .line 134
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "operatorNumeric":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_15d
    const-string v6, "[EpdgServerSelection]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t generate dynamic FQDN, returning static home FQDN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f
.end method

.method public declared-synchronized getEpdgServerIp()Ljava/net/InetAddress;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 367
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 368
    const-string v3, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNextEpdgServerIp(): getIpv6AddressUpdated(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getIpv6AddressUpdated()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " any pdn connected over wifi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cached ip is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string v2, "Suppressed"

    :goto_3e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-direct {p0}, getIpv6AddressUpdated()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v2

    if-nez v2, :cond_79

    .line 374
    const/4 v2, 0x0

    invoke-direct {p0, v2}, setIpv6AddressUpdated(Z)V

    .line 375
    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_fa

    .line 377
    const-string v2, "[EpdgServerSelection]"

    const-string v3, "Cached ip is ipv4 but now the pool is updated with ipv6 address, so resetting the cached ipv4 address"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {p0, v2}, resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 385
    .end local v0    # "address":Ljava/lang/String;
    :cond_79
    :goto_79
    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_119

    .line 386
    invoke-virtual {p0}, isEpdgServerDnsValid()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 387
    iget v2, p0, mCurrentEpdgIpCounter:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b5

    .line 388
    const-string v2, "[EpdgServerSelection]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentEpdgIpCounter is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mCurrentEpdgIpCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " It gets resetted with cached IP but as DNS is still valid, setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "it to first IP address of pool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v2, 0x0

    iput v2, p0, mCurrentEpdgIpCounter:I

    .line 393
    :cond_b5
    iget v2, p0, mCurrentEpdgIpCounter:I

    if-ltz v2, :cond_108

    iget v2, p0, mCurrentEpdgIpCounter:I

    iget-object v3, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v3, v3

    if-ge v2, v3, :cond_108

    .line 395
    iget-object v2, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v3, p0, mCurrentEpdgIpCounter:I

    aget-object v1, v2, v3

    .line 396
    .local v1, "newEpdgIp":Ljava/net/InetAddress;
    const-string v3, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning ip address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_106

    const-string v2, "Suppressed"

    :goto_db
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mCurrentEpdgIpCounter is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, mCurrentEpdgIpCounter:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_2 .. :try_end_f2} :catchall_103

    .line 414
    .end local v1    # "newEpdgIp":Ljava/net/InetAddress;
    :goto_f2
    monitor-exit p0

    return-object v1

    .line 368
    :cond_f4
    :try_start_f4
    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    goto/16 :goto_3e

    .line 381
    .restart local v0    # "address":Ljava/lang/String;
    :cond_fa
    const-string v2, "[EpdgServerSelection]"

    const-string v3, "Cached ip is ipv6, no need to reset the cache ip"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_f4 .. :try_end_101} :catchall_103

    goto/16 :goto_79

    .line 367
    .end local v0    # "address":Ljava/lang/String;
    :catchall_103
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "newEpdgIp":Ljava/net/InetAddress;
    :cond_106
    move-object v2, v1

    .line 396
    goto :goto_db

    .line 401
    .end local v1    # "newEpdgIp":Ljava/net/InetAddress;
    :cond_108
    :try_start_108
    const-string v2, "[EpdgServerSelection]"

    const-string v3, "No valid next epdg server ip address is present so, returning null ip address"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    .line 406
    :cond_110
    const-string v2, "[EpdgServerSelection]"

    const-string/jumbo v3, "getEpdgServerIp: Epdg server ip pool is not  yet initialized, returning null ip address"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    .line 411
    :cond_119
    const-string v3, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached epdg server ip address is available, returning cached ip address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_13e

    const-string v2, "Suppressed"

    :goto_12e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_f2

    .line 411
    :cond_13e
    invoke-direct {p0}, getCachedEpdgServerIpAddress()Ljava/net/InetAddress;
    :try_end_141
    .catchall {:try_start_108 .. :try_end_141} :catchall_103

    move-result-object v2

    goto :goto_12e
.end method

.method public declared-synchronized isEpdgServerDnsValid()Z
    .registers 5

    .prologue
    .line 582
    monitor-enter p0

    const/4 v0, 0x0

    .line 583
    .local v0, "result":Z
    :try_start_2
    iget-object v1, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v1, :cond_7

    .line 584
    const/4 v0, 0x1

    .line 586
    :cond_7
    const-string v1, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEpdgServerDnsValid(): returning result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_22

    .line 587
    monitor-exit p0

    return v0

    .line 582
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z
    .registers 10
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$DnsRetryReason;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "dnsRetryCount":I
    sget-object v3, Lcom/sec/epdg/EpdgServerSelection$1;->$SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgService$DnsRetryReason;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_de

    .line 248
    const-string v3, "[EpdgServerSelection]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid DnsRetryReason received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid DnsRetryReason received"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :pswitch_2e
    iget-object v3, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3e

    iget-object v3, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_c3

    :cond_3e
    move v3, v5

    :goto_3f
    iput-boolean v3, p0, mUseHome:Z

    .line 235
    const-string v6, "[EpdgServerSelection]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "roaming ? "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, mUseHome:Z

    if-eqz v3, :cond_c6

    const-string v3, "No"

    :goto_55
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x3

    .line 251
    :goto_61
    sget-object v3, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    if-eq p1, v3, :cond_6a

    .line 252
    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {p0, v3}, resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 254
    :cond_6a
    invoke-direct {p0, v1}, performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v2

    .line 255
    .local v2, "result":Z
    if-nez v2, :cond_7a

    iget-boolean v3, p0, mUseHome:Z

    if-nez v3, :cond_7a

    .line 256
    iput-boolean v5, p0, mUseHome:Z

    .line 257
    invoke-direct {p0, v1}, performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v2

    .line 259
    :cond_7a
    if-nez v2, :cond_9f

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9f

    .line 260
    const-string/jumbo v0, "ims"

    .line 261
    .local v0, "apnType":Ljava/lang/String;
    iget-boolean v3, p0, mDnsTimeout:Z

    if-eqz v3, :cond_cd

    .line 262
    new-instance v3, Lcom/sec/epdg/IWlanError;

    sget-object v5, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v6, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    .line 265
    iput-boolean v4, p0, mDnsTimeout:Z

    .line 272
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_9f
    :goto_9f
    const-string v3, "[EpdgServerSelection]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performDnsAndSetEpdgServerIpPool: result is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DnsRetryReason is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 274
    return v2

    .end local v2    # "result":Z
    :cond_c3
    move v3, v4

    .line 233
    goto/16 :goto_3f

    .line 235
    :cond_c6
    const-string v3, "Yes"

    goto :goto_55

    .line 241
    :pswitch_c9
    const/4 v1, 0x3

    .line 242
    goto :goto_61

    .line 245
    :pswitch_cb
    const/4 v1, 0x1

    .line 246
    goto :goto_61

    .line 267
    .restart local v0    # "apnType":Ljava/lang/String;
    .restart local v2    # "result":Z
    :cond_cd
    new-instance v3, Lcom/sec/epdg/IWlanError;

    sget-object v5, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v6, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    goto :goto_9f

    .line 230
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_cb
        :pswitch_cb
    .end packed-switch
.end method

.method public declared-synchronized resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V
    .registers 5
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    const-string v0, "[EpdgServerSelection]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEpdgServerIpAddressAndPool: reason is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/sec/epdg/EpdgServerSelection$1;->$SwitchMap$com$sec$epdg$EpdgService$EpdgServerIpResetReason:[I

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    .line 204
    const-string v0, "[EpdgServerSelection]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid epdg server ip reset reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid epdg server ip reset reason:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_45

    .line 186
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    :pswitch_48
    const/4 v0, 0x0

    :try_start_49
    iput-object v0, p0, mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, mCurrentEpdgIpCounter:I
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_45

    .line 207
    :goto_51
    monitor-exit p0

    return-void

    .line 195
    :pswitch_53
    :try_start_53
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v0

    if-nez v0, :cond_60

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, mCurrentEpdgIpCounter:I

    goto :goto_51

    .line 199
    :cond_60
    const-string v0, "[EpdgServerSelection]"

    const-string v1, "Some PDN is still connected over wifi so, not resetting the address and counter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_53 .. :try_end_67} :catchall_45

    goto :goto_51

    .line 187
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_48
        :pswitch_48
        :pswitch_53
    .end packed-switch
.end method
